require 'spec_helper'

describe Photo do
  it { should have_attached_file(:photo) }
  it { should validate_attachment_presence(:photo) }
  it { should validate_attachment_content_type(:photo).
    allowing('image/png', 'image/gif', 'image/jpeg', 'image/pjpeg') }
end
