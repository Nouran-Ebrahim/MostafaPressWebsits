{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js" integrity="sha512-X/YkDZyjTf4wyc2Vy16YGCPHwAY8rZJY+POgokZjQB2mhIRFJCckEGc6YyX9eNsPfn0PzThEuNs+uaomE5CO6A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    $(document).on("click", "svg.liked-icon", function () {
        $(this).toggleClass('active');
        id = $(this).attr('data-id');
        console.log(id);
        $.ajax({
            url: "{{ route('client.toggle-fav') }}",
            dataType: "json",
            type: "Post",
            data: { 
                product_id : id
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
@include('sweetalert::alert')
<script src="{{ asset('assets/js/index.js') }}"></script>
@stack('js') --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"
    integrity="sha512-X/YkDZyjTf4wyc2Vy16YGCPHwAY8rZJY+POgokZjQB2mhIRFJCckEGc6YyX9eNsPfn0PzThEuNs+uaomE5CO6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
    integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="{{ asset('assets/js/newjs.js') }}"></script>
@include('sweetalert::alert')


<script src="{{ asset('frontEnd/assets/js/index.js') }}"></script>

<script>
    AOS.init({
        once: true
    })
    $(document).ready(() => {
        $(window).scroll(function() {
            let windowScroll = $(window).scrollTop();
            if (windowScroll > 130) {
                $("#backTop").fadeIn(500).css("display", "flex")
            } else {
                $("#backTop").fadeOut(500);

            }
        })
        $("#backTop").click(function() {
            $("html,body").scrollTop(0);
        })
    });
    startPage();
    CheckLanguage();
    /////// initialize All Items needed for Running Page
    function startPage() {
        let lang = localStorage.getItem('Language');
        // console.log(lang);
        if (lang == undefined || lang == null || lang == "") {
            localStorage.setItem('Language', "English");
        }


    }


    document.addEventListener('DOMContentLoaded', function() {
        const dropdownLanguage = document.querySelectorAll('.LanguageMenu .lan');
        dropdownLanguage.forEach(item => {
            item.addEventListener('click', function() {
                const selectedOption = item.textContent.trim();
                localStorage.setItem('Language', selectedOption);
                window.location.reload();
            });
        });
    });

    function CheckLanguage() {
        
        const Language = "{{lang()}}";
        // console.log(Language);
        if (Language == "en") {
            document.body.style.direction = "ltr";
            document.body.classList.remove("arabicVersion");

        } else if (Language == "ar") {
            document.body.style.direction = "rtl";
            const Language = document.getElementById('LanguageText');
            Language.textContent = "English";
            document.body.classList.add("arabicVersion");

        }
    }
</script>
@stack('js')
