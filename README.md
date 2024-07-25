# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<%= form_with(model: team,class: "shadow p-3 mb-3 bg-light rounded") do |form| %>
    <div class="mb-3">
        <%= form.label :name,class:"col-2 form-label" %>
        <%= form.text_field :name, class: "form-control shadow rounded",placeholder: "Enter team name" %>
    </div>
    <div class="mb-3">
        <%= form.label :country,class:"col-2 form-label" %>
        <%= form.text_field :country, class: "form-control shadow rounded",placeholder: "Enter country name" %>
    </div>
    <div class="mb-3">
        <%= form.label :founded ,"Founded",class:"col-2 form-label"%>
        <%= form.number_field :founded, class: "form-control shadow rounded",placeholder: "Enter founded year" %>
    </div>
    <div class="mb-3">
        <%= form.label :description,class:"col-2 form-label" %>
        <%= form.text_field :description, class: "form-control shadow rounded",placeholder: "Enter description " %>
    </div>
  <div>
    <%= form.submit "Create team",class:"btn btn-outline-primary"  %>
  </div>
<% end %>
</div>
</div>
</div>


