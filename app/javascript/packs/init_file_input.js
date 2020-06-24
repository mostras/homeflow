
const inputChangeEvent = (e) => {
  const input = e.currentTarget
  const paraFilename = input.parentNode.parentNode.querySelector('.filename')
  paraFilename.innerHTML = Array.from(input.files).map(file => file.name).join('<br>')
}

const initInput = (input) => {
    const label = document.createElement('label')
    const paraFilename = document.createElement('p');

    label.setAttribute('class', 'add-photo-button button-empty')
    label.innerHTML = `<div>Choisir ${input.dataset.prompt}...</div>`
    input.parentNode.replaceChild(label, input)
    label.insertAdjacentElement('beforeend', input)
    paraFilename.classList.add('filename')
    label.parentNode.insertAdjacentElement('beforeend', paraFilename)
    input.addEventListener('change', inputChangeEvent)
  }

const initFileInput = () => {
  document.querySelectorAll('.nice_input_file').forEach(initInput)
}


export { initFileInput };
