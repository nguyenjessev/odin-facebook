require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(email: 'test@test.com',
                        password: 'password123',
                        display_name: 'John Doe')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid without email' do
    subject.email = nil
    expect(subject).to be_invalid
  end

  it 'is invalid without password' do
    subject.password = nil
    expect(subject).to be_invalid
  end

  it 'is invalid without display name' do
    subject.display_name = nil
    expect(subject).to be_invalid
  end
end
