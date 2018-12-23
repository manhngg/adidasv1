<div id="main">

<?php include('server.php') ?>


<div class="rbk-breadcrumbs-wrapper">
  <div class="breadcrumb">
    <a href="/" title="Home">Trang chủ</a>
      <span class="divider">/</span><a href="/vn/myaccount/login/login_success.php" title="Tài Khoản Của Tôi">Tài Khoản Của Tôi</a>
      <span class="divider">/</span><a href="<?php echo$_SERVER['HTTP_REFERER']?>" title="Hồ Sơ Của Tôi">Hồ Sơ Của Tôi</a>
  </div><!-- END: breadcrumb -->
</div>
  



<div class="rbk-content-wrapper">


<div id="leftcolumn">
  <div class="styled_nav universe_link ">
    <div class="contentasset" data-contentasset-id="account-navigation" data-contentasset="account-navigation">
      <ul class="adi-myaccout-redesign">
        <li class="navgroup"><a class="nav-title personal_information_link" title="Tài Khoản Của Tôi" href="/vn/myaccount/login/login_success.php">Tài Khoản Của Tôi</a></li>
        <li class="navgroup"><a class="nav-title universe_link account_overview_link" title="Personal Information" href="/vn/myaccount/login/profile.php">Thông Tin Cá Nhân</a></li>
        <li class="navgroup"><a class="nav-title your_preferences_link" title="Your Preferences" href="#">Tùy Chọn Của Bạn</a></li>
        <li class="navgroup"><a class="nav-title address_book_link" title="Address Book" href="/vn/myaccount/address/address.php">Địa Chỉ Đặt Trước</a></li>
        <li class="navgroup"><a class="nav-title order_history_link" title="Order History" href="#">Lịch Sử Đặt Hàng</a></li>
        <li class="navgroup"><a class="nav-title wishlist_link" title="Wish List" href="#">Danh Sách Yêu Thích</a></li>
      </ul>
    </div>
    <div class="contentasset" data-contentasset-id="account-navigation-mi" data-contentasset="account-navigation-mi">
      <ul>
        <li class="navgroup nav-miadidas"><a class="nav-title mi_adidas_link" title="mi adidas" href="#">mi adidas</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="accountcenter">
  <form method="post" action="profile.php"> 

  <div class="formfields_container">
    <h2>Thông tin của bạn</h2>
    <p class="account_info">Vui lòng chỉnh sửa bất kỳ chi tiết nào của bạn bên dưới để tài khoản của bạn được cập nhật.</p>
    <div class="formfield_onerow">
      <div class="formfield firstname">
        <label for="profile_customer_firstname" class="">* Tên</label>
        <div class="value">
                    <input required="required" class="textinput required" id="profile_customer_firstname" type="text" name="firstName" value="<?php echo $_SESSION["name"];?>" maxlength="50" placeholder="* Tên" data-placeholder="* First Name">    
        </div>
      </div>
      <div class="formfield lastname">
        <label for="profile_customer_lastname" class="">* Họ</label>
        
        <div class="value">
                    <input required="required" class="textinput required" id="profile_customer_lastname" type="text" name="lastName" value="<?php echo $_SESSION["lastname"];?>" maxlength="50" placeholder="* Họ" data-placeholder="* Last Name">
        </div>
      </div>
    </div>
  </div>
  
    <div class="formfields_container">
        <h2>Thông tin đăng nhập</h2>
          <div id="calculate">
        <div class="formfield">
          <div class="value">
            <input required="required" class="textinput required trimspace" id="profile_customer_email" type="email" name="email" value="<?php echo $_SESSION["email"];?>" maxlength="50" placeholder="* Email" data-placeholder="* Email"  pattern='^[^\s@.]+(\.[^\s@.]+)*@[A-Za-z\d]([\w\-]*([A-Za-z0-9]\.[A-Za-z0-9])*)*([A-Za-z0-9]\.[A-Za-z]{2,})$' >
            <script>
              document.getElementById("profile_customer_email").addEventListener("change", function(){
                  document.getElementById("old").style.display = "block";
                  document.getElementById("profile_login_oldpassword").setAttribute("required","required");});
            </script>     
          </div>
          <a class="change_password" id="changepwdlink" onclick="myFunction()">Đổi Mật Khẩu</a>

          <script>
            function myFunction() {
              var x = document.getElementById("old");
            var y = document.getElementById("new");
            var z = document.getElementById("confirm");
  
              if (x.style.display === "none") {
                x.style.display = "block";
                document.getElementById("profile_login_oldpassword").setAttribute("required","required");
              } else {
            if (y.style.display === "block" && z.style.display === "block"){
                x.style.display = "none";
                document.getElementById("profile_login_oldpassword").removeAttribute("required");}
            if (y.style.display === "none" && z.style.display === "none") {
            x.style.display = "block";}
              } 
  

              if (y.style.display === "none") {
                y.style.display = "block";
                document.getElementById("profile_login_newpassword").setAttribute("required","required");
              } else {
                y.style.display = "none";
                document.getElementById("profile_login_newpassword").removeAttribute("required");
              }
    
              if (z.style.display === "none") {
                z.style.display = "block";
                document.getElementById("profile_login_newpasswordconfirm").setAttribute("required","required");
              } else {
                z.style.display = "none";
                document.getElementById("profile_login_newpasswordconfirm").removeAttribute("required");
              }
            }
          </script>
              </div>
            
        <div class="line-default-light divider-hor-top"></div>
          <div class="formfield change_pwd_field" id="old" style="display: none; position: static;">
            <div class="value" >
              <input class="textinputpw required" id="profile_login_oldpassword" type="password" autocomplete="off" name="oldPassword" value="" maxlength="2147483647" placeholder="* Mật Khẩu Cũ" data-placeholder="* Old Password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" >    
            </div>
                </div>
            
          <div class="formfield change_pwd_field" id="new" style="display: none; position: static;">
            <div class="labelwithcaption">
            <span class="caption">Vui lòng đảm bảo mật khẩu của bạn chứa tối thiểu một chữ in hoa, một chữ cái, một số (hoặc kí tự đặc biệt) và dài ít nhất 8 ký tự</span>
            </div>
            <div class="value">
              <input pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" class="textinputpw required " id="profile_login_newpassword" type="password" autocomplete="off" name="newPassword" value="" maxlength="2147483647" placeholder="* Mật Khẩu Mới" data-placeholder="* New Password">   
            </div>
                </div>
            
          <div class="formfield change_pwd_field" id="confirm" style="display: none; position: static;">
            <div class="value">
              <input pattern='(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$' class="textinputpw required" id="profile_login_newpasswordconfirm" type="password" autocomplete="off" name="confirmNewPwd" value="" maxlength="2147483647" placeholder="* Xác Nhận Mật Khẩu" data-placeholder="* Confirm Password">  
            </div>
                </div>      
        </div>
        </div>
  </div>
  
  <br><br><br>

    <div class="formactions">
        <button id="pisubmitid" class="btn_primary" type="submit" value="Submit" title="Gửi đi" name="Submit"><span>Gửi đi</span></button>  
  </div>
  
  <br>

  </form>

    <div class="formfields_container">
    <h2>Quản lý tài khoản</h2><br>
    <div class="formactions">
            <button id="pi_delete_button" class="btn_primary" type="submit" value="Submit" title="Xóa tài khoản của bạn" ><span>Xóa tài khoản của bạn</span></button>  
        </div>
    <p class="account_info">Bằng cách xóa tài khoản của bạn, bạn sẽ không còn có quyền truy cập vào thông tin được lưu trữ trong tài khoản adidas của bạn như lịch sử đơn đặt hàng hoặc danh sách yêu thích của bạn nữa.</p>
    </div>


  <div id="myModal" class="registration accountcenter" style="display: none;">
  <form id="deleteAccount" class="pesonal_info_modal" method="post" action="deleteaccount.php" autocomplete="on">
  <div ​id="pi_delete_account_modal" class="remove_pop_up account_remove_pop_up ui-dialog" >
    <h4>Xóa tài khoản</h4>
    <div class="contentasset">
    <p>Bạn có chắc chắn muốn xóa tài khoản adidas của mình không?</p>
    <p>Bằng cách xóa tài khoản của bạn, bạn sẽ không còn có quyền truy cập vào thông tin được lưu trữ trong tài khoản adidas của bạn như lịch sử đơn đặt hàng hoặc danh sách yêu thích của bạn nữa.</p>
    </div>
    <div class="contentasset">
      <p>Nếu bạn chọn xóa tài khoản của mình, email xác nhận sẽ được gửi đến <?php echo $_SESSION["email"]?>.</p>
    </div>
    <br>
    <button id="pi_delete_account" class="btn_primary" type="submit" value="Submit" title="Xóa Tài Khoản"><span>XÓA TÀI KHOẢN</span></button>
    <button id="pi_close_delete_modal" class="btn_primary btn_primary_black close_remove_pop_up" type="button" value="Cancel" title="Quay Lại Tài Khoản"><span>QUAY LẠI TÀI KHOẢN</span></button>
  </div>
  </form>
  </div>

  <script>
  // Get the modal
  var modal = document.getElementById('myModal');

  // Get the button that opens the modal
  var btn = document.getElementById("pi_delete_button");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close_remove_pop_up")[0];

  // When the user clicks the button, open the modal 
  btn.onclick = function() {
    modal.style.display = "block";
  }

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
    modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
  }
  </script>



  <div class="quick_links clear clearfix">
  <div class="contentasset" data-contentasset-id="account-quicklinks" data-contentasset="account-quicklinks">
    <h4>Đường Dẫn Nhanh</h4>
    <ul>
    <li><a href="#">Định Vị Cửa Hàng</a></li>
    <li><a title="Customer Service" href="#">Dịch Vụ Khách Hàng</a></li>
    <li><a title="View privacy policy" href="#">Chính Sách Bảo Mật</a></li>
    <li><a title="Secure shopping" href="#">Mua Sắm An Toàn</a></li>
    <li><a href="#">Thông Tin Giao Hàng</a></li>
    <li><a href="#">Chính Sách Hoàn Trả</a></li>
    </ul>
  </div>
  <!-- End contentasset -->
  </div>

</div><!-- End acconuntcenter-->

</div><!-- EO: rbk_content_wrapper -->
</div><!-- EO: main -->