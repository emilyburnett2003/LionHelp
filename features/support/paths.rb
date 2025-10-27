module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /^the (RottenPotatoes )?home\s?page$/ then '/movies'
    
    when /^the (edit|details) page for "(.*)"$/
      movie = Movie.find_by(title: $2)
      if $1 == "edit"
        edit_movie_path(movie)
      else
        movie_path(movie)
      end
    
    when /^the Similar Movies page for "(.*)"$/
      movie = Movie.find_by(title: $1)
      similar_movie_path(movie)
    
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = ::Regexp.last_match(1).split(/\s+/)
        send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" \
              "Now, go and add a mapping in #{__FILE__}"
      end
    end   # ✅ closes the case
  end
end

World(NavigationHelpers)