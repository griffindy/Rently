require 'spec_helper'

describe ApartmentsController, '#edit' do
  it 'fails if you try to edit an apartment and you are not the landlord' do
    good_landlord = create(:landlord)
    bad_landlord = create(:landlord)
    apartment = create(:apartment, landlord: good_landlord)
    sign_in_as(bad_landlord)
    expect { get :edit, id: apartment.id }.to raise_error(ActiveRecord::RecordNotFound)
  end
end

describe ApartmentsController, '#update' do
  it 'fails if you try to update an apartment and you are not the landlord' do
    good_landlord = create(:landlord)
    bad_landlord = create(:landlord)
    apartment = create(:apartment, landlord: good_landlord)
    sign_in_as(bad_landlord)
    expect { post :update, id: apartment.id }.to raise_error(ActiveRecord::RecordNotFound)
  end
end

describe ApartmentsController, '#destroy' do
  it 'fails if you try to destory an apartment and you are not the landlord' do
    good_landlord = create(:landlord)
    bad_landlord = create(:landlord)
    apartment = create(:apartment, landlord: good_landlord)
    sign_in_as(bad_landlord)
    expect { delete :destroy, id: apartment.id }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
