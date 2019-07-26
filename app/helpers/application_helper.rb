module ApplicationHelper
	 def link_to_add_row(name, f, association, **args)
        new_object = f.object.send(association).klass.new
        id = new_object.object_id
        fields = f.fields_for(association, new_object, child_index: id) do |builder|
          render(association.to_s.singularize, f: builder)
        end
        link_to(name, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
    end

     def link_to_add_row1(name, f, association, **args)
        new_object = f.object.send(association).klass.new
        id = new_object.object_id
        fields = f.fields_for(association, new_object, child_index: id) do |ad|
          render(association.to_s.singularize, f: ad)
        end
        link_to(name, '#', class: "add_fields1 " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
    end

    def is_active(action)       
      params[:action] == action ? "active" : nil        
    end
end
