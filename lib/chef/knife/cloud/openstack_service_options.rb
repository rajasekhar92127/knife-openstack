#
# Copyright:: Copyright (c) Chef Software Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require "chef/knife/cloud/fog/options"
class Chef
  class Knife
    class Cloud
      module OpenstackServiceOptions
        def self.included(includer)
          includer.class_eval do
            include FogOptions
            # Openstack Connection params.
            option :openstack_username,
              short: "-A USERNAME",
              long: "--openstack-username KEY",
              description: "Your OpenStack Username"

            option :openstack_password,
              short: "-K SECRET",
              long: "--openstack-password SECRET",
              description: "Your OpenStack Password"

            option :openstack_tenant,
              short: "-T NAME",
              long: "--openstack-tenant NAME",
              description: "Your OpenStack Tenant NAME"

            option :openstack_auth_url,
              long: "--openstack-api-endpoint ENDPOINT",
              description: "Your OpenStack API endpoint"

            option :openstack_endpoint_type,
              long: "--openstack-endpoint-type ENDPOINT_TYPE",
              description: "OpenStack endpoint type to use (publicURL, internalURL, adminURL)"

            option :openstack_insecure,
              long: "--insecure",
              description: "Ignore SSL certificate on the Auth URL",
              boolean: true,
              default: false
          end
        end
      end
    end
  end
end
