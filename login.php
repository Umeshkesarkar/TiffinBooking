
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="sty.css">
    
    <title>Login</title>
</head>
<body>

    <div class="container">
        <div class="row">
            

                <div class="col-md-4 offset-md-4 form-div">
                
                <h3 class="text-center">Login</h3>


             <form action='server.php' method='post'>

                            
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" class="form-control form-control-lg" placeholder="Email">
                </div>
                <div class="form-group">
                    <label for="Passwor">Password</label>
                    <input type="Password" name="password" class="form-control form-control-lg" placeholder="********">
                </div>              
                <div class="form-group">
                    <button type="submit" name="login_user" class="btn btn-primary btn-block btn-lg">Login</button>
                </div>
                     <p class="text-center">Not a member? <a href="register.html">Sign Up</a></p>
                   
                

           </div> 
        </div>
    </div>
    </form>
</body>
</html>
<?php
session_start();
if(isset($_SESSION['error'])&& $_SESSION['error']!=''){ ?>
<script>alert("<?php echo $_SESSION['error'];?>");</script>
<?php } ?>