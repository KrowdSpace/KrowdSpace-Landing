<home-header>
    <header alt="Back the project, not the platform. Launch your project with Krowdspace today!">
        <div class="container-header">
            <div class="row">
                <div class="col-lg-8 col-md-12 header-left text-left">
                        <h1 class="header-title hidden-xs">Back the Project, not the Platform</h1>
                        <div class="container-top-header">
                            <p>At Krowdspace, our goal is to unify the crowdfunding community. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace offers a platform to discover the latest projects from top crowdfunding sites all in one place.</p>
                            <p>Krowdspace members will receive exclusive rewards for backing projects and project owners gain access to our easy to use promotional tools to take their campaigns to the next level.</p>
                            <a href="#modal-error" data-toggle="modal" class="btn btn-xl btn-landing">Submit a Project</a>
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
</home-header>
