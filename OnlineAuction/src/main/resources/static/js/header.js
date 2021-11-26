function mobile_navigation_drawer(event){
    event.preventDefault();
    console.log("called");
    document.getElementsByClassName('mobile_navigation')[0].style.left = '0';
    document.getElementsByClassName('mobile_navigation')[0].style.top = '0';
    document.getElementsByTagName("body")[0].style.overflow = "hidden";
    document.getElementsByClassName('overlay')[0].style.display = 'block';
    document.getElementsByClassName('mobile_navigation')[0].style.overflow = 'scroll';
}
// mobile drawer menu close
function mobile_close(event){
    event.preventDefault();
    document.getElementsByClassName('mobile_navigation')[0].style.left = '-100%';
    document.getElementsByTagName("body")[0].style.overflow = "scroll";
    document.getElementsByClassName('overlay')[0].style.display = 'none'
}

