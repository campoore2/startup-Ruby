class Team
  @@teams = []
  define_method(:initialize)  do |team|
    @name = team
    @teams_root = []
    @id = @@teams.length().to_i().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:teams_root) do
    @teams_root
  end

  define_method(:save) do
    @@teams.push(self)
  end

  define_method(:add_member) do |new_member|
    self.teams_root().push(new_member)
  end

  define_singleton_method(:all) do
    @@teams
  end

  define_singleton_method(:find) do |this_id|
    this_team = nil
    @@teams.each() do |team|
      if team.id().eql?(this_id.to_i())
        this_team = team
      end
    end
    this_team
  end

  define_singleton_method(:clear) do
    @@teams = []
  end
end
