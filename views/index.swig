{% extends 'layout.swig' %}
 
{% block content %}
<!-- logo -->

<!-- This is my Dropdown Menu -->
<div class="jumbotron">
  <div class="containe">
    <a href="#"> <img alt="FUTURE LOGO" src="/">
      <ul class="pull-right">
        <h1>#CodeUpforCharity</h1>
        <p>The more you contribute to an open source projects, the more your partner donates.</p>
          <a href="/register" <button class="btn btn-danger btn-lg" role="button">Get Involved</a>  
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
        CodeUpforCharity is a project started by Ian Castillo in July of 2015. The goal is to raise donations for nonprofits organizations like Dance Marathon and BeatCancerToday.org and contribute to their web development.

        A developer teams up with a person or company and when the developer reaches a milestone during a git contribution, the donor will automatically deposit funds on behalf of the developer. 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<div class = "container">
<!-- This is my tables and lists for top contributors/projects-->
    <div class ="six columns">
      <h2>Top Projects</h2>
          <div class="bs-example">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Stars</th>
                  <th>Project</th>
                  <th>Progress</th>
                </tr>
              </thead>
    </div>
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
    <td>CodeUP</td>
    <td>
      <div class="progress" data-percent="15">
<!-- <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="10" aria-valuemax="100" style="min-width: 10%;">15% -->
     </div>
    </td>
  </tr>
  <tr>
    <td>3</td>
    <td>1</td>
    <td>Mentor Network</td>
    <td>
      <div class="progress" data-percent="15">
  <!-- <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="10" aria-valuemax="100" style="min-width: 10em;">45% -->
     </div>
    </td>
  </tr>
</tbody>
</table>

</div>
</div>
</div>

{% endblock %}