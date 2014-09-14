module ApplicationHelper

	def flash_class(level)
		case level
			when :notice then "alert alert-info animated fadeIn"
			when :success then "alert alert-success animated fadeIn"
			when :error then "alert alert-danger animated fadeIn"
			when :warning then "alert alert-warning animated fadeIn"
			else "alert alert-warning animated fadeIn"
		end
	end

	def sidebar_link name, path 
		if current_page?(path)
			return "<li class='active'><a href='#{path}'>#{name}</a></li>".html_safe
		else
			return "<li><a href='#{path}'>#{name}</a></li>".html_safe
		end
	end

end
