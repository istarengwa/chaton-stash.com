// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "../stylesheets/application" 


// Importation de Rails UJS pour gérer les actions `method: :delete`
import Rails from "@rails/ujs";
Rails.start(); // Active les fonctionnalités d'UJS