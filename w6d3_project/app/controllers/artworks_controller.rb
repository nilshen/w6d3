class ArtworksController < ApplicationController

    # def index
    #     debugger
    #     @artworks = Artwork.all
    #     render json: @artworks
    # end

    #new index method for phase 3
    def index
        artist = User.find(params[:user_id])
        render json: [artist.artworks, artist.shared_artworks]
        # puts artist.artworks
        # puts artist.shared_artworks
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity #errors_method(artwork)
        end
    end
    
    # def errors_method(artwork)
    #     artwork.errors.full_messages, status: :unprocessable_entity
    # end
    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: :unprocessable_entity #errors_method(@artwork)
        end
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to artwork_url
    end

    private

    def artwork_params
		params.require(:artwork).permit(:title, :image_url, :artist_id) 
	end	
    
end