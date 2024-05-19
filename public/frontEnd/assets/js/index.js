
//
// </defs>
// </svg>

//                   </a>
//                 </h5>
//                 <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close">
                
//                 </button>
//               </div>

//               <div class="offcanvas-body header ">
//                 <ul class="navbar-nav w-100  mb-2 mb-lg-0 align-items-lg-center">

//                   <li class="nav-item px-2 py-2">
//                     <a class="nav-link active " aria-current="page" href="index.html">
//                       <span class="px-4 py-2">
//                         home
//                       </span>
//                     </a>
//                   </li>
//                   <li class="nav-item">
//                     <a class="nav-link px-2 py-2" aria-current="page" href="aboutUs.html">
//                       <span class="px-4 py-2">About</span>
//                     </a>
//                   </li>
//                   <li class="nav-item">
//                     <a class="nav-link px-2 py-2" aria-current="page" href="service.html"><span class="px-4 py-2">Services</span></a>
//                   </li>

//                 </ul>

//               </div>
//             </div>
//           </div>
//         </div>
//         <div class="col-lg-4 col-10 d-flex align-items-center justify-content-end gap-2" >

//           <div class="px-2 LanguageMenu " role="button">
//             <span >
//               <img src="assets/imgs/home/globe-outline.svg" loading="lazy" alt="description" width="" height="">
//             </span>
//             <span class="lan" id="LanguageText">العربية</span>

//           </div>
//           <div class=" px-2">
//             <a class="bg-red text-decoration-none text-white  rounded-1 py-2 explore d-flex justify-content-center align-items-center m-auto w-auto px-3"
//               href="tel:966 460 345">Call us at +966 460 345</a>
//           </div>
//         </div>






//       </div>
//     </div>
//   </nav>

// </div>


// <div class="floatwhatsapp ">
// <i class="fa-brands fa-whatsapp "></i>

// </div>
// <div class="back-to-top" id="backTop">
// <i class="fa fa-arrow-up "></i>

// </div>
//   `
// navBar.innerHTML = navBarcontainer;

$(document).ready(() => {
  $(window).scroll(function () {
    let windowScroll = $(window).scrollTop();
    if (windowScroll > 130) {
      $("#backTop").fadeIn(500).css("display","flex")
    }
    else {
      $("#backTop").fadeOut(500);
  
    }
  })
  $("#backTop").click(function () {
    $("html,body").scrollTop(0);
  })
  });
// let FooterContainer= `
// <footer>
//   <div class="container py-5">
//   <div class="row justify-content-between" data-aos="fade-up" >
//   <div class="col-md-4 col-12 text-white d-flex flex-md-row flex-column align-items-start gap-3">
//   <a class="navbar-brand py-2 text-center  m-0" href="index.html">
//   <img class="" width="70" src="assets/imgs/home/MostafaPress.svg"  loading="lazy" alt="description" width="" height="" />
// </a>
//   <p>Lorem ipsum dolor sit amet consectetur. Rhoncus molestie vitae ullamcorper tristique ipsum lacus. Lorem lectus amet neque cursus sem varius enim. Tellus at massa nibh tempor sit erat lacus eu purus. Vel quisque felis mi et mattis platea eget tincidunt ut.</p>
//   </div>
//     <div class="col-md-3 col-12 ">
//       <ul class="p-0 fs-6 list-footer">
//         <li class="py-1">
//           <a href="index.html">
//             Home
//           </a>
//         </li>
//         <li class="py-1">
//         <a href="aboutUs.html">
//         About
//         </a>
//       </li>
//     <li class="py-1">
//     <a href="service.html">
//     Services
//     </a>
//   </li>
//   <li class="py-1">
//   <a href="ContactUs.html">
//   Contact us
//   </a>
// </li>
// <li class="py-1">
// <a href="Terms.html">
// Terms
// </a>
// </li>
// <li class="py-1">
// <a href="Policy.html">
// Privacy Policy
// </a>
// </li>
//       </ul>
//     </div>
//     <div class="col-md-4 col-12 ">
//       <h4 class="">Get in touch</h4>
  
//       <ul class="social d-flex px-0">
//         <li>
//           <a href="#">
//             <i class="fab fa-facebook-f icon"></i>
//           </a>
//         </li>
//         <li>
//           <a href="#"><i class="fab fa-twitter icon"></i></a>
//         </li>
//         <li>
//           <a href="#"><i class="fa-brands fa-instagram icon">
//           </i></a>
//         </li>
//         <li>
//           <a href="#"><i class="fa-brands fa-whatsapp icon"></i></a>
  
//         </li>
//       </ul>
//     </div>
//     <div class="col-md-3 col-12 px-0">

//     </div>
//   </div>
//   </div>
  
//   <div class="container py-3">
  
  
//   <div class="row justify-content-center border-top border-light text-white-50 py-4 fw-medium gy-3">
//   <div class="col-md-4 col-12 text-center fs-6   ">
//     © 2024 <a class="" href="index.html"> Mostafa Press</a>. All right reserved.
//   </div>
//     <div class="col-md-4 col-12 text-center  emcan">
//       Powared by<span class=""> <a style="color:#489339;opacity: 1;"  href="https://emcan-group.com/en">Emcan Solutions</a> </span>
//     </div>
//     <div class="col-md-4 col-12 text-center  emcan">
//       <ul class="p-0 fs-6 list-footer list-data-footer flex-nowrap">
//         <li class="py-1">
//           <a href="Terms.html">
//             Terms & Conditions
//           </a>
//         </li>
//         <li class="py-1">
//         <a href="Policy.html">
//           Privacy Policy
//         </a>
//       </li>
//       </ul>
//     </div>
//   </div>
  
//   </div>
//   </footer>
//   `
//   footer.innerHTML = FooterContainer;


//     startPage();
// CheckLanguage();
// function startPage() {
//   let lang = localStorage.getItem('Language');
//   if (lang == undefined || lang == null || lang == "") {
//   localStorage.setItem('Language',"English");
//   }
// }

// document.addEventListener('DOMContentLoaded', function() {
//   const dropdownLanguage = document.querySelectorAll('.LanguageMenu');
//   dropdownItems.forEach(item => {
//       item.addEventListener('click', function() {
//           const selectedOption = item.textContent.trim();
//           localStorage.setItem('ViewMode',selectedOption);
//           window.location.reload();
//       });
//   });
//   dropdownLanguage.forEach(item => {
//     item.addEventListener('click', function() {
//         const selectedOption = item.textContent.trim();
//         localStorage.setItem('Language',selectedOption);
//         window.location.reload();
//     });
// });
// });

// startPage();

/////// initialize All Items needed for Running Page
// function startPage() {
//   let lang = localStorage.getItem('Language');
//   if (lang == undefined || lang == null || lang == "") {
//   localStorage.setItem('Language',"English");
//   }

  
// }


    // document.addEventListener('DOMContentLoaded', function() {
    //   const dropdownLanguage = document.querySelectorAll('.LanguageMenu .lan');
    //   dropdownLanguage.forEach(item => {
    //     item.addEventListener('click', function() {
    //         const selectedOption = item.textContent.trim();
    //         localStorage.setItem('Language',selectedOption);
    //         window.location.reload();
    //     });
    // });
    // });

  