// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//= require jquery
//= require jquery_ujs


     
var form = document.getElementById('addForm');
var itemList = document.getElementById('items');

// Form submit event
form.addEventListener('submit', addItem);

//Delete event
itemList.addEventListener('click', removeItem);



//Add item
function addItem(e){
    e.preventDefault();

    var newItem = document.getElementById('item').value;
    
    //Create new li element

    var li = document.createElement('li');
    
    //Add class
    li.className = 'list-group-item';

    //Add text node with input value
    li.appendChild(document.createTextNode(newItem));

    // Create del button element
    var deleteBtn = document.createElement('button');

    //Add classes to del button
    deleteBtn.className = 'btn btn-danger btn-sm float-right delete';

    // Append text node
    deleteBtn.appendChild(document.createTextNode('X'));


    //Append button to li
    li.appendChild(deleteBtn);

    //Append li to list
    itemList.appendChild(li);


  
}

//Remove item
function removeItem(e){
    if(e.target.classList.contains('delete')){
       if(confirm('Are You Sure?')){
           var li = e.target.parentElement;
           itemList.removeChild(li);
          
       
       }
    }
}


//Filter Item
var filter = document.getElementById('filter');
filter.addEventListener('keyup', filterItems);

function filterItems(e){
    //convert text to lowercase
    var text = e.target.value.toLowerCase();
    //Get list
    var items =itemList.getElementsByClassName('search');
    //Convert to Array
    Array.from(items).forEach(function(item){
       var itemName = item.firstChild.textContent;
       if(itemName.toLowerCase().indexOf(text)!= -1){
           item.parentNode.parentNode.style.display = 'block';
       } else{
           item.parentNode.parentNode.style.display ='none';
       }

    });
}
