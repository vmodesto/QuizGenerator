Rails.application.routes.draw do
  get '/quizzes/:id', to: 'quizzes#show'
  post '/quizzes', to: 'quizzes#create'
  delete '/quizzes/:id', to: 'quizzes#destroy'
  put '/quizzes/:id', to: 'quizzes#update'
  get 'quiz_lists/:id', to: 'quiz_lists#show'
  get 'quizzes_of_list/:id', to: 'quiz_lists#quizzes_of_list'
  post '/quiz_lists', to: 'quiz_lists#create'
end
