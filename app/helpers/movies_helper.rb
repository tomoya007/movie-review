module MoviesHelper
  def watched_check movie_id
		check(movie_id, "watched")
	end

	def want_check movie_id
		check(movie_id, "want")
	end

	def recommend_check movie_id
		check(movie_id, "recommend")
	end

	private
		def check(movie_id, listname)
			if user_signed_in?
				user = current_user
				@movielist_check = user.movielists.find_by(listname: listname)
				unless @movielist_check.nil?
					ListMovie.exists?(movielist_id: @movielist_check.id, movie_id: movie_id)
				end
			end
		end
end
