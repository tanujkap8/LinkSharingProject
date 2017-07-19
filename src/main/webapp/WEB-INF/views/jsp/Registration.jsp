<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#validateform").validate({
            rules: {
                email: {
                    required: true,
                    email: true,
                    remote:'/validateEmail'
                },
                username: {
                    required: true,
                    remote:'/validateUsername'
                },
                password: {
                    required: true
                },
                passwordconfirm: {
                    required: true,
                    equalTo: "#password"
                }

            },
            messages: {
                username: {
                    required: "Dont Forget your Username",
                    minlength: "You minlength is not right",
                    remote:"Username already exists"
// maxlength:$.validator.format("You have exceeded the maxlength {0}")
                },
                email:
                    {
                        required: "Dont Forget your Email",
                        remote:"Email already taken"
                    },
                passwordconfirm: {
                    required: "You Forgot to confirm your password",
                    equalTo: "Password Not match"
                }
            }
        });
    });
</script>

<ul class="list-group">
    <li class="list-group-item" style="background:lightgray">Register</li>
    <li class="list-group-item">
        <form action="/register" role="form" id="validateform" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="firstname">First name*</label>
                <input type="text" class="form-control" id="firstname" name="firstname" placeholder="FIRST NAME" required>
            </div>
            <div class="form-group">
                <label for="lastname">Last name*</label>
                <input type="text" class="form-control" id="lastname" name="lastname" placeholder="LAST NAME" required>
            </div>
            <div class="form-group">
                <label for="email">Email*</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                <span id="email_status"></span>
            </div>
            <div class="form-group">
                <label for="username">User name</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="USER NAME" required>
                <span id="name_status"></span>
            </div>
            <div class="form-group">
                <label for="password">Password*</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            </div>
            <div class="form-group">
                <label for="passwordconfirm">Confirm password*</label>
                <input type="password" name="passwordconfirm" class="form-control" id="passwordconfirm" placeholder="Enter password" required>
            </div>
            <div class="form-group">
                <label>Photo*</label>
                <div class="input-group add-on">
                    <input class="form-control" placeholder="browse"  id="search-term" type="text">
                    <div class="input-group-btn">
                        <input class="btn btn-default" name="photo" type="file"><i>Browse</i>
                    </div>
                </div>
            </div>
            <div class="checkbox">
                <button type="submit" class="btn btn-primary" style="margin-left:300px">Register</button>
            </div>
        </form>
    </li>
</ul>