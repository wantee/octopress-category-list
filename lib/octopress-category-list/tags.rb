module OctopressCategoryList

  class Tags < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
      @input = input.strip
    end

    def render(context)
      site = context.registers[:site]

      category_name = @input
      if ! site.categories.has_key?(category_name)
        # if it is a variable
        if context[@input]
           category_name = context[@input].strip
        end

        if ! site.categories.has_key?(category_name)
          raise ArgumentError.new <<-eos
Could not find category "#{@input}"  or "#{category_name}" in tag 'category_size'.
make sure the category exists and the name is correct.
eos
        end
      end

      site.categories[category_name].size
    end
  end
end

