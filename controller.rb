require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/house')
require_relative('./models/student')
also_reload('./models/*')


get '/' do
  erb(:home)
end

get '/hogwarts' do
  @students = Student.all()
  erb(:show)
end

get '/hogwarts/new' do
  @houses = House.all()
  erb(:new)
end

post '/hogwarts' do
  student = Student.new(params)
  student.save()
  redirect(:'/hogwarts')
end

get '/hogwarts/:id/edit' do
  @student = Student.find_by_id(params[:id])
  @house = House.all()
  erb(:edit)
end


get '/hogwarts/:id' do
  @student = Student.find_by_id(params[:id])
  erb(:show)
end

post  '/hogwarts/:id/delete' do
  student_id = params[:id]
  @student=Student.find_by_id(student_id)
  @student.delete()

  erb(:sussessful)
end
# Houses

get '/houses' do
  @house = House.all()
  erb(:index)
end
