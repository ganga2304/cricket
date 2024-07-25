class Team < ApplicationRecord
    has_many :players, dependent: :destroy    
    has_and_belongs_to_many :matches
    accepts_nested_attributes_for :players, allow_destroy: true


    validates :name, presence: true, uniqueness: true
    validates :country, presence: true
    validates :founded, presence: true, numericality: { greater_than: 1901 }
    validates :description, length: { maximum: 500 }

    before_save :capitalize_name
    after_save :notify_team_of_player
    before_validation :validating_name
    after_validation :validated_name
    before_destroy :check_if_players_present
    after_destroy :notify_team_of_player_destroy
    after_create :log_team_creation
    before_create :create_new_team
    after_update :log_team_update
    before_update :update_team
    before_commit :commit_team
    after_commit :commited_team

    scope :founded_year,->(year){where('founded > ?',year)}
    
  #before save validates first compared to before_save
    private

    def validate_player_age(player)
        unless player.age.between?(18, 40)
            raise ArgumentError, "Player's age must be between 18 and 40"
        end
    end

     def after_adding_player(player)
        puts "Player #{player.name}  added to team"
     end

     def removed_player(player)
        puts "Player #{player.name}  removed from team"
     end

    def commit_team
        puts "beofre commit"
    end

    def commited_team
        puts "after commit"
    end
    
    def update_team
        puts " before updating team"
    end

    def log_team_update
        puts " after updating team"
    end

    def create_new_team
        puts "Creating new team"
    end

    def capitalize_name
        puts "captilizing the name before_save"
        self.name = name.capitalize if name.present?
    end

    def check_if_players_present
        puts "hello"
        if self.players
            puts 'hai before_destroy'
            errors.add(:base, "Cannot delete team with players")
            throw(:abort) 
        end
    end

    def validating_name
        puts "validating name is in lowercase or not before  before_validation"
        self.name = name.downcase
    end

  def log_team_creation
    Rails.logger.info "Team #{name} was created.after_create"
  end

  def validated_name
    puts "validated successfully after validtion"
    puts "#{name}"
  end

  def notify_team_of_player
    puts "notify team of player after save"

  end
  def notify_team_of_player_destroy
    puts "notify team of player after destroy"
   end
    
end


