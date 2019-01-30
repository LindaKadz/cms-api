require 'rails_helper'

RSpec.describe Content, type: :model do
  describe 'database table' do
    it { is_expected.to have_db_column(:title) }
    it { is_expected.to have_db_column(:published_date) }
    it { is_expected.to have_db_column(:summary) }
    it { is_expected.to have_db_column(:author) }
    it { is_expected.to have_db_column(:content) }
    it { is_expected.to have_db_column(:status) }
  end

  describe 'relations' do
    it { is_expected.to belong_to(:user) }
  end
end
