References
==========

The following YAML list is the children under the root-org dn, this non-recursive and only the next level down.

---
:cookie: yes_please
:response: 'yes'
:configs:
  :compute_chassis_conn_policy:
  - :admin_state: global
    :chassis_id: '3'
    :descr: ''
    :dn: org-root/chassis-conn-policy-chassis-3-fabric-B
    :int_id: '44782'
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :qualifier: none
    :switch_id: B
  - :admin_state: global
    :chassis_id: '1'
    :descr: ''
    :dn: org-root/chassis-conn-policy-chassis-1-fabric-B
    :int_id: '41375'
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :qualifier: none
    :switch_id: B
  - :admin_state: global
    :chassis_id: '2'
    :descr: ''
    :dn: org-root/chassis-conn-policy-chassis-2-fabric-A
    :int_id: '44755'
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :qualifier: none
    :switch_id: A
  - :admin_state: global
    :chassis_id: '1'
    :descr: ''
    :dn: org-root/chassis-conn-policy-chassis-1-fabric-A
    :int_id: '37434'
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :qualifier: none
    :switch_id: A
  :ippool_pool:
  - :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/ip-pool-iscsi-initiator-pool
    :ext_managed: internal
    :guid: 00000000-0000-0000-0000-000000000000
    :int_id: '32826'
    :is_net_bios_enabled: disabled
    :name: iscsi-initiator-pool
    :policy_level: '0'
    :policy_owner: local
    :size: '0'
    :supports_dhcp: disabled
  - :assigned: '0'
    :assignment_order: default
    :descr: sample IP address pool
    :dn: org-root/ip-pool-ip-pool-1
    :ext_managed: internal
    :guid: 00000000-0000-0000-0000-000000000000
    :int_id: '35472'
    :is_net_bios_enabled: disabled
    :name: ip-pool-1
    :policy_level: '0'
    :policy_owner: local
    :size: '412'
    :supports_dhcp: disabled
  - :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/ip-pool-ext-mgmt
    :ext_managed: internal
    :guid: 00000000-0000-0000-0000-000000000000
    :int_id: '27509'
    :is_net_bios_enabled: disabled
    :name: ext-mgmt
    :policy_level: '0'
    :policy_owner: local
    :size: '0'
    :supports_dhcp: disabled
  :compute_qual:
    :descr: ''
    :dn: org-root/blade-qualifier-all-chassis
    :int_id: '27753'
    :name: all-chassis
    :policy_level: '0'
    :policy_owner: local
  :adaptor_host_eth_if_profile:
  - :descr: Recommended adapter settings for VMWare pass-thru (dynamic vNIC)
    :dn: org-root/eth-profile-VMWarePassThru
    :int_id: '27755'
    :name: VMWarePassThru
    :policy_level: '0'
    :policy_owner: local
  - :descr: default adapter policy
    :dn: org-root/eth-profile-default
    :int_id: '27779'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Windows
    :dn: org-root/eth-profile-Windows
    :int_id: '27790'
    :name: Windows
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Solaris
    :dn: org-root/eth-profile-Solaris
    :int_id: '27896'
    :name: Solaris
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for VMWare
    :dn: org-root/eth-profile-VMWare
    :int_id: '27819'
    :name: VMWare
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for linux
    :dn: org-root/eth-profile-Linux
    :int_id: '27831'
    :name: Linux
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Win8 SRIOV-VMFEX PF
    :dn: org-root/eth-profile-SRIOV
    :int_id: '27916'
    :name: SRIOV
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for usNIC Connection
    :dn: org-root/eth-profile-usNIC
    :int_id: '27927'
    :name: usNIC
    :policy_level: '0'
    :policy_owner: local
  :storage_local_disk_config_policy:
    :descr: ''
    :dn: org-root/local-disk-config-default
    :flex_flash_raid_reporting_state: disable
    :flex_flash_state: disable
    :int_id: '27766'
    :mode: any-configuration
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :protect_config: 'yes'
  :compute_blade_inherit_policy:
    :descr: blade inheritance sample policy
    :dn: org-root/blade-inherit-blade-inh-2
    :dst_dn: org-root
    :int_id: '35470'
    :name: blade-inh-2
    :policy_level: '0'
    :policy_owner: local
    :qualifier: finance
  :compute_pool:
  - :assigned: '0'
    :assignment_order: default
    :descr: sample blade pool
    :dn: org-root/compute-pool-blade-pool-2
    :int_id: '37184'
    :name: blade-pool-2
    :policy_level: '0'
    :policy_owner: local
    :size: '3'
  - :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/compute-pool-default
    :int_id: '27513'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :size: '0'
  :mgmt_backup_policy:
    :admin_state: disable
    :descr: Database Backup Policy
    :dn: org-root/db-backup-policy-default
    :fsm_descr: ''
    :fsm_prev: nop
    :fsm_progr: '100'
    :fsm_rmt_inv_err_code: none
    :fsm_rmt_inv_err_descr: ''
    :fsm_rmt_inv_rslt: ''
    :fsm_stage_descr: ''
    :fsm_stamp: never
    :fsm_status: nop
    :fsm_try: '0'
    :host: ''
    :int_id: '27872'
    :last_backup: '1970-01-01T00:00:00.000'
    :max_files: '0'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :proto: ftp
    :pwd: ''
    :remote_file: ''
    :schedule: 1day
    :user: ''
  :firmware_catalog_pack:
    :catalog_name: ''
    :catalog_version: ''
    :config_state: ok
    :config_status_message: ''
    :descr: Catalog Pack
    :dn: org-root/fw-catalog-pack-default
    :int_id: '27874'
    :mode: staged
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :stage_size: '0'
    :update_trigger: immediate
  :mgmt_cfg_export_policy:
    :admin_state: disable
    :descr: Configuration Export Policy
    :dn: org-root/cfg-exp-policy-default
    :fsm_descr: ''
    :fsm_prev: nop
    :fsm_progr: '100'
    :fsm_rmt_inv_err_code: none
    :fsm_rmt_inv_err_descr: ''
    :fsm_rmt_inv_rslt: ''
    :fsm_stage_descr: ''
    :fsm_stamp: never
    :fsm_status: nop
    :fsm_try: '0'
    :host: ''
    :int_id: '27875'
    :last_backup: '1970-01-01T00:00:00.000'
    :max_files: '0'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :proto: ftp
    :pwd: ''
    :remote_file: ''
    :schedule: 1day
    :user: ''
  :compute_autoconfig_policy:
    :descr: sample autoconf policy
    :dn: org-root/autoconfig-auto-conf-2
    :dst_dn: org-root
    :int_id: '35467'
    :name: auto-conf-2
    :policy_level: '0'
    :policy_owner: local
    :qualifier: finance
    :src_templ_name: templ2
  :fcpool_initiators:
  - :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/wwn-pool-node-default
    :int_id: '27511'
    :max_ports_per_node: upto3
    :name: node-default
    :policy_level: '0'
    :policy_owner: local
    :purpose: node-wwn-assignment
    :size: '0'
  - :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/wwn-pool-default
    :int_id: '27510'
    :max_ports_per_node: upto3
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :purpose: port-wwn-assignment
    :size: '0'
  :adaptor_host_iscsi_if_profile:
    :descr: default issci adapter policy
    :dn: org-root/iscsi-profile-default
    :int_id: '27877'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  :compute_memory_config_policy:
    :black_listing: disabled
    :descr: ''
    :dn: org-root/memory-config-default
    :int_id: '27895'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  :firmware_infra_pack:
    :descr: Infrastructure Pack
    :dn: org-root/fw-infra-pack-default
    :force_deploy: 'no'
    :infra_bundle_name: ''
    :infra_bundle_version: ''
    :int_id: '27879'
    :mode: staged
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :stage_size: '0'
    :update_trigger: immediate
  :power_policy:
    :descr: ''
    :dn: org-root/power-policy-default
    :int_id: '27880'
    :name: default
    :oper_prio: '5'
    :policy_level: '0'
    :policy_owner: local
    :prio: '5'
  :ls_agent_policy:
    :capability: states
    :descr: ''
    :dn: org-root/agent-policy-default
    :int_id: '27768'
    :mode: no-agent
    :name: default
    :policy_level: '0'
    :policy_owner: local
  :firmware_compute_host_pack:
    :blade_bundle_name: ''
    :blade_bundle_version: ''
    :config_qualifier: ''
    :descr: Default Host Package
    :dn: org-root/fw-host-pack-default
    :ignore_comp_check: 'yes'
    :int_id: '27881'
    :mode: staged
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :rack_bundle_name: ''
    :rack_bundle_version: ''
    :stage_size: '0'
    :update_trigger: immediate
  :lsboot_policy:
  - :boot_mode: legacy
    :descr: ''
    :dn: org-root/boot-policy-utility
    :enforce_vnic_name: 'no'
    :int_id: '27769'
    :name: utility
    :policy_level: '0'
    :policy_owner: local
    :purpose: utility
    :reboot_on_update: 'no'
  - :boot_mode: legacy
    :descr: ''
    :dn: org-root/boot-policy-default
    :enforce_vnic_name: 'no'
    :int_id: '27772'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :purpose: operational
    :reboot_on_update: 'no'
  - :boot_mode: legacy
    :descr: ''
    :dn: org-root/boot-policy-diag
    :enforce_vnic_name: 'no'
    :int_id: '27860'
    :name: diag
    :policy_level: '0'
    :policy_owner: local
    :purpose: utility
    :reboot_on_update: 'no'
  :macpool_pool:
  - :assigned: '0'
    :assignment_order: default
    :descr: sample MAC address pool
    :dn: org-root/mac-pool-mac-pool-1
    :int_id: '37126'
    :name: mac-pool-1
    :policy_level: '0'
    :policy_owner: local
    :size: '18'
  - :assigned: '0'
    :assignment_order: default
    :descr: Default MAC address pool
    :dn: org-root/mac-pool-default
    :int_id: '27515'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :size: '0'
  :compute_server_mgmt_policy:
    :action: auto-acknowledged
    :descr: ''
    :dn: org-root/server-mgmt-policy
    :int_id: '33079'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :qualifier: ''
  :stats_threshold_policy:
    :descr: ''
    :dn: org-root/thr-policy-default
    :int_id: '27882'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  :adaptor_host_fc_if_profile:
  - :descr: default adapter policy
    :dn: org-root/fc-profile-default
    :int_id: '27801'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Solaris
    :dn: org-root/fc-profile-Solaris
    :int_id: '27907'
    :name: Solaris
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Windows
    :dn: org-root/fc-profile-Windows
    :int_id: '27810'
    :name: Windows
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for VMWare
    :dn: org-root/fc-profile-VMWare
    :int_id: '27842'
    :name: VMWare
    :policy_level: '0'
    :policy_owner: local
  - :descr: Recommended adapter settings for Linux
    :dn: org-root/fc-profile-Linux
    :int_id: '27851'
    :name: Linux
    :policy_level: '0'
    :policy_owner: local
  :compute_chassis_disc_policy:
    :action: 2-link
    :descr: ''
    :dn: org-root/chassis-discovery
    :int_id: '27830'
    :link_aggregation_pref: none
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :qualifier: none
    :rebalance: user-acknowledged
  :fabric_multicast_policy:
    :descr: ''
    :dn: org-root/mc-policy-default
    :int_id: '27883'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :querier_ip_addr: 0.0.0.0
    :querier_state: disabled
    :snooping_state: enabled
  :uuidpool_pool:
    :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/uuid-pool-default
    :int_id: '27516'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :prefix: 15AC4FE2-4BD4-11E5
    :size: '0'
  :compute_server_disc_policy:
    :action: immediate
    :descr: ''
    :dn: org-root/server-discovery
    :fsm_descr: ''
    :fsm_prev: nop
    :fsm_progr: '100'
    :fsm_rmt_inv_err_code: none
    :fsm_rmt_inv_err_descr: ''
    :fsm_rmt_inv_rslt: ''
    :fsm_stage_descr: ''
    :fsm_stamp: never
    :fsm_status: nop
    :fsm_try: '0'
    :int_id: '33077'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :qualifier: ''
    :scrub_policy_name: ''
  :iqnpool_pool:
    :assigned: '0'
    :assignment_order: default
    :descr: ''
    :dn: org-root/iqn-pool-default
    :int_id: '27514'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :prefix: ''
    :size: '0'
  :power_mgmt_policy:
    :descr: ''
    :dn: org-root/pwr-mgmt-policy
    :int_id: '27871'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :style: intelligent-policy-driven
  :fabric_org_vlan_policy:
    :admin_state: disabled
    :dn: org-root/org-vlan-policy
    :name: ''
  :bios_v_profile:
  - :descr: Recommended bios settings for SRIOV vNICs
    :dn: org-root/bios-prof-SRIOV
    :int_id: '27938'
    :name: SRIOV
    :policy_level: '0'
    :policy_owner: local
    :reboot_on_update: 'no'
  - :descr: Recommended bios settings for usNIC vNICs
    :dn: org-root/bios-prof-usNIC
    :int_id: '27990'
    :name: usNIC
    :policy_level: '0'
    :policy_owner: local
    :reboot_on_update: 'no'
  :nwctrl_definition:
    :cdp: disabled
    :descr: ''
    :dn: org-root/nwctrl-default
    :int_id: '27884'
    :mac_register_mode: only-native-vlan
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :uplink_fail_action: link-down
  :compute_scrub_policy:
    :bios_settings_scrub: 'no'
    :descr: ''
    :disk_scrub: 'no'
    :dn: org-root/scrub-default
    :flex_flash_scrub: 'no'
    :int_id: '27863'
    :name: default
    :policy_level: '0'
    :policy_owner: local
  :lsmaint_maint_policy:
    :descr: ''
    :dn: org-root/maint-default
    :int_id: '27885'
    :name: default
    :oper_sched_name: ''
    :policy_level: '0'
    :policy_owner: local
    :sched_name: ''
    :uptime_disr: immediate
  :vm_life_cycle_policy:
    :descr: ''
    :dn: org-root/vm-lc-policy
    :fsm_descr: ''
    :fsm_prev: configSuccess
    :fsm_progr: '100'
    :fsm_rmt_inv_err_code: none
    :fsm_rmt_inv_err_descr: ''
    :fsm_rmt_inv_rslt: ''
    :fsm_stage_descr: ''
    :fsm_stamp: '2015-11-09T13:05:19.671'
    :fsm_status: nop
    :fsm_try: '0'
    :int_id: '27864'
    :name: ''
    :policy_level: '0'
    :policy_owner: local
    :vm_retention: '15'
    :vnic_retention: '15'
  :firmware_auto_sync_policy:
    :config_issue: Versions Empty in Default Package
    :descr: ''
    :dn: org-root/fw-auto-sync
    :int_id: '27886'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :sync_state: Auto Acknowledge
  :epqos_definition:
    :descr: ''
    :dn: org-root/ep-qos-qos-1
    :fsm_descr: ''
    :fsm_prev: DeploySuccess
    :fsm_progr: '100'
    :fsm_rmt_inv_err_code: none
    :fsm_rmt_inv_err_descr: ''
    :fsm_rmt_inv_rslt: ''
    :fsm_stage_descr: ''
    :fsm_stamp: '2015-11-09T13:05:18.665'
    :fsm_status: nop
    :fsm_try: '0'
    :int_id: '37189'
    :name: qos-1
    :policy_level: '0'
    :policy_owner: local
  :fabric_udld_policy:
    :descr: ''
    :dn: org-root/udld-policy
    :int_id: '27887'
    :msg_interval: '15'
    :name: default
    :policy_level: '0'
    :policy_owner: local
    :recovery_action: none
  :org_org:
    :descr: ''
    :dn: org-root/org-Finance
    :flt_aggr: '21474836490'
    :level: '1'
    :name: Finance
    :perm_access: 'yes'
  :compute_psu_policy:
    :descr: ''
    :dn: org-root/psu-policy
    :int_id: '27866'
    :name: PSUPolicy
    :policy_level: '0'
    :policy_owner: local
    :redundancy: n+1
  :org_source_mask:
    :dn: org-root/src-mask
    :mask: local
  :vnic_vnic_beh_policy:
    :action: hw-inherit
    :descr: ''
    :dn: org-root/beh-vnic
    :int_id: '27867'
    :name: vnic-default
    :nw_templ_name: ''
    :policy_level: '0'
    :policy_owner: local
    :type: vnic
  :vnic_vhba_beh_policy:
    :action: none
    :descr: ''
    :dn: org-root/beh-vhba
    :int_id: '27868'
    :name: vhba-default
    :nw_templ_name: ''
    :policy_level: '0'
    :policy_owner: local
    :type: vhba
  :sysdebug_m_ep_log_policy:
    :descr: ''
    :dn: org-root/log-SEL
    :int_id: '27869'
    :name: sel
    :policy_level: '0'
    :policy_owner: local
    :type: SEL
