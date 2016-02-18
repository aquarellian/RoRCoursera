class TodoItem < ActiveRecord::Base
	def index
		@count = get_completed();
	end

	def self.get_completed()
		@count = TodoItem.all.where(completed: true).count
	end
end
