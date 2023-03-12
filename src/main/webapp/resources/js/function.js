function deleteStudents(){

    const checkedCheckBoxes = document.querySelectorAll('input[name=studentId]:checked');
    if(checkedCheckBoxes.length=0){
        alert("выбирите хотябы одного студента");
        return;
    }

    let ids ="";
    for (let i = 0; i < checkedCheckBoxes.length; i++) {
        ids = ids+checkedCheckBoxes[i].value + " ";

        document.getElementById("idsFormDelete");
        document.getElementById("deleteForm");


        
    }

}