// Obtener referencias a los elementos del DOM
const showArticlesBtn = document.getElementById('show-articles-btn');
const articlesContainer = document.getElementById('articles-container');

// Obtener referencias al formulario y sus elementos
const articleForm = document.getElementById('article-form');
const titleInput = document.getElementById('title-input');
const contentInput = document.getElementById('content-input');

// Obtener referencias al formulario y sus elementos para actualizar
const articleFormUpdate = document.getElementById('article-form-update');
const idInput = document.getElementById('id-input');
const titleInputUpdate = document.getElementById('title-input-update');
const contentInputUpdate = document.getElementById('content-input-update');

// Obtener referencias al formulario y sus elementos para eliminar
const articleFormDelete = document.getElementById('article-form-delete');
const idInputDelete = document.getElementById('id-input-delete');

// Agregar un evento "click" al botón para hacer una petición GET a la API
showArticlesBtn.addEventListener('click', () => {
	fetch('http://127.0.0.1:8080/article')
		.then(response => response.json())
		.then(data => {
			let articlesHtml = '';
			data.forEach(article => {
				articlesHtml += `
					<p>ID: ${article.id}</p>
					<h2>${article.title}</h2>
					<p>${article.content}</p>
				`;
			});
			articlesContainer.innerHTML = articlesHtml;
		})
		.catch(error => console.error(error));
});

// Agregar un evento "submit" al formulario para hacer una petición POST a la API
articleForm.addEventListener('submit', event => {
	// Prevenir la recarga de la página
	event.preventDefault();

	// Obtener los valores de los campos del formulario
	const titleValue = titleInput.value;
	const contentValue = contentInput.value;

	// Hacer la petición POST a la API
	fetch('http://127.0.0.1:8080/write', {
		method: 'POST',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify({
			title: titleValue,
			content: contentValue
		})
	})
	.then(response => response.json())
	.then(data => console.log(data))
	.catch(error => console.error(error));

	// Limpiar los campos del formulario después del envío
	titleInput.value = '';
	contentInput.value = '';
});

// Agregar un evento "submit" al formulario para hacer una petición PUT a la API
articleFormUpdate.addEventListener('submit', event => {
	// Prevenir la recarga de la página
	event.preventDefault();

	// Obtener los valores de los campos del formulario
	const idValue = idInput.value;
	const titleValue = titleInputUpdate.value;
	const contentValue = contentInputUpdate.value;

	// Hacer la petición PUT a la API
	fetch(`http://127.0.0.1:8080/update/${idValue}`, {
		method: 'PUT',
		headers: {
			'Content-Type': 'application/json'
		},
		body: JSON.stringify({
			title: titleValue,
			content: contentValue
		})
	})
	.then(response => response.json())
	.then(data => console.log(data))
	.catch(error => console.error(error));

	// Limpiar los campos del formulario después del envío
	idInput.value = '';
	titleInputUpdate.value = '';
	contentInputUpdate.value = '';
});

// Agregar un evento "submit" al formulario para hacer una petición DELETE a la API
articleFormDelete.addEventListener('submit', event => {
	// Prevenir la recarga de la página
	event.preventDefault();

	// Obtener el valor del campo del formulario
	const idValue = idInputDelete.value;

	// Hacer la petición DELETE a la API
	fetch(`http://127.0.0.1:8080/delete/${idValue}`, {
		method: 'DELETE'
	})
	.then(response => response.json())
	.then(data => console.log(data))
	.catch(error => console.error(error));

	// Limpiar el campo del formulario después del envío
	idInputDelete.value = '';
});