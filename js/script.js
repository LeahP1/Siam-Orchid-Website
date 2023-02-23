let menu = document.querySelector('#menu-bars');
let navbar = document.querySelector('header .navbar');

menu.onclick = () =>{
  menu.classList.toggle('fa-times');
  navbar.classList.toggle('active');
}

let section = document.querySelectorAll('section');
let navLinks = document.querySelectorAll('header .navbar a');

window.onscroll = () =>{
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
  
    section.forEach(sec =>{
  
      let top = window.scrollY;
      let height = sec.offsetHeight;
      let offset = sec.offsetTop - 150;
      let id = sec.getAttribute('id');
  
      if(top >= offset && top < offset + height){
        navLinks.forEach(links =>{
          links.classList.remove('active');
          document.querySelector('header .navbar a[href*='+id+']').classList.add('active');
        });
      };
  
    });
  
}
const tabs = document.querySelectorAll('.tab');
const theTabContent = document.querySelectorAll('.tabContent');

tabs.forEach((tab, index) =>
 tab.addEventListener('click', ()=>{
  tabs.forEach(tab=>{tab.classList.remove('active')});
tab.classList.add('active');

theTabContent.forEach(info=>{info.classList.remove('active')})
theTabContent[index].classList.add('active');
 }))

var swiper = new Swiper(".home-slider", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
      delay: 20000,
      disableOnInteraction: false,
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    loop:true,
  });

/*menu tabs*/
let list = document.querySelectorAll('.list li')
let boxes = document.querySelectorAll('.box');

list.forEach((el)=>{
    el.addEventListener('click' , (e)=>{

        list.forEach((li)=>{
            li.classList.remove('active')
        })
        e.target.classList.add('active')
        
        boxes.forEach((e12)=>{
            e12.style.display = "none";
        })
       document.querySelectorAll(e.target.dataset.filter).forEach((li)=>{
        li.style.display = "flex";
       })
    })
})