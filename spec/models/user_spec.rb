require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test: User 1:m Todo
  it { should have_many(:todos) }

  # Validation tests, name, email, password are present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
end
