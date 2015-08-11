{% extends 'layout.swig' %}

{% block content %}

<div class="container-fluid">
    <form class="container" method="POST">
        <div class="container-page">                
            <div class="col-md-6">
                <h3 class="dark-grey">Registration</h3>
                
                <div class="form-group col-lg-12">
                    <label>UserName (Email)</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Email address as your Username">
                </div>
                
                <div class="form-group col-lg-6">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>
                
                <div class="form-group col-lg-6">
                    <label>Repeat Password</label>
                    <input type="password" class="form-control" name="confirm-password" id="confirm-password">
                </div>
                                
                
                <div class="col-sm-6">
                    <input type="checkbox" class="checkbox" />Donor
                </div>

                <div class="col-sm-6">
                    <input type="checkbox" class="checkbox" />Both
                </div>

                <div class="col-sm-6">
                    <input type="checkbox" class="checkbox" />Coder
                </div>              
            
            </div>
        
            <div class="col-md-6">
                <h3 class="dark-grey">Terms and Conditions</h3>
                <p>
                    By clicking on "Register" you agree to The Company's' Terms and Conditions
                </p>
                
                
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </div>
    </form>
</div>

{% endblock %}
