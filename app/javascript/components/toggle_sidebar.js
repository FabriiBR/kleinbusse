
const toggleNav = () => {
    let toggleStatus = false;

  // let navSize = getComputedStyle(document.documentElement).getPropertyValue('--sizesidebar');
  if (toggleStatus === false) {
    document.documentElement.style.setProperty('--sizesidebar','18rem');
    document.querySelector(".head-text").style.display = "block";
    document.querySelector(".navigator-item").classList.add("navigator-border");
    document.querySelector(".link-text").style.display = "block";
    document.querySelector(".link-textb").style.display = "block";
    document.querySelector(".link-textc").style.display = "block";
    document.querySelector(".link-textd").style.display = "block";
    document.querySelector(".info-name").style.display = "block";
    document.querySelector(".info-type").style.display = "block";
    document.querySelector(".event").style.display = "block";
    document.querySelector(".info-avatar").style.width = "100px";
    document.querySelector(".info-avatar").style.height = "100px";
    toggleStatus = true;
  }
  else if (toggleStatus === true){
    document.documentElement.style.setProperty('--sizesidebar','5rem');
    document.querySelector(".head-text").style.display = "none";
    document.querySelector(".link-text").style.display = "none";
    document.querySelector(".link-textb").style.display = "none";
    document.querySelector(".link-textc").style.display = "none";
    document.querySelector(".link-textd").style.display = "none";
    document.querySelector(".navigator-item").classList.remove("navigator-border");
    

    document.querySelector(".info-name").style.display = "none";
    document.querySelector(".info-type").style.display = "none";
    document.querySelector(".event").style.display = "none";
    document.querySelector(".info-avatar").style.width = "60px";
    document.querySelector(".info-avatar").style.height = "60px";
    toggleStatus = false;
  }
}

export default toggleNav