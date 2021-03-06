# Copyright 2012, Dell 
# 
# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#  http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 

require 'test_helper'
require 'network_test_helper'
 
class ConduitFilterTest < ActiveSupport::TestCase

  # Test successful creation
  test "ConduitFilter creation: success" do
    conduit_filter = NetworkTestHelper.create_a_conduit_filter()
    conduit_filter.save!
  end


  # Test creation failure due to missing comparitor
  test "ConduitFilter creation: failure due to missing comparitor" do
    assert_raise ActiveRecord::RecordInvalid do
      ConduitFilter.create!( :attr => "stuff", :value => "7" )
    end
  end
end
