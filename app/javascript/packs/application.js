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

function validateFiles(inputFile) {
    var extErrorMessage = "File bạn muốn tải lên không đúng định dạng!";
    var allowedExtension = ["jpg", "jpeg", "png", "gif"];
  
    var extName;
    var extError = false;
  
    $.each(inputFile.files, function() {
      extName = this.name.split('.').pop();
      if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
    });
    if (extError) {
      window.alert(extErrorMessage);
      $(inputFile).val('');
    };
  }