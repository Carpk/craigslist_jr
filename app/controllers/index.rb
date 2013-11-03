get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

get '/:category_id' do
  @category = Category.find(params[:category_id].to_i)
  @posts = Post.where(:category_id => params[:category_id].to_i)
  erb :posts
end

get '/:category_id/:post_id' do
  @category = Category.find(params[:category_id].to_i)
  @post = Post.find(params[:post_id].to_i)
  erb :post_details
end

get '/create' do

end