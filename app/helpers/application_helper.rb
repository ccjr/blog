module ApplicationHelper
  # Creates a submit button with the given name with a cancel link
  # Accepts two arguments: Form object and the cancel link name
  def submit_or_cancel(form, name=t('general.cancel'))
    form.submit + " #{t('general.or')} " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
  
  def language_selector
    if I18n.locale == :en
      link_to "Pt", url_for(:locale => 'pt-br')
    else
      link_to "En", url_for(:locale => 'en')
    end
  end
end