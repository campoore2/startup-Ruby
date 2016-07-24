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

  describe('Team#add_member') do
    it "stores the member" do
      team = Team.new("Some Startup")
      team.save()
      team.add_member("Little Timmy")
      expect(team.teams_root).to(eq(["Little Timmy"]))
    end
  end

  describe('Team#find') do
    it "creates an index and compares it to another team" do
      team = Team.new("Some Startup")
      team1 = Team.new("That 1 Startup")
      team.save()
      team1.save()
      expect(team.id).to(eq(1))
    end
  end

  describe("Team#clear") do
    it "removes removes teams from the array" do
      team = Team.new("Some Startup").save()
      team1 = Team.new("That 1 Startup").save()
      Team.clear()
      expect(Team.all()).to(eq([]))
    end
  end
end
