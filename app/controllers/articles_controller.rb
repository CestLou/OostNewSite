class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find_by_id(params[:id])
	end

	def new

	end

	def edit

	end

	def create
		@article = Article.new(article_params)
		if
			@article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def update

	end

	def destroy

	end


	private
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
