require 'spec_helper'

describe Card do

  it { should have_db_column(:name) }
  it { should validate_presence_of(:name) }

  it { should have_db_column(:user_id) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:user_id) }

  it { should have_db_column(:type_id) }
  it { should belong_to(:type) }
  it { should validate_presence_of(:type_id) }

  it { should have_db_column(:object_id) }
  it { should validate_presence_of(:object_id) }

end