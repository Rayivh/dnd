class Spell < ActiveRecord::Base
  serialize :components, Array

end
