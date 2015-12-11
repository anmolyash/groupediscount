class Temporary < ActiveRecord::Base
	@proj=Project.includes(:Builder).all
end
