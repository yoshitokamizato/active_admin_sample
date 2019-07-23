class UserSearch
  include ActiveModel::Model

  attr_accessor :search_name, :search_age, :search_address

  def execute
    User.ransack(
      name_eq: @search_name, age_eq: @search_age, address_eq: @search_address
    )
      .result
  end
end
