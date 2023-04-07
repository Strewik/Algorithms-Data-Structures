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

// * Passport middleware
app.use(passport.initialize());
app.use(passport.session());
passport.use(User.createStrategy());
passport.serializeUser(User.serializeUser());
passport.deserializeUser(User.deserializeUser());






//05-04-2022
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
            b Agricultural Officer Dashboard
      br
      br
      br
      br
      form(method="POST" action='/logout')
        button.btn(type= 'submit' width='100px') Signout
  
      
      // Button
      //.form-group
        label.col-md-4.control-label
        .col-md-4
          br
          button.btn.btn-warning(type='submit') SUBMIT 
            

script(src='https://code.jquery.com/jquery-3.2.1.slim.min.js' integrity='sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js' integrity='sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js' integrity='sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl' crossorigin='anonymous')







//07-04-2023
doctype html
head
  meta(charset='UTF-8')
  meta(http-equiv='X-UA-Compatible' content='IE=edge')
  link(rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous')
  meta(name='viewport' content='width=device-width, initial-scale=1.0')
  title Document
.container
  fieldset
    // Form Name
    legend
      center
        h2
          b Farmer One Dashboard
    br
      
    .container

      h3    
        //- | Total fess paid: #{total.totalFees}
      fieldset 
        h5  
          | List of Urban Farmers in Ward #{farmerWard}
          br
          br
          | Number of Urban Farmers in ward #{farmerWard}: #{activeFarmers}
          br
        table.table
            thead.thead-dark
                tr
                    th(scope='col') Name
                    //- th(scope='col') Lastname
                    th(scope='col') Unique ID
                    th(scope='col') Dob
                    th(scope='col') Gender
                    th(scope='col') Email
                    th(scope='col') Phone number
                    th(scope='col') Address
                    th(scope='col') Ward
                    th(scope='col') Action
                    th(scope='col') Action
            tbody
            if urbanFarmers.length 
                each urbanFarmer in urbanFarmers
                    tr
                        td #{urbanFarmer.firstname} #{urbanFarmer.lastname}
                        td #{urbanFarmer.username}
                        td #{urbanFarmer.dob}
                        td #{urbanFarmer.gender}
                        td #{urbanFarmer.email}
                        td #{urbanFarmer.phonenumber}
                        td #{urbanFarmer.address}
                        td #{urbanFarmer.ward}
                        td 
                        //-     form(method='post', action='/students/delete')
                        //-         input(type='hidden', name="id", value=student._id)
                        //-         button.btn.btn-danger(type='submit') Delete

                        //- td        
                        //-     a.btn.btn-dark.btn-block(href='/edit_student/'+student._id) Edit
            else 
                p 
                  h4 There are no Urban Farmers registered yet


    

script(src='https://code.jquery.com/jquery-3.2.1.slim.min.js' integrity='sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js' integrity='sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q' crossorigin='anonymous')
script(src='https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js' integrity='sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl' crossorigin='anonymous')




