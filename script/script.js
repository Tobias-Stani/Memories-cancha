const dragAndDropContainer = document.getElementById('drag-and-drop-container');

dragAndDropContainer.addEventListener('dragover', (e) => {
    e.preventDefault();
    dragAndDropContainer.classList.add('drag-over');
});

dragAndDropContainer.addEventListener('dragleave', () => {
    dragAndDropContainer.classList.remove('drag-over');
});

dragAndDropContainer.addEventListener('drop', (e) => {
    e.preventDefault();
    dragAndDropContainer.classList.remove('drag-over');

    const file = e.dataTransfer.files[0];
    handleFile(file);
});

const handleFile = (file) => {
    const reader = new FileReader();

    reader.onload = function (e) {
        // Aquí puedes realizar acciones con el archivo cargado, por ejemplo mostrar la imagen previa.
        console.log('Imagen cargada:', e.target.result);
    };

    reader.readAsDataURL(file);
};
