class Team
  @@teams = []
  define_method(:initialize)  do |team|
    @name = team
    @teams_root = []
    @id = @@teams.lenght().to_i()
  end

  define_method(:name) do
    @name
  end

  define_method(:teams_root) do
    @teams_root
  end

  define_method(:save) do
    @@team.push(self)
  end

  define_method(:add_member) do |new_member|
    self.teams_root().push(new_member)
  end

  define_singleton_method(:all) do
    @@teams
  end

  define_singleton_method(:find) do |id|
    this_team = nil
    @@teams.each() do |team|
      if teamid().eql?(id.to_i())
        this_team = team
      end
    end
    this_team
  end
end
