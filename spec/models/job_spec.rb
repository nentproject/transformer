require 'rails_helper'

RSpec.describe Job, type: :model do

  it "job status" do
    job = build(:job)

    expect(job.pending?).to be true
  end
end
