class Android < ActiveRecord::Base
  attr_accessible :carrier, :keyboard, :maker, :modelname, :os_ver_current, :os_ver_start, :petname, :release_date, :screen_dpi, :screen_inch, :screen_type, :screen_x, :screen_y
end
