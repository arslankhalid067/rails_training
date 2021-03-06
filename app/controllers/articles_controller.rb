class ArticlesController < ApplicationController
  
    # def default_url_options
    #     { locale: I18n.locale, name: "Hello" }
    #   end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to articles_path, :notice=> "Post is saved"
      else
        render "new"
      end
    end
    def show
      @article=Article.find(params[:id])
      
    end
    
    def edit
        @article=Article.find(params[:id])
    end
    def update
        @article=Article.find(params[:id])
        
        if @article.update_attributes(article_params)
            redirect_to articles_path, :notice=> "Post Updated"
        else
            render "edit"
        end
    end
    def destroy
        @article=Article.find(params[:id])
        @article.destroy
        redirect_to articles_path, :notice=>"Deleted"
    end
    
    private 
        def article_params
            params.require(:article).permit(:title,:body)
        end

end
