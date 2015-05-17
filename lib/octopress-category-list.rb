require 'octopress-category-list/version'
require 'octopress-ink'

module OctopressCategoryList
    autoload :Plugin,          'octopress-category-list/plugin'
    autoload :Tags,            'octopress-category-list/tags'
end

Liquid::Template.register_tag('category_size', OctopressCategoryList::Tags)

Octopress::Ink.register_plugin(OctopressCategoryList::Plugin, { 
  name:          "Octopress Category List",
  slug:          "octopress-category-list",
  gem:           "octopress-category-list",
  path:          File.expand_path(File.join(File.dirname(__FILE__), "..")),
  type:          "plugin",
  version:       OctopressCategoryList::VERSION,
  description:   "Generating a category list page",
  source_url:    "https://github.com/wantee/octopress-category-list", 
  websit:        "https://github.com/wantee/octopress-category-list"
})
