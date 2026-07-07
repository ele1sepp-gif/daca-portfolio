```javascript
// DACA Portfolio
// Ele Sepp


// Smooth appearance animation when scrolling

const sections = document.querySelectorAll(".section, .project-card, .skill");


const observer = new IntersectionObserver(
    entries => {

        entries.forEach(entry => {

            if (entry.isIntersecting) {

                entry.target.classList.add("show");

            }

        });

    },
    {
        threshold: 0.15
    }
);



sections.forEach(section => {

    observer.observe(section);

});
```
