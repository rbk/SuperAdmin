module ApplicationHelper

	def flash_class(level)
		case level
			when :notice then "alert alert-info animated fadeInDown"
			when :success then "alert alert-success animated fadeInDown"
			when :error then "alert alert-danger animated fadeInDown"
			when :warning then "alert alert-warning animated fadeInDown"
			else "alert alert-warning animated fadeInDown"
		end
	end

end
