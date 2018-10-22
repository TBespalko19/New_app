class ArticlesController < ApplicationController
# дoбавить action new
def new
end

def create
	render plain: params[:article].inspect
end

end
