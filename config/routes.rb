Rails.application.routes.draw do
	root to: 'siswa#index', as: 'siswa_index'
	get 'siswa/index'
	get 'siswa/show'
	get '/add', to: 'siswa#add', as: 'siswa_add'
	post '/add/create', to: 'siswa#kirim', as: 'siswa_kirim'
	get 'siswa/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
