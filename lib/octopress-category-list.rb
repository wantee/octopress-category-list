require 'octopress-category-list/version'
require 'octopress-ink'

module OctopressCategoryList
    utoload :Plugin,          'octopress-category-list/plugin'
end

Octopress::Ink.add_plugin({
  name:          "Octopress Category List",
  slug:          "octopress-category-list",
  gem:           "octopress-category-list",
  path:          File.expand_path(File.join(File.dirname(__FILE__), "..")),
  version:       OctopressCategoryList::VERSION,
  description:   "Generating a category list page",
  source_url:    "https://github.com/wantee/octopress-category-list", 
  websit:        "https://github.com/wantee/octopress-category-list"
})
