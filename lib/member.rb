class Member
  define_method(:initialize) do |new_member|
    @cohorts = new_member
  end
  define_method(:cohorts) do
    @cohorts
  end
end
