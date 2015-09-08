{% extends 'layout.swig' %}

{% block content %}

 

<form class="container" method="POST">
    <div class="row">
        <h2 class="list-group-item-heading">Photo Upload</h2>
        <figure>
            <img class="img-circle img-responsive" id="img-upload" alt="upload an image" src="http://placehold.it/300x300">
            <input type="file" id="img-upload" name="img">
        </figure>
    </div>
    <div class="row">
        <label> Full Name* </label>
        <div class="six columns">
            <input type="text" class="u-full-width" id="firstName" placeholder="First" required>
        </div>
        <div class="six columns">
            <input type="text" class="u-full-width" id="lastName" placeholder="Last" required>
        </div>
    </div>
    <div class="row">
    <label>Email* </label>
        <div class="six columns">
            <input type="email" class="form-control" name="email" id="email" placeholder="me@example.co" required>
        </div>
        <div class="six columns">
            <p>Your email address will be your username</p>
        </div>
    </div>
    <div class="row">
        <label>Password* </label>
        <div class="six columns">
            <input type="password" class="u-full-width" name="password" id="password" placeholder="password" required>
        </div>
        <div class="six columns">   
            <input type="password" class="form-control" name="confirm-password" id="confirm-password" placeholder="repeat password" required>
            <!--add error handling for if passwords do not match-->
        </div>
    </div>
    <div class="row">
        <label>I am a...*</label> <!--make it so they can only choose one-->
        <div class="three columns">                 
            <input type="checkbox" name="usertype" value="donor">Donor</br>
        </div>
        <div class="three columns">
            <input type="checkbox" name="usertype" value="coder">Coder</br>
        </div>
        <div class="three columns">
            <input type="checkbox" name="usertype" value="both">Both</br>
        </div>
    </div>
<button type="submit" class="btn btn-primary">Register</button>
</form>

{% endblock %}
