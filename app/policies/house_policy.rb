class HousePolicy
  attr_reader :user, :house

  def initialize(user, house)
    @user = user
    @house = house
  end

  def show?
    user == house.owner
  end
end