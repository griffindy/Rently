module DatalistHelper
  def datalist(form, name, list)
    form.text_field(name, list: name) +
    "<datalist id=#{name}>".html_safe +
    options_for_select(list) +
    "</datalist>".html_safe
  end
end
