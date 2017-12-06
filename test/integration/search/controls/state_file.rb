# More info please refer to: https://www.inspec.io/docs/
require 'json'

control "state_file" do
  # Define how critical this control is.
  impact 0.6
  # The actual test case.
  describe file("terraform.tfstate.d/kitchen-terraform-search-ubuntu/terraform.tfstate") do

    file = File.read("terraform.tfstate.d/kitchen-terraform-search-ubuntu/terraform.tfstate")
    data_hash = JSON.parse(file)
    modules = data_hash["modules"]
    subject do modules[0]["resources"]["azurerm_search_service.search"]["type"] end
      
          # Validate that search service resource is createed in tfstate 
          it "is valid" do is_expected.to match "azurerm_search_service" end
  end
end
