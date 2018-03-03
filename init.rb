Redmine::Plugin.register :hglossary do
  name 'Hglossary plugin'
  author 'hono63'
  description 'This is a glossary plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/hono63'
  author_url 'https://github.com/hono63'
  #menu :application_menu, :acronyms, { :controller => 'acronyms', :action => 'index' }, :caption => 'Acronyms'
  menu :top_menu, :acronyms, :caption => 'Acronyms'
end

#top_menu :hglossary do
  #permission :view_acronyms, :acronyms => [:index, :show]
  #permission :manage_acronyms, :acronyms => [:new, :edit, :create, :update, :destroy, :preview],
             #:require => :member
#end
