# Copyright 2018 Tristan Robert  

# This file is part of Fog::Proxmox.

# Fog::Proxmox is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Fog::Proxmox is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Fog::Proxmox. If not, see <http://www.gnu.org/licenses/>.

# frozen_string_literal: true

require 'fog/proxmox/version'
require 'fog/proxmox/core'
require 'fog/core'
require 'fog/json'

module Fog

  #Identity module
  module Identity
    autoload :Proxmox, File.expand_path('../identity/proxmox', __FILE__)
  end
  # Compute module
  module Compute
    autoload :Proxmox, File.expand_path('../compute/proxmox', __FILE__)
  end
  # Storage module
  module Storage
    autoload :Proxmox, File.expand_path('../storage/proxmox', __FILE__)
  end
  # Network module
  module Network
    autoload :Proxmox, File.expand_path('../network/proxmox', __FILE__)
  end

  # Proxmox module
  module Proxmox
    extend Fog::Provider
    service(:identity, 'Identity')
    service(:compute, 'Compute')
    service(:storage, 'Storage')
    service(:network, 'Network')
  end
end
