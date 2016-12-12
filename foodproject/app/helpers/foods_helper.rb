module FoodsHelper

def sortable(column, title = nil)
  title ||= column.titleize
  css_class = sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end

end
