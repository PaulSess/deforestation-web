<html>
<head>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
</head>

 <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#7fba72;">
        <div class="container-fluid">
          <%= link_to root_path do %>
              <%= image_tag("deforestation-word-logo.png", {:style => "width:200px; filter: drop-shadow(3px 3px 5px #303E34);"}) %>
          <% end %>
            <%# <a href="#" class="navbar-brand">Brand</a> %>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav">
                    <!-- <%# <a href="" class="nav-item nav-link active">Home</a> %>
                    <%# <a href="#" class="nav-item nav-link">Profile</a> %> -->
                    <div class="nav-item dropdown">
                        <%# <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Messages</a> %>
                        <div class="dropdown-menu">
                            <!-- <%# <a href="#" class="dropdown-item">Inbox</a> %>
                            <%# <a href="#" class="dropdown-item">Sent</a> %>
                            <%# <a href="#" class="dropdown-item">Drafts</a> %> -->
                        </div>
                    </div>
                </div>
                <!-- <%# <form class="d-flex">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <button type="button" class="btn btn-secondary"><i class="bi-search"></i></button>
                    </div>
                </form> %> -->
                <div class="navbar-nav">
                    <a href="#" class="nav-item nav-link">english</a>
                    <a href="#" class="nav-item nav-link dissapear-in-collapse">|</a>
                    <a href="#" class="nav-item nav-link">espaniol</a>
                    <!-- <%# <%= link_to(@new_user_session_path) do %>
                      <%# <i style="margin-left:10px;margin-right:3px;" class="fa-solid fa-right-to-bracket d-flex"><p>Log In</p></i> %>
                    <%# <% end %>
                    <%# <%= link_to "Log Out", destroy_user_session_path, data: {turbo_method: :delete}, class:"dropdown-item" %> -->
                    <!-- <%# <a href="new_user_session_path" class="nav-item nav-link"><i style="margin-left:10px;margin-right:3px;" class="fa-solid fa-right-to-bracket"></i>Log In</a> %> -->
                    <a class="nav-item nav-link" href="<%= new_user_session_path(@devise)%>"><i style="margin-left:10px;margin-right:3px;" class="fa-solid fa-right-to-bracket"></i>Log In</a>
                </div>
            </div>
        </div>
    </nav>
<style>
@media only screen and (max-width: 990px) {
  .dissapear-in-collapse {
    display: none;
  }
}
html{
  background-color: black;
}
/* not connected to the html file  */
@media only screen and (max-width: 990px) {
  .dissapear-in-collapse {
    display: none;
  }
}
.navbar{
  position: -webkit-sticky; /* Safari */
  position: sticky;
  top: 0;
  z-index: 1100;
}
</style>

<body>
  <section id="about-sec-1">
    <div id="welcome-header">
      <h1 class="hidden">Welcome to Deforestation</h1>
      <h3 class="hidden">The platform to help the amazon. We track slash and burn and other illegal activities within your area to support your conservation work.</h3>
      <%= link_to  projects_index_path do %>
        <button href="./app/views/projects/index.html.erb" id="get-started-btn"><div id="get-started-btn-txt">Get Started!</div></button>
      <% end %>
    </div>
    <%= image_tag("lingchor-cut.jpeg", class:"about-header-img") %>
    <div class="custom-shape-divider-bottom-1676245033">
      <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
      </svg>
    </div>
  </section>



  <section id="about-sec-2">
    <div class="about-card">
      <%= image_tag("satellite-cut.jpg", class:"hidden card-img sat-img") %>
      <p class="hidden">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae, rerum voluptates. Optio incidunt numquam nam minima quibusdam tenetur quam beatae odio corrupti omnis, ad deserunt ea officia ipsum voluptate. Repellendus.</p>
    </div>
    <script>
      const observer = new IntersectionObserver((entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('show');
        }
      });
    });
      const hiddenElements = document.querySelectorAll('.hidden')
      hiddenElements.forEach((el) => observer.observe(el));
      const startbutton = document.getElementById('get-started-btn')
      const startbuttonTXT = document.getElementById('get-started-btn-txt')
      window.addEventListener("load", (event) => {
        startbutton.classList.add('animate__animated', 'animate__backInUp', 'animate__delay-1s')
        startbuttonTXT.classList.add('animate__animated', 'animate__headShake', 'animate__delay-5s')
      });
    </script>
    <div class="about-card">
      <%= image_tag("hossein-saberi-fire.jpg", class:"hidden card-img sat-img") %>
      <p class="hidden">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae, rerum voluptates. Optio incidunt numquam nam minima quibusdam tenetur quam beatae odio corrupti omnis, ad deserunt ea officia ipsum voluptate. Repellendus.</p>
    </div>
    <div class="about-card">
      <%= image_tag("berend-leupen-monkey.jpg", class:"hidden card-img sat-img") %>
      <p class="hidden">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Recusandae, rerum voluptates. Optio incidunt numquam nam minima quibusdam tenetur quam beatae odio corrupti omnis, ad deserunt ea officia ipsum voluptate. Repellendus.</p>
    </div>
  </section>
  <section id="about-sec-3">
    <%= image_tag("donald-giannatti-sat-cut.jpg", class:"about-header-img") %>
    <div class="custom-shape-divider-top-1676245463">
      <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
      </svg>
    </div>

  </section>

</body>

<footer>
  <div class="container">
    <div class="row h-75">
      <div class="col">
        <%= link_to root_path, { :style => "border-bottom: solid 1px white; padding-bottom: 34px;" } do %>
          <%= image_tag("deforestation-word-logo.png", { :class => "footer-logo" }) %>
        <% end %>
      </div>
      <div class="col">
        <a href="#" data-bs-toggle="modal" data-bs-target="#ContactModal"><h2 class="contact-us">Contact us</h2></a>
        <a href="#" data-bs-toggle="modal" data-bs-target="#ContactModal"><p id="contact-text">If there are any issues appearing, feel always free to reach out to us and tell us about the problem.<br>
        <span style="font-weight:bold; padding: 5px 10px; font-size: 18px;">Contact us</span><i class="fa-solid fa-envelope"></i></p></a>
      </div>
    </div>
    <div class="row h-25">
      <div class="col">
        Here will be more information in the footer Lorem ipsum dolor sit amet consectetur adipisicptatem earum accusamus culpa exercitationem obcaecati, nobis eligendi, similique. @
      </div>
    </div>
  </div>

</footer>


<div class="modal fade" id="ContactModal" tabindex="-1" data-bs-keyboard="false" data-bs-backdrop="static" role="dialog" aria-labelledby="ContactModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header ContactModalBackground">
        <h3 class="modal-title" id="ContactModalLabel">Contact form</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ContactModalBackground">
        <form
          action="https://formspree.io/f/xbjegjaz"
          method="POST"
          enctype="multipart/form-data"
        >
          <label class="d-block">
            Your email:<br>
            <input type="email" name="email">
          </label>
          <label style="width:100%;">
            Your message:<br>
            <textarea name="message"></textarea>
          </label>
          <label>
            Feel free to add a screenshot or anything that might helps:
            <input type="file" name="upload">
          </label>
          <button class="modal-send-button" type="submit">Send</button>
        </form>
      </div>
      <div class="modal-footer">
        <h5>Thank you for your message!</h5>
      </div>
    </div>
  </div>
</div>
<style>
footer{
  left: 0 ; right: 0; bottom: 0;
  width: 100%;
  height: 300px;
  /* background-color: #425c75; */
/* background: rgb(22,31,40);
background: linear-gradient(180deg, rgba(22,31,40,1) 0%, rgba(31,43,55,1) 6%, rgba(66,92,117,1) 37%);   */
  background: rgb(22,31,40);
  background: linear-gradient(180deg, rgba(22,31,40,1) 0%, rgba(31,43,55,1) 2%, rgba(66,92,117,1) 21%);
}
.footer-logo{
  width: 300px;
  filter: drop-shadow(3px 3px 5px #303E34);
  margin: 10px auto;
}
.contact-us{
  color: white;
  margin: 20px auto;
  width: fit-content;
}
.col a{
    text-decoration: none;
}
#contact-text{
  color: white;
  /* width: 80%; */
  margin: 20px auto;
  text-align: center;
  width: 70%;
}
    /* modal styles */
