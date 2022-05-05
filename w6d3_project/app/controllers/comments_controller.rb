class CommentsController < ApplicationController
    def index
        #first try
        
        # # if Comment.commented_artwork_id.nil?
        #     user = User.find(params[:commenter_id]) 
        # # elsif Comment.commenter_id.nil?
        # #     artwork = Artwork.find(params[:commented_artwork_id]) 
        # # else

        #     user = User.find(params[:commenter_id]) 
        #     artwork = Artwork.find(params[:commented_artwork_id])
        # # end
        # render json: [user.comments, artwork.comments]


        case
        when params[:user_id]
          comments = Comment.where(user_id: params[:user_id])
        when params[:artwork_id]
          comments = Comment.where(artwork_id: params[:artwork_id])
        else
          comments = Comment.all
        end
        render json: comments
    end


    def create
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment
        else
            render json: comment.errors.full_messages, status: :unprocessable_entity #errors_method(comment)
        end
    end


    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to users_url
    end

    private

    def comment_params
		params.require(:comment).permit(:commenter_id,:commented_artwork_id,:body) 
	end	


end