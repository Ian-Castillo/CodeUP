{% extends 'layout.swig' %}

{% block content %}
<form class="container" method="POST">

<div class ="container-fluid">
  <div class = "container">
    <h2 class="list-group-item-heading">
        Photo Upload
    </h2>
  </div>
</div>


<div class="row">
  <div class="panel-heading resume-heading">
    <div class="row">
      <div class="col-lg-12">
        <div class="col-xs-12 col-sm-4">
          <figure>
            <img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
          </figure>
        </div>
      </div>
    </div>  
  </div>
</div> 

<div class="container-fluid">
    <div class="container-page">                
      <div class="col-md-6">
        <div class="form-group col-lg-12">
            <label>UserName</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Email address as your Username">
        </div>

        <div class="form-group col-lg-12">
            <label> Full Name </label>
            <input type="" class="form-control" name="name" id="" placeholder="Full Name">
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
    </div>

</div>

<button type="submit" class="btn btn-primary">Register</button>
</form>

{% endblock %}
