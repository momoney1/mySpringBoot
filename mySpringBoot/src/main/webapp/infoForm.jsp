




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <title>HTML5 Local Storage Project</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="rating" content="General">
    <meta name="expires" content="never">
    <meta name="language" content="English, EN">
    <meta name="description" content="Shopping cart project with HTML5 and JavaScript">
    <meta name="keywords" content="HTML5,CSS,JavaScript, html5 session storage, html5 local storage">
    <meta name="author" content="dcwebmakers.com">
    <title>Form Data</title>
    <link rel="stylesheet" href="emailStorage.css">
    <link rel="stylesheet" href="bootstrap-4.0.0/">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<!--C:\Users\moedi\OneDrive\Desktop\MyCode\bootstrap-4.0.0\assets\css-->
<body>
    <nav class="navbar">
        <div class="navbar__container">
            <a href="#home" onclick="location.href='https://www.getfreestyled.com/'" id="navbar__logo">The Freestyle App&#8482</a>
            <div class="navbar__toggle" id="mobile-menu">
              <span class="bar"></span>
              <span class="bar"></span>
              <span class="bar"></span>
          </div>
          <ul class="navbar__menu">
              <li class="navbar__item">
                  <a href="/index.html#home" class="navbar__links" id="home-page"><i class="fa fa-home"></i></a>
              </li>
              <li class="navbar__item">
                <a href="" class="navbar__links" onclick="location.href='https://www.getfreestyled.com/contact'" id="about-page"><i class="fas fa-question-circle"></i>

</a>
            </li>
            <li class="navbar__item">
                <a href="#about" class="navbar__links" onclick="location.href='/Products.html'" id="about-page"><i class="fab fa-product-hunt"></i>

                </i>
                </a>
            </li>
            <li class="navbar__item">
                <a href="" class="navbar__links" onclick="location.href='https://www.getfreestyled.com/events'" id="services-page"><i class="fa fa-calendar" aria-hidden="true"></i>
                </a>
            </li>
            <li class="navbar__item">
                <a href="" class="navbar__links" onclick="location.href='https://www.getfreestyled.com/blog'" id="about-page"><i class="fas fa-blog"></i>

                </a>
            </li>
            <li class="navbar__btn">
                <a href="" class="button" onclick="location.href='https://www.getfreestyled.com/login'" id="signup">Sign In</a> 
            </li>
          </ul>
       </div>
    </nav>

    <div class="my__container">
        <h2>SIGNUP FORM</h2>
        <form method="post" action="add">
        	<div class="form-group">
                <input type="text" name="cid" id="cid" placeholder="Customer ID" required>
            </div>
            <div class="form-group"> 
                <input type="text" name="fname" id="fname" placeholder="First Name" required>
            </div>
            <div class="form-group">
                <input type="text" name="sname" id="sname" placeholder="Last Name" required>
            </div>
            <div class="form-group">
                <input type="text" name="email" id="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="submit" class="my__button" value="Submit" onClick="return signUp()">
            </div>
        </form>

        <h2>MY INFO</h2>
        <div id="output">
            
        </div>
    </div>
    
    <!--footer section-->
    <div class="footer__container">
        <div class="footer__links">
            <div class="footer__link--wrapper">
                <div class="footer__link--items">
                    <h2>About Us</h2>
                    <a href="/sign-up">Explore</a>
                    <a href="/sign-up">Reviews</a>
                    <a href="/sign-up">Calendar</a>
                    <a href="/sign-up">Services</a>
                    <a href="/sign-up">Profile</a>
                </div>
                <div class="footer__link--items">
                    <h2>Social Media</h2>
                    <a href="/sign-up">Facebook</a>
                    <a href="/sign-up">Instagram</a>
                </div>
            </div>
        </div>
        <section class="social__media">
            <div class="social__media--wrap">
                <div class="footer__logo">
                    <a href="/" id="footer__logo">2021 The Freestyle App&#8482</a>
                </div>
                <p class="website__rights">� 2021 The Freestyle App&#8482</p>
                <a href="/" class="social__icon--link" target="_blank"><i class="fab fa-facebook"></i></a>
                <a href="/" class="social__icon--link" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="/" class="social__icon--link" target="_blank"><i class="fab fa-twitter"></i></a>
            </div>
        </section>
    </div>
    <script> 
    console.log("hi Moe");
    let firstName = document.getElementById('fname');
    let lastName = document.getElementById('lname');
    let emailAddress = document.getElementById('email');
    let formData;
    function signUp(){ //function invoked when "submit" button is clicked to present user info on reloaded jsp page.
    	alert("hi moe again");
    	console.log("hi Moe again");
    	firstName = document.getElementById('fname').value;
    	lastName = document.getElementById('lname').value;
    	emailAddress = document.getElementById('email').value;
    	alert(firstName);
    	formData = {
    			firstName,
    			lastName,
    			emailAddress
    	}
    	console.log(formData);
    	displayData();
        //let firstName = document.getElementById('fname').value;  
    }
    function displayData(){
        if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(document.getElementById('email').value))
      {
        alert("it is valid");
        if(localStorage.getItem('formData')){
            console.log(JSON.parse(localStorage.getItem('formData')));
            let {fName, lName, email} = JSON.parse(localStorage.getItem('formData'));
            var output = document.getElementById('output');
            output.innerHTML = `
            <table>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td>${fName}</td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>${lName}</td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td>${email}</td>
                    </tr>
                </tbody>
            </table>
            `;
        }
      }else{
          alert("Invalid Email Address, please try again");
      }


    }
       </script>
</body>
</html>