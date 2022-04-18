const fileUpload = document.querySelector(".file-upload");
const previewImg = document.querySelector(".preview-img");

fileUpload.onchange = () => {
	previewImg.innerHTML = "";
	
	for(let i = 0; i < fileUpload.files.length; i++){
		if(!isImage(fileUpload.files[0])){
			alert((i + 1) + "번 파일은 이미지가 아닙니다.");
			fileUpload.select();
			document.selection.clear();
			previewImg.innerHTML = "";
			return;
		}
		const reader = new FileReader();
		
		reader.onload = () => {
			const img = document.createElement("img"); 
			img.src = reader.result;
			previewImg.appendChild(img);
		}		
		reader.readAsDataURL(fileUpload.files[i]);
	}
}

function isImage(file){
	return file.type.indexOf('image') >= 0;
}