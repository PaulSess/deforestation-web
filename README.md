<html>
<head>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
</head>
  <%= render :partial => 'shared/navbar' %>
<body>
  <section id="about-sec-1">
    <div id="welcome-header">
      <h1 class="hidden">Welcome to Deforestation</h1>
      <h3 class="hidden">The platform to help the amazon. We track slash and burn and other illegal activities within your area to support your conservation work.</h3>
      <%= link_to  projects_index_path do %>
        <button id="get-started-btn"><div id="get-started-btn-txt">Get Started!</div></button>
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
  <%= render :partial => 'shared/footer' %>
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
