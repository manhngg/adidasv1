class ProductsController < ApplicationController
	# before_action :authenticate_user!, :except => [:index, :show]
	# before_action :authenticate_admin, :except => [:index, :show] 
	#only: [:new, :edit, :create, :update, :destroy]
	
	def index
		@products = Product.filter(params.slice(:gender,:age, :franchise, :producttype, :brand, :category, :sport)).order(:id).page(params[:page]).per(32)
		params.each do |key, value|  
			if value.present? and key != 'controller' and key != 'action' and key  != 'locale'
				add_breadcrumb value.titleize, products_path(gender: value) if key == 'gender'
				add_breadcrumb value.titleize, products_path(age: value) if key == 'age'
				add_breadcrumb value.titleize, '/products?sport='<<value if key == 'sport'
				add_breadcrumb value.titleize, '/products?brand='<<value if key == 'brand'
				add_breadcrumb value.titleize, '/products?category='<<value if key == 'category'
				add_breadcrumb value.titleize, '/products?franchise='<<value if key == 'franchise'
			end 
		end 
	end

	def show
		@product = Product.find(params[:id])

		gender = @product.gender.name if @product.gender_id.present? 
		add_breadcrumb gender.titleize, '/products?subcategory='<<gender if @product.gender_id.present?
		category = @product.category.name if @product.category_id.present?
		add_breadcrumb category.titleize, '/products?category='<<category if @product.category_id.present?
		productname = @product.name
		add_breadcrumb productname.titleize, @product
	end

	def new
		if current_user.try(:admin?) 
			@product = Product.new
		end
	end

	def edit
		if current_user.try(:admin?) 
			@product = Product.find(params[:id])
		end
	end

	def create
		@product = Product.new(product_params)

		if @product.save 
			redirect_to new_product_variant_path(@product)
		else
			render 'new'
		end
	end
	
	def update
		@product = Product.find(params[:id])
		
		if @product.update(product_params)
			flash[:success] = "Thanh cong"
			# redirect_to collections_all_path
		else
			render 'edit'
		end
	end
	
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		
		redirect_to products_path
	end
	
	private
	def product_params
		params.require(:product).permit(:name, :gender_id, :age_id, :franchise_id, :producttype_id, :brand_id, :category_id, :sport_id)
	end
	def filtering_params(params)
		params.slice(:status, :location, :starts_with)
	end

end

#bin/rails generate model Product productname:text productimagepath:text 
#gender_id:text age_id:text price:integer originalpride:integer color_id:text 
#colordetail:text franchise_id:text producttype_id:text brand_id:text 
#category_id:text sport_id:text productdetailspath:text 
# bin/rails generate model Gender gender_id:text gender_name:text --no-timestamps
# bin/rails generate model Age age_id:text age_name:text --no-timestamps
# bin/rails generate model Franchise franchise_id:text franchise_name:text --no-timestamps
# bin/rails generate model Producttype producttype_id:text producttype_name:text --no-timestamps
#bin/rails generate model Brand brand_id:text brand_name:text --no-timestamps
# bin/rails generate model Category category_id:text category_name:text --no-timestamps
# bin/rails generate model Sport sport_id:text sport_name:text --no-timestamps
