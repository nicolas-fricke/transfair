class DateTimeInput < SimpleForm::Inputs::DateTimeInput
  def input
    if input_html_options[:class].include? :time
      input_html_options[:class] << [:timepicker]
      input_field = "#{@builder.text_field(attribute_name, input_html_options)}"
      icon = "<i class='icon-time' style='margin: -2px 0 0 -26px; pointer-events: none; position: relative;'></i>"
    else
      input_html_options[:class] << [:datepicker]
      input_field = "#{@builder.text_field(attribute_name, input_html_options)}"
      icon = "<i class='icon-calendar' style='margin: -2px 0 0 -26px; pointer-events: none; position: relative;'></i>"
    end
    "#{input_field} #{icon}".html_safe
  end
end
