```javascript
// ==========================
// Smooth scrolling navigation
// ==========================


document.querySelectorAll('a[href^="#"]').forEach(link => {

    link.addEventListener("click", function(e) {

        const target = document.querySelector(this.getAttribute("href"));

        if (target) {

            e.preventDefault();

            target.scrollIntoView({

                behavior: "smooth"

            });

        }

    });

});





// ==========================
// Fade-in animation on scroll
// ==========================


const sections = document.querySelectorAll(".section, .project-card, .skill");


const observer = new IntersectionObserver(

(entries) => {

    entries.forEach(entry => {


        if(entry.isIntersecting) {


            entry.target.classList.add("show");


        }


    });

},


{

    threshold: 0.15

}

);




sections.forEach(section => {


    section.classList.add("hidden");

    observer.observe(section);


});
```
