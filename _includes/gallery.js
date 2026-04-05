(function() {
    let photos = [
        {% for photo in include.photos  %}
            {label: "{{photo.label | escape}}", url: "{{category.folder}}/{{photo.url}}"},
        {% endfor %}
    ]

    let maxindex = photos.length - 1
    let minindex = 0

    let index = 0
    let parent = document.currentScript.parentElement
    let image = parent.querySelector('.gallery-image')
    let label = parent.querySelector('.gallery-desc')

    let nextButton = parent.querySelector('.next')
    let backButton = parent.querySelector('.back')

    if (maxindex == 0) {
        nextButton.style.display = "none"
        backButton.style.display = "none"
    }    

    nextButton.addEventListener('click', function() {
        index = (index == maxindex ? minindex : index + 1)
        display()
    })

    backButton.addEventListener('click', function() {
        index = (index == minindex ? maxindex : index - 1)
        display()
    })

    function display() {
        let photo = photos[index]
        image.setAttribute('src', photo.url)
        label.innerHTML = photo.label
    }

    //window.onload = display
    window.addEventListener('load', display)
})()