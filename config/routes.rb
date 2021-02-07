Rails.application.routes.draw do

  resources :students, only: [:index,:new,:create,:show,:edit]
  patch 'student/:id/update', to: 'students#update', as: 'update_student'

  resources :student_classes, only: [:index,:new,:create,:show,:edit]
  patch 'student_class/:id/update', to: 'student_classes#update', as: 'update_student_class'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
