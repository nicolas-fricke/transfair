class DateTimeInput < SimpleForm::Inputs::DateTimeInput
  def input
    @attribute_name = attribute_name
    render :partial => 'date'
  end
end
