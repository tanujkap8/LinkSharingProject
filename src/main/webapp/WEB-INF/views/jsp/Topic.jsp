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
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
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
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#topicadd").validate({
                rules: {
                    name: {
                        required: true,
                        remote: '/validatetopic'
                    },
                    visibility: {
                        required: true
                    }
                },
                messages: {
                    name: {
                        required: "Dont Forget Topic name Dude !!",
                        remote: "Sorry , Topic already exist !!"
                    },
                    visibility: {
                        required: "Dont Forget the Visibility"
                    }
                }
            });
        });

        $(document).ready(function () {
            function createTopic() {
                var name = $("#name").val();
                var visibility = $("#visibility").val();
                $.ajax({
                    type: "POST",
                    url: "addtopic",
                    data: {name: name, visibility: visibility},
                    success: function (response) {
                        console.log("response", response);
                        alert("data saved");
                    },
                    error: function (r) {
                        console.log(r);
                    }
                });
            }
            jQuery(document).on("click", "#submitForm", createTopic);
        });
    </script>
</head>
<body>
<button class="btn btn-primary" id="myBtn"><span class="glyphicon glyphicon-comment"></span></button>
<div id="myModal" class="modal">
    <div class="modal-content" style="background: lightgray">
        <span class="close">&times;</span>
        <h2>Add Topic</h2>
        <form action="javascript:void(0)" method="post" id="topicadd">
            <div class="form-group">
                <label for="name">Name*</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="TOPIC NAME">
            </div>
            <div class="form-group">
                <label for="visibility">Visibility*</label>
                <select style="float:left" id="visibility" name="visibility" class="form-control">
                    <option class="form-control" value="Public">Public</option>
                    <option class="form-control" value="Private">Private</option>
                </select>
            </div>
            <div class="modal-footer">
                <div class="checkbox">
                    <button type="submit"  class="btn btn-primary" style="float:right ">Cancel</button>
                    <button type="submit" id="submitForm" class="btn btn-primary" style="float:right ;margin-right:40px">Save</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

</body>
</html>