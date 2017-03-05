<home-header>
    <header title="Person typing on a computer while launching their crowdfunding project. Launch your project with Krowdspace!">
        <div class="container-header">
            <div class="row flex header-flow">
                <div class="col-lg-8 col-md-12 header-left">
                    <div class="containter-top-header text-left">
                        <h1 class="header-title hidden-xs">Back the Project not <br>the Platform</h1>
                        <p>At Krowdspace we bring a unified platform showcasing crowdfunding projects from the top funding sites with minimal branding.</p>
                        <p>When you submit a project to Krowdspace and offer an extra reward to our community you will gain access to our huge network of super backers gathered from the top crowdfunding sites.</p>
                        <a href="#modal-error" data-toggle="modal" class="btn btn-xl btn-landing hidden-xs">View Projects</a>
                    </div>
                </div>
                <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs">
                    <div class="col-sm-12 text-left containter-right-box">
                        <p class="text-left landing-text">Get extra rewards for backing the same projects you already have been.</p>
                        <form class="form-vertical" id="commentForm" onsubmit={ submit }>
                            <div class="form-group">
                                <input type="text" name="FNAME" id="FNAME" class="form-control" placeholder="First Name*" required="required" aria-required="true" aria-invalid="true">
                            </div>
                            <div class="form-group">
                                <input type="text" name="LNAME" id="LNAME" class="form-control" placeholder="Last Name*" required="required" aria-required="true" aria-invalid="true">
                            </div>
                            <div class="form-group">
                                <input type="email" name="EMAIL" id="EMAIL" class="form-control" placeholder="Email Address*" required="required" aria-required="true" aria-invalid="true">
                            </div>
                            <!-- <div class="form-group">
                                <input type="firstname" class="form-control" placeholder="New Password*">
                                </div> -->
                            <div class="form-group">
                                <input type="text" name="KSUSER" id="KSUSER" class="form-control" placeholder="Kickstarter Username (Optional)">
                            </div>
                            <div class="form-group">
                                <input type="text" name="IGUSER" id="IGUSER" class="form-control" placeholder="Indiegogo Username (Optional)">
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="PVALID" id="PVALID" required="required" aria-required="true">
                                    <option disabled="disabled" selected="selected">Submit your own project?</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="check-terms checkbox">
                                <label>
                                <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a>
                                </label>
                            </div>
                            <div>
                                <input type="submit" class="btn btn-xl landing-submit" name="submit" value="Join Krowdspace">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <script>
        submit(e){
        e.preventDefault();
        var formArr = {
          FNAME: $("#FNAME").val(),
          LNAME: $("#LNAME").val(),
          EMAIL: $("#EMAIL").val(),
          KSUSER: $("#KSUSER").val(),
          IGUSER: $("#IGUSER").val(),
          PVALID: $("#PVALID").val()
        };
        $.ajax({
           contentType:"application/json",
           url: 'http://api.krowdspace.com/register/email_list',
           type: 'POST',
           data: JSON.stringify(formArr),
           success: function(data) {
                if(!data.success)
                window.location.replace("/?success=1");
           },
           error: function(XMLHttpRequest, textStatus, errorThrown) {
              console.log(XMLHttpRequest + "textStatus"+textStatus + "errorThrown+ "errorThrown)
              }
        });
        }
    </script>
</home-header>
