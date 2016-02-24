class Profile < ActiveRecord::Base
  belongs_to :user

   validate :has_name
   validates_inclusion_of :gender, :in => %w(male female)
   validate :sue

  def has_name
  	if ((first_name.nil? or first_name.empty?) and (last_name.nil? or last_name.empty?))
  		errors.add(:first_name, "at least one of this fields should be populated")
  	end
  end

  def sue
  	if first_name == 'Sue' and gender == 'male'
  		errors.add( :gender, "can't have a name Sue")
  	end
  end

  def self.get_all_profiles(min_year, max_year)
  	Profile.where(:birth_year => min_year..max_year).order(:birth_year)
  end

end
