
// get data category to subcategory axios request

document.getElementById('category').addEventListener('change', loadSubcategories);
function loadSubcategories() {
    const categoryId = document.getElementById('category').value;
    // console.log(categoryId);
    axios.get(window.location.origin+'/dashboard/subcategories/'+categoryId).then(response => {


        const subcategories = response.data;
        console.log(subcategories);
        const subcategorySelect = document.getElementById('subcategory');
        subcategorySelect.innerHTML = '';


        const defaultOption = document.createElement('option');
        defaultOption.selected = true;
        defaultOption.disabled = true;
        defaultOption.textContent = 'Choose...';
        subcategorySelect.appendChild(defaultOption);


        subcategories.forEach(subcategory => {
          const option = document.createElement('option');
          option.value = subcategory.id;
          option.textContent = subcategory.sub_category_bn + ' || ' + subcategory.sub_category_en;
          subcategorySelect.appendChild(option);
        });

    })
    .catch(error => {
        console.error(error);
      });
}


// get subdistrict data from district axios request

document.getElementById('districtname').addEventListener('change', loadSubdistricts);
function loadSubdistricts() {
    const districtId = document.getElementById('districtname').value;
    // console.log(categoryId);
    axios.get(window.location.origin+'/dashboard/subdistricts/'+districtId).then(response => {


        const subdistricts = response.data;
        console.log(subdistricts);
        const subdistrictSelect = document.getElementById('subdistrictsid');
        subdistrictSelect.innerHTML = '';


        const defaultOption = document.createElement('option');
        defaultOption.selected = true;
        defaultOption.disabled = true;
        defaultOption.textContent = 'Choose...';
        subdistrictSelect.appendChild(defaultOption);


        subdistricts.forEach(subdistrict => {
          const option = document.createElement('option');
          option.value = subdistrict.id;
          option.textContent = subdistrict.subdistrict_bn + ' || ' + subdistrict.subdistrict_en;
          subdistrictSelect.appendChild(option);
        });

    })
    .catch(error => {
        console.error(error);
      });
}
