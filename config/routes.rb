Rails.application.routes.draw do
  get "/controlador", to: "controlador#index"
  get "/resultado", to: "controlador#resultado"
end
