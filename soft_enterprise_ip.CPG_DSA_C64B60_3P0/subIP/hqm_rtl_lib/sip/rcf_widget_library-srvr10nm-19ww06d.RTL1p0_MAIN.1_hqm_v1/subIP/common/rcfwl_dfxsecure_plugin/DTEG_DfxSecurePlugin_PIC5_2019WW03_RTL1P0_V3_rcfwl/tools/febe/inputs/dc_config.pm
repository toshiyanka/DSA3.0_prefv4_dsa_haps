package dc_config;

sub get_data() {
    my $data = {
        'SETUP' => {
		-passthru_vars   => [ 'IP_ROOT','PROCESS','CTECH_LIBRARY','CTECH_TYPE', 'IP_RELEASE', 'ACE_ENG', 'ACE_PWA_DIR', 'MODEL_ROOT', 'REPO_ROOT' ],
	   # -setup_options -d -w none -ot $ENV/tmp/sprusty/ip-gpio-cnllp-sip14-febe-14ww41.5/config/dc/ot/CNPLP.ot
	   # -extra_commands => ["cp --remove-destination $ENV{REPO_ROOT}/tools/syn/scripts/block_setup.tcl \$WARD/syn/scripts/"],
        },
        'dc_sip' => {
            -setenv => {
            },
            -unsetenv => "SD_TARGET_MAX_LIB LIB_VARIANT",
        },
        'fv_sip' => {
            
        },
        'lintra_build' => { 
				-command => "ace -ccolt -mc dfxsecure_plugin_lint_model",
		  },
        'lintra_elab'  => {
            -command     => "ace -sc -noepi",
        },
        'spyglass_build' => {
				-command => 'ace -ccsg -vlog_opts "+define+INTEL_SVA_OFF"',
        },
        'spyglass_lp' => {
            #-args => '-ASSIGN -mc=spyglass_pncra,spyglass_pncrb -static_check_cfg_file=tools/isaf/LBG/pncra/scripts/ace_static_check.cfg -noenable_runsim_postsim_checks -spyglass_goals lp_fe/power_verif_noninstr',
				-ace_args => '-sc -vlog_opts +define+INTEL_SVA_OFF',
        },
       'sgdft' => {
           drc => {
               -ace_args => '-noenable_runsim_postsim_checks',
           },
       },

        'power_artist' => {
          -unsetenv => "",
          -setenv => { LM_PROJECT => "MCD_CPDM_CANNONLAKE-PCH-LP", },
          -ctech_type => "d04",
          -ctech_variant => "wn",
        },
        'SYN_CALIBER' => {
            -extra_commands1 => [
                 'setenv CIM_CFG /p/hdk/cad/stdcells/d04/15ww09.1_d04_prj_hdk73_SD1.7.10/cim/cim.cfg.tcl',
                 'setenv CIM_DB /p/hdk/cad/stdcells/d04/15ww09.1_d04_prj_hdk73_SD1.7.10/cim/cim.db.tcl',
                       ],
                     },
        zirconqa => {
            -args   => '-ipconfigid 88364 -dssmsid 48231 -app SIP -verbose3 -alias "dfxsecure_plugin|DFxSecurePlugin" -rpt',
        },
    };

    return $data;
}

1;

