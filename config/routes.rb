Rails.application.routes.draw do
  get '/persons' => 'persons#index'
  get '/cats' => 'cats#index'
  get '/dogs' => 'dogs#index'
  get '/teachers' => 'teachers#index'
  get '/students' => 'students#index'
end