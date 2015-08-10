{% extends 'layout.swig' %}
 
{% block content %}
<!-- This is my Dropdown Menu -->
  <div class="nav">
  <div class="dropdown">
    <button class="btn btn-primary btn-lg dropdown-toggle" id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Home
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" aria-labelledby="dLabel">
        <li><a href="#">Home</a></li>
        <li><a href="#">Store</a></li>
        <li><a href="#">Donate</a></li>
        <li><a href="#">Abut</a></li>
      </ul>
    </div>
  </div>
    <a href="#" class="pull-left"><img src="/Codeup-logo.png"></a>

<div class="jumbotron">
  <div class="container">
    <ul class="pull-right">
      <h1>#CodeUpforCancer</h1>
        <p>The more you contribute to an open source projects, the more your partner donates.</p>
          <a href="register.swig" <button class="btn btn-github btn-lg" href="#"role="button">Get Involved</button>  
<!-- Button trigger modal -->
          <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Learn More</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Learn More</h4>
      </div>
      <div class="modal-body">
        Codeupforcancer is a project made by Ian Castillo in July and August of 2015. The idea is to raise donations for cancer oriented organizations like Dance Marathon and BeatCancerToday.org. A developer teams up with another person or company and when the developer reaches a milestone during a git contribution, the partner will automatically deposit funds on behalf of the developer. 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</div>
</div> 
<!-- This is my tables and lists for top contributors/projects-->
  <div class="sign-up">
    <div class="container">
      <div class="row">
        <div class="six columns">
          <h2>Top Contributors</h2>
            <p>This is a paragraph where a list of the top five contributors will be shown.</p>

<div class="bs-example">
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>GitHub User Name</th>
      </tr>
    </thead>
 <tbody>
  <tr>
    <td>1</td>
    <td>Steven</td>
    <td>Davis</td>
    <td>Sgdavis1</td>
  </tr>
<tr>
  <td>2</td>
  <td>Sarah </td>
  <td>Binder</td>
  <td>Saraebinder</td>
</tr>
  <tr>
    <td>3</td>
    <td>JoAnne</td>
    <td>SeeBerger</td>
    <td>jpseeberger</td>
  </tr>
  </tbody>
 </table>
</div>

<button type="button" class="btn btn-primary">View More</button>
  </div>
    <div class ="six columns">
      <h2>Top Projects</h2>
        <p>This paragraph will show the projects that have the most people contributing.</p>
          <div class="bs-example">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Star</th>
                  <th>Project</th>
                  <th>Progress</th>
                </tr>
              </thead>
<tbody>
  <tr>
    <td>1</td>
    <td>5</td>
    <td>SymCode</td>
    <td>
     <div class="progress" data-percent="72">
     </div>
  </td>
  </tr>
  <tr>
    <td>2</td>
    <td>1 </td>
    <td></td>
    <td>
      <div class="progress" data-percent="15">
<!-- <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="10" aria-valuemax="100" style="min-width: 10%;">15% -->
     </div>
    </td>
  </tr>
  <tr>
    <td>3</td>
    <td>1</td>
    <td></td>
    <td>
      <div class="progress" data-percent="15">
  <!-- <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="10" aria-valuemax="100" style="min-width: 10em;">45% -->
     </div>
    </td>
  </tr>
</tbody>
</table>
</div>
  <button type="button" class="btn btn-primary">View More</button>
</div>
</div>
</div>

{% endblock %}