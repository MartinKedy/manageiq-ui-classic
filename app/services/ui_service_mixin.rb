module UiServiceMixin
  def icons
    {
      :AvailabilityZone        => {:type => "glyph", :icon => "\uE911", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-zone
      :ContainerReplicator     => {:type => "glyph", :icon => "\uE624", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-replicator
      :ContainerProject        => {:type => "glyph", :icon => "\uE622", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-project
      :ContainerGroup          => {:type => "glyph", :icon => "\uF1B3", :fontfamily => "FontAwesome"},             # fa-cubes
      :ContainerNode           => {:type => "glyph", :icon => "\uE621", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-container-node
      :ContainerService        => {:type => "glyph", :icon => "\uE61E", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-service
      :ContainerRoute          => {:type => "glyph", :icon => "\uE625", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-route
      :Container               => {:type => "glyph", :icon => "\uF1B2", :fontfamily => "FontAwesome"},             # fa-cube
      :EmsCluster              => {:type => "glyph", :icon => "\uE620", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-cluster
      :Host                    => {:type => "glyph", :icon => "\uE600", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-screen
      :Vm                      => {:type => "glyph", :icon => "\uE90f", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-virtual-machine
      :MiddlewareDatasource    => {:type => "glyph", :icon => "\uF1C0", :fontfamily => "FontAwesome"},             # fa-database
      :MiddlewareDeployment    => {:type => "glyph", :icon => "\uF0f6", :fontfamily => "FontAwesome"},             # fa-file-text-o
      :MiddlewareDeploymentEar => {:type => "glyph", :icon => "\uE626", :fontfamily => "icomoon"},                 # product-file-ear-o
      :MiddlewareDeploymentWar => {:type => "glyph", :icon => "\uE627", :fontfamily => "icomoon"},                 # product-file-war-o
      :MiddlewareDomain        => {:type => "glyph", :icon => "\uE919", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-domain
      :MiddlewareMessaging     => {:type => "glyph", :icon => "\uF0EC", :fontfamily => "FontAwesome"},             # fa-exchange (placeholder)
      :MiddlewareServerGroup   => {:type => "glyph", :icon => "\uE91a", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-server-group
      :Kubernetes              => {:type => "image", :icon => provider_icon(:Kubernetes)},
      :Openshift               => {:type => "image", :icon => provider_icon(:Openshift)},
      :CloudSubnet             => {:type => "glyph", :icon => "\uE909", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-network
      :NetworkRouter           => {:type => "glyph", :icon => "\uE625", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-route
      :SecurityGroup           => {:type => "glyph", :icon => "\uE903", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-cloud-security
      :FloatingIp              => {:type => "glyph", :icon => "\uF041", :fontfamily => "FontAwesome"},             # fa-map-marker
      :CloudNetwork            => {:type => "glyph", :icon => "\uE62c", :fontfamily => "IcoMoon"},                 # product-cloud_network
      :CloudTenant             => {:type => "glyph", :icon => "\uE904", :fontfamily => "PatternFlyIcons-webfont"}, # pficon-cloud-tenant
      :LoadBalancer            => {:type => "glyph", :icon => "\uE637", :fontfamily => "IcoMoon"},                 # product-load_balancer
      :Tag                     => {:type => "glyph", :icon => "\uF02b", :fontfamily => "FontAwesome"},             # fa-tag
      :Openstack               => {:type => "image", :icon => provider_icon(:Openstack)},
      :Amazon                  => {:type => "image", :icon => provider_icon(:Amazon)},
      :Azure                   => {:type => "image", :icon => provider_icon(:Azure)},
      :Google                  => {:type => "image", :icon => provider_icon(:Google)},
      :Microsoft               => {:type => "image", :icon => provider_icon(:Microsoft)},
      :Redhat                  => {:type => "image", :icon => provider_icon(:Redhat)},
      :Vmware                  => {:type => "image", :icon => provider_icon(:Vmware)},
      :Nuage                   => {:type => "image", :icon => provider_icon(:Nuage_Network)},
    }
  end

  def provider_icon(provider_type)
    file_name = "svg/vendor-#{provider_type.to_s.underscore.downcase}.svg"
    ActionController::Base.helpers.image_path(file_name)
  end
end
