function togglePasswordVisibility() {
    var passwordInput = document.getElementById("exampleInputPassword");
    var eyeIcon = document.getElementById("eyeIcon");

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        eyeIcon.classList.add("visible");
    } else {
        passwordInput.type = "password";
        eyeIcon.classList.remove("visible");
    }
}
