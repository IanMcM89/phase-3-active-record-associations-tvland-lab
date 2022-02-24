class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        actors_list = []

        actors.each do |actor|
            actors_list << "#{actor.first_name} #{actor.last_name}"
        end

        actors_list
    end
end