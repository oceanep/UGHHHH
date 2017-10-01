class Girl < ApplicationRecord
	def rank(user)
		ranking = Ranking.where(user: user, girl: self).first
		if !ranking
			0
		else
			ranking.rank
		end
	end

	def total_rank
		# Ranking.where(:girl_id => self.id).pluck(:rank).inject(:+)
	end

	def highest_rank
		# highest_ranking_girl = Girl.all.sort_by{|i| i.total_rank}.first
	end

	def Girl.vote_count
		Girl.find_by_sql ['SELECT id, name, upvote_count, downvote_count,
				((upvote_count + 1.9208) / (upvote_count + downvote_count) -
				1.96 * SQRT((upvote_count * downvote_count) / (upvote_count + downvote_count) + 0.9604) /
				(upvote_count + downvote_count)) / (1 + 3.8416 / (upvote_count + downvote_count))
				AS ci_lower_bound
			FROM girls
			WHERE upvote_count + downvote_count > 0
			ORDER BY ci_lower_bound DESC']
	end
end
