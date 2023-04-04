doctype html
head
  meta(charset='UTF-8')
  meta(http-equiv='X-UA-Compatible' content='IE=edge')
  link(rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous')
  meta(name='viewport' content='width=device-width, initial-scale=1.0')
  title Document
.container
  form#contact_form.well.form-horizontal( name="login" action='/login' method='post')
    fieldset
      // Form Name
      legend
        center
          h2
            b Login
      br
      // Text input
      .form-group
        label.col-md-4.control-label Unique Number
        .col-md-4.inputGroupContainer
          .input-group
            span.input-group-addon
              i.glyphicon.glyphicon-user
            input.form-control(name='username' type='text')
      // Text input
      .form-group
        label.col-md-4.control-label Password
        .col-md-4.inputGroupContainer
          .input-group
            span.input-group-addon
              i.glyphicon.glyphicon-user
            input.form-control(name='password' type='password')
      
      
      // Select Basic
      // Success message
      // <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
      // Button
      .form-group
        label.col-md-4.control-label
        .col-md-4
          br
          button.btn.btn-warning(type='submit') SUBMIT 
            

script(src='https://code.jquery.com/jquery-3.2.1.slim.min.js' integrity='sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js' integrity='sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js' integrity='sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl' crossorigin='anonymous')

