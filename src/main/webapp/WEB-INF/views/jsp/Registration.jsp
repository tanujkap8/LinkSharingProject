<ul class="list-group">
    <li class="list-group-item" style="background:lightgray">Register</li>
    <li class="list-group-item">
        <form action="/register" id="validateform" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="firstname">First name*</label>
                <input type="text" required="required" class="form-control" id="firstname" name="firstname" placeholder="FIRST NAME">
            </div>
            <div class="form-group">
                <label for="lastname">Last name*</label>
                <input type="text" required="required" class="form-control" id="lastname" name="lastname" placeholder="LAST NAME">
            </div>
            <div class="form-group">
                <label for="email">Email*</label>
                <input type="email" required="required" class="form-control" id="email" name="email" placeholder="Enter email" data-error="Please give valid email">
            </div>
            <div class="form-group">
                <label for="username">User name</label>
                <input type="text" required="required" class="form-control" id="username" name="username" placeholder="USER NAME">
            </div>
            <div class="form-group">
                <label for="password">Password*</label>
                <input type="password" required="required" class="form-control" id="password" name="password" placeholder="Enter password">
            </div>
            <div class="form-group">
                <label for="passwordconfirm">Confirm password*</label>
                <input type="password" name="passwordconfirm" class="form-control" id="passwordconfirm" placeholder="Enter password">
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