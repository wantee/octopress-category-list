module OctopressCategoryList

  class Plugin < Ink::Plugin

    def register
      super
      if Octopress::Ink.enabled?
        self.generate(Octopress.site, config)
      end
    end

    def generate(site, config)
      @conf = inject_configs

      @template = find_template('category_list.html')

      return unless @template
      permalink = "/" + @conf['categories_dir'] + "/index.html"
      if page = template.new_page({
          'lang'      => nil,
          'title'     => @conf['category_list_title'],
          'permalink' => permalink,
          'plugin'    => self
        })

        Bootstrap.add_page(page, nil)
        Octopress.site.pages << page
      end

    end

    def inject_configs
      @conf = self.config
      @conf = Jekyll::Utils.deep_merge_hashes(YAML.load(Plugin.default_config), @conf)
    end

    def self.default_config
<<-CONFIG
categories_dir:           "categories"
category_list_title:      "Categories"
CONFIG
    end

  end
end
