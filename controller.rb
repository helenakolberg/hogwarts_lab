require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student')
also_reload('./models/*')

get '/students' do
    @students = Student.find_all()
    erb(:index)
end