module CommentsHelper
    def has_comments(article)
        if(article.comments.count>0)
            return true
        else
            return false
        end
    end
end
