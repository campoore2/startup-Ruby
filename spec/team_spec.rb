require('rspec')
require('./lib/team')
require('./lib/member')

describe('team') do
  before() do
    Team.clear()
  end

  describe('Team#name') do
    it "creates a team" do
      team = Team.new("Some Startup")
      expect(team.name()).to(eq("Some Startup"))
    end
  end

  describe('Team#save') do
    it "saves a team to an array of other teams" do
      team = Team.new("Some Startup").save()
      expect(Team.all()).to(eq(team)) 
    end
  end
end
