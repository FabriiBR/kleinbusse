let btn_newman = () => {
  document.querySelector(".head-img").addEventListener("click", toggleNav)}

function toggleNav(){

  let navSize = getComputedStyle(document.documentElement).getPropertyValue('--sizesidebar');
  if (navSize == '18rem') {
      return close();
  }
  return open();
}

function open() {
  document.documentElement.style.setProperty('--sizesidebar','18rem');
  document.querySelector(".head-text").style.display = "block";
  document.querySelector(".link-text").style.display = "block";
  document.querySelector(".info-name").style.display = "block";
  document.querySelector(".info-type").style.display = "block";
  document.querySelector(".info-avatar").style.width = "150px";
  document.querySelector(".info-avatar").style.height = "150px";
}
function close() {
  document.documentElement.style.setProperty('--sizesidebar','5rem');
  document.querySelector(".head-text").style.display = "none";
  document.querySelector(".link-text").style.display = "none";
  document.querySelector(".info-name").style.display = "none";
  document.querySelector(".info-type").style.display = "none";
  document.querySelector(".info-avatar").style.width = "60px";
  document.querySelector(".info-avatar").style.height = "60px";
}

export default btn_newman;