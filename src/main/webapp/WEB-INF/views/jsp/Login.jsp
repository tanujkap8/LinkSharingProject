<ul class="list-group">
    <li class="list-group-item" style="background:lightgray">Login</li>
    <li class="list-group-item">
        <form action="/login" method="post">
            <div class="form-group">
                <label for="useremail">Email / Username*</label>
                <input type="text" required="required" name="username" class="form-control" id="useremail"  placeholder="Enter username">
            </div>
            <div class="form-group">
                <label for="pwd">Password*</label>
                <input type="password" required="required" name="password" class="form-control" id="pwd" placeholder="Enter password">
            </div>
            <div class="checkbox">
                <a href="/forgetpass">Forgot password</a>
                <button type="submit" class="btn btn-primary" style="float:right">Submit</button>
            </div>
        </form>
    </li>
</ul>