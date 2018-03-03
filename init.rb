Redmine::Plugin.register :hglossary do
  name 'Hglossary plugin'
  author 'hono63'
  description 'This is a glossary plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/hono63'
  author_url 'https://github.com/hono63'

  menu :top_menu, :hglossary, { :controller => 'acronyms', :action => 'index' }, :caption => '用語集'

  permission :view_acronyms, :acronyms => [:index, :show]
  permission :manage_acronyms, :acronyms => [:new, :edit, :create, :update, :destroy, :preview],
             :require => :member
end
