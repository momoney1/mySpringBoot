/**
 * 
 */
const submitButton = document.querySelector('.my__button');  //to retrieve submit button element

/**
	 * Get method for customer id
	 * 
	 * @return cid
	 */
const signUp = e => {
    let f = document.getElementById('fname').value;
    let formData = {
        fName: document.getElementById('fname').value,
        lName: document.getElementById('lname').value,
        email: document.getElementById('email').value

    }
    localStorage.setItem('formData', JSON.stringify(formData));
   //console.log(localStorage.getItem('formData'));
   displayData();
    e.preventDefault();
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

submitButton.addEventListener('click', signUp);