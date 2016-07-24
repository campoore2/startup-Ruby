class Member
  define_method(:initialize) do |new_member|
    @member = new_member
  end
  define_method(:members) do
    @members
  end
end
