import React from 'react'
import ReactDOM from 'react-dom'
import PayTypeSelector from 'PayTypeSelector'

document.addEventListener('DomContentLoaded', function(){
   var element = document.getElementById("pay-type-component");
   ReactDOM.render(<PayTypeSelector />, element);
});