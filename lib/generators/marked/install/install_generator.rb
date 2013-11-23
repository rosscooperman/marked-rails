require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || ::Rails.application.config.assets.enabled == false
  module Marked
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs Marked #{Marked::Rails::MARKED_VERSION}"
        source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

        def copy_marked
          say_status("copying", "Marked (#{Marked::Rails::MARKED_VERSION})", :green)
          copy_file "marked.js", "public/javascripts/marked.js"
        end
      end
    end
  end
else
  module Marked
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps with the asset pipeline enabled"

        def do_nothing
          say_status("deprecated", "You are using Rails >= 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require marked` to your app/assets/javascripts/application.js")
          say_status("", "If you upgraded your app from Rails < 3.1 and still have marked.js in your javascripts, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
        end
      end
    end
  end
end
