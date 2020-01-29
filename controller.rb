require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry-byebug')
require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')


get '/hogwarts/students' do
  @students = Student.all()
  erb(:student)
end

get '/hogwarts/new' do
  @houses = House.all()
  erb(:new)
end

post '/hogwarts' do
  @students = Student.new(params)
  @students.save()
erb(:create)
end
