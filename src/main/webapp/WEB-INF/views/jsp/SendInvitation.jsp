<!DOCTYPE html>
<html>
<head>
    <style>
        /* The Modal (background) */
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
        .close1 {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close1:hover,
        .close1:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<button onclick="modal1" class="btn btn-primary" id="myBtn1"><span class="glyphicon glyphicon-envelope"></span></button>
<div id="myModal1" class="modal">
    <div class="modal-content" style="background: lightgray">
        <span class="close1">&times;</span>
        <h2>Send Invitation</h2>
        <form action="" method="post">
            <div class="form-group">
                <label for="topicname">Email*</label>
                <input type="text" class="form-control" id="topicname" name="topicname" placeholder="TOPIC NAME">
            </div>
            <div class="form-group">
                <label for="topic">Topic*</label>
                <select style="float:left" id="topic" class="form-control">
                    <option class="form-control" value="private">TOPIC</option>
                </select>
            </div>
            <div class="modal-footer">
                <div class="checkbox">
                    <button type="submit" class="btn btn-primary" style="float:right ">Cancel</button>
                    <button type="submit" class="btn btn-primary" style="float:right ;margin-right:40px">Invite</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    // Get the modal
    var modal1 = document.getElementById('myModal1');

    // Get the button that opens the modal
    var btn1= document.getElementById("myBtn1");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close1")[0];

    // When the user clicks the button, open the modal
    btn1.onclick = function() {
        modal1.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick= function() {
        modal1.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal1) {
            modal1.style.display = "none";
        }
    }
</script>

</body>
</html>