<!DOCTYPE html>
<html>
<head>
    <style>
        /* The Modal (background) */
        .ui-front{
            z-index: 10000;
        }
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close2 {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close2:hover,
        .close2:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<button  class="btn btn-primary" id="myBtn2"><span class="glyphicon glyphicon-link"></span></button>
<div id="myModal2" class="modal ui-front">
    <div class="modal-content" style="background: lightgray">
        <span class="close2">&times;</span>
        <h2>Share Link</h2>
        <form action="" method="post">
            <div class="form-group">
                <label for="topicname">Link*</label>
                <input type="text" class="form-control" id="topicname" name="topicname" placeholder="TOPIC NAME">
            </div>
            <div class="form-group">
                <label for="description">Description*</label>
                <textarea rows="4" cols="50" class="form-control" name="description" id="description">Description</textarea>
            </div>
            <div class="form-group">
                <label for="topic">Topic*</label>
                <select style="float:left" id="topic" class="form-control">
                    <option class="form-control"></option>
                </select>
            </div>
            <div class="modal-footer">
                <div class="checkbox">
                    <button type="submit" class="btn btn-primary" style="float:right ">Cancel</button>
                    <button type="submit" class="btn btn-primary" style="float:right ;margin-right:40px">Share</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    // Get the modal
    var modal2 = document.getElementById('myModal2');

    // Get the button that opens the modal
    var btn2 = document.getElementById("myBtn2");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close2")[0];

    // When the user clicks the button, open the modal
    btn2.onclick = function() {
        modal2.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal2.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal2.style.display = "none";
        }
    }
</script>

</body>
</html>