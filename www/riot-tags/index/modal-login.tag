<modal-login>
    <div class="krowdspace-modal modal fade" id="modal-login" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2 shadow user-modal">
                            <div class="text-left modal-container">
                                <p class="modal-heading">Krowdspace Login</p>
                            </div>
                            <form id="CustomerLoginForm" class="form-vertical no-gutter">
                                <div>
                                    <input type="text" class="form-control" placeholder="Username or Email Address" id="CustomerEmail" autocorrect="off" autocapitalize="off">
                                </div>
                                <div class="col-xs-8 form-group">
                                    <input type="password" class="form-control" placeholder="Password" value="" id="CustomerPassword">
                                </div>
                                <div class="col-xs-4 form-group" style="padding-left:10px;">
                                    <button class="button-login" type="submit">Login</button>
                                </div>
                                <div class="col-xs-6 check-terms checkbox text-left" style="margin:0px;">
                                    <label>
                                    <input type="checkbox">Remember Me
                                    </label>
                                </div>
                                <div class="col-xs-6 text-right">
                
                                </div>
                            </form>
                        </div>
                        <div class="col-md-1 clearfix hidden-sm"></div>
                        <div class="col-lg-5 col-md-6 shadow user-modal hidden-sm hidden-xs">
                            <div class="text-left register-title">
                                <p class="modal-heading">Krowdspace Register</p>
                            </div>
                            <p class="text-muted register-text">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p>
                            <form class="form-vertical" id="commentForm" onsubmit={ submit2 }>
                                <div class="form-group">
                                    <input type="text" name="FNAME2" id="FNAME2" class="form-control" placeholder="First Name*" required aria-required="true" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="LNAME2" id="LNAME2" class="form-control" placeholder="Last Name*" required aria-required="true" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="EMAIL2" id="EMAIL2" class="form-control" placeholder="Email Address*" required aria-required="true" aria-invalid="true">
                                </div>
                                <!-- <div class="form-group">
                                    <input type="firstname" class="form-control" placeholder="New Password*">
                                    </div> -->
                                <div class="form-group">
                                    <input type="text" name="KSUSER2" id="KSUSER2" class="form-control" placeholder="Kickstarter Username (Optional)">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="IGUSER2" id="IGUSER2" class="form-control" placeholder="Indiegogo Username (Optional)">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="PVALID2" id="PVALID2" >
                                        <option disabled="disabled" selected="selected">Submit your own project?</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                                <div class="check-terms checkbox text-left">
                                    <label>
                                    <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="/?service-terms=1" data-toggle="modal" class="modal-link">Krowdspace terms</a>
                                    </label>
                                </div>
                                <div class="register-btn-box">
                                    <input type="submit" class="button-login" name="submit" value="Register">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        submit2(e){
          e.preventDefault();
          var formArr = {
            FNAME: $("#FNAME2").val(),
            LNAME: $("#LNAME2").val(),
            EMAIL: $("#EMAIL2").val(),
            KSUSER: $("#KSUSER2").val(),
            IGUSER: $("#IGUSER2").val(),
            PVALID: $("#PVALID2").val()
          };
          $.ajax({
             contentType:"application/json",
             url: 'https://api.krowdspace.com/register/email_list',
             type: 'POST',
             data: JSON.stringify(formArr),
             success: function(data) {
                if(!data.success)
                window.location.replace("/?success=1");
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
               console.log(XMLHttpRequest.responseText);
               }
          });
          }
    </script>
</modal-login>