.modal{
  margin-top: 55px;
}
.ContactModalBackground{
  background-color:#7D7D7D;
}
label{
  font-weight: bold;
  color: white;
}
input, textarea{
  background-color: #F9F0E1;
}
textarea{
  width: 80%;
  height: 180px;
}
.modal-footer{
    background-color:#7D7D7D;
}
.modal-send-button{
  width: fit-content;
  padding: 5px 25px;
  border-radius: 2px;
  float: right;
}
</style>

  <%= javascript_include_tag "about", "data-turbo-track": "reload", defer: true %>
</html>


<style>
#about-sec-1{
  height: fit-content;
  position: relative;
}
.about-header-img{
  width: 100%;

}
#welcome-header{
  display: flex;
  justify-content: center;
}
#welcome-header h1{
  position: absolute;
  color: #F9F0E1;
  width: fit-content;
  margin: 60px auto;
  filter: drop-shadow(3px 3px 5px #303E34);
  font-family: 'Bebas Neue', cursive;
  font-size: 50px;
}
#welcome-header h3{
  position: absolute;
  color: #F9F0E1;
  width: 70%;
  margin: 200px auto;
  filter: drop-shadow(3px 3px 5px #303E34);
  font-family: 'Poppins', sans-serif;
  text-align: center;
  transition-delay: 200ms;
  font-size: 1.8rem;
}
#get-started-btn{
  position: absolute;
  top: 60%;
  left: 43%;
  border-radius: 3px;
  font-family: 'Bebas Neue', cursive;
  font-size: 1.7rem;
  padding: 20px 50px;
  background-color: #F9F0E1;
}
#get-started-btn:active{
box-shadow: inset 0px 0px 4px 4px rgb(83, 83, 83);

}
#about-sec-2{
  display: flex;
  justify-content: space-around;
  margin: 95px 20px;
}
@media only screen and (max-width: 740px) {
  #about-sec-2 {
    display:block;
    margin: 40px 20px;
  }
  .about-card{
    margin: 40px auto;
  }
}
#about-sec-3{
  position: relative;
}
.sat-img{
  width: 200px;
  border-radius: 50%;
  margin-bottom: 40px;
}
.about-card{
  display: flex;
  flex-direction: column;
  align-items: center;
}
.about-card p{
  width: 80%;
  text-align: center;
  font-family: 'Poppins', sans-serif;
  font-weight: 400;
}


/* scolling effect  */
.hidden{
  opacity: 0;
  filter: blur(5px);
  transform: translateX(-100%);
}
@media (prefers-reduced-motion: no-preference) {
  .hidden {
    transition: all 1s;
  }
}
.show{
  opacity: 1;
  filter: blur(0);
  transform: translateX(0);
}
.card-img:nth-child(1){
  transition-delay: 0ms;
}
.card-img:nth-child(2){
  transition-delay: 400ms;
}
.card-img:nth-child(3){
  transition-delay: 1800ms;
}

.about-card:nth-child(1){
  transition-delay: 100ms;
}
.about-card p:nth-child(2){
  transition-delay: 300ms;
}
.about-card p:nth-child(3){
  transition-delay: 5000ms;
}


/* wave  */
.custom-shape-divider-bottom-1676245033 {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    overflow: hidden;
    line-height: 0;
}

.custom-shape-divider-bottom-1676245033 svg {
    position: relative;
    display: block;
    width: calc(190% + 1.3px);
    height: 130px;
}

.custom-shape-divider-bottom-1676245033 .shape-fill {
    fill: #FFFF;
}
/* wave 2  */
.custom-shape-divider-top-1676245463 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    overflow: hidden;
    line-height: 0;
    transform: rotate(180deg);
}

.custom-shape-divider-top-1676245463 svg {
    position: relative;
    display: block;
    width: calc(180% + 1.3px);
    height: 130px;
}

.custom-shape-divider-top-1676245463 .shape-fill {
    fill: #FFFF;
}

</style>
