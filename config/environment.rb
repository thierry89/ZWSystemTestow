# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application

ZWSystemTestow::Application.initialize!

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'kurs', 'kurses'
end  