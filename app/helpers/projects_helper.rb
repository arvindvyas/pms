module ProjectsHelper

	def display_standard_table(columns, collection = {}, status='New')
	 thead = content_tag :thead do
	   content_tag :tr do
	    columns.collect {|column|  concat content_tag(:th,column["email"])}.join('').html_safe
	   end
	 end

	 tbody = content_tag :tbody do
	  collection.collect { |elem|
	    content_tag :tr do
	    	tasks =  elem.tasks.where(status: status)
	      tasks.uniq.collect { |column| 
	        concat content_tag(:td, column.try(:name))
	        if current_user.role == 'developer'
	          concat content_tag(:td, "#{link_to 'EDIT', edit_project_task_path(column.project_id, column)}".html_safe)
	        end
	      }.to_s.html_safe
	    end

	  }.join().html_safe
	 end

	 content_tag :table, thead.concat(tbody)

	end

	def display_project_table(columns, collection = {}, status='New')
    thead = content_tag :thead do
	    content_tag :tr do
	      columns.collect {|column|  concat content_tag(:th,column["name"])}.join('').html_safe
	    end
	  end

	 tbody = content_tag :tbody do
	  collection.collect { |elem|
	    content_tag :tr do
	    	tasks =  elem.tasks.where(status: status)
	      tasks.uniq.collect { |column| 
	        concat content_tag(:td, column.try(:name))
	      }.to_s.html_safe
	    end

	  }.join().html_safe
	 end

	 content_tag :table, thead.concat(tbody)

	end
end
