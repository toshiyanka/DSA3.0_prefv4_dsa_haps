option set dc_root $env(SYNOPSYS)
option set continue_on_error 0
option set auto_export_reports 1
option set vlog_std sysv
option set allow_duplicate_modules 0
option set speed_grade -1
option set fix_gated_and_generated_clocks 1
option set rw_check_on_ram 0
option set multi_file_compilation_unit 1
option set design_flow partition
option set synthesis_onoff_pragma 1
option set max_parallel_jobs 24
option set automatic_compile_point 0
option set use_fsm_explorer 0
option set maxfan 10000
option set disable_io_insertion 0
option set retiming 0
option set no_sequential_opt 0
option set pipe 1
option set resource_sharing 1
option set fix_gated_and_generated_clocks 1
option set enable_prepacking 1
option set verification_mode 0
option set write_verilog 1
option set dw_foundation 1
option set auto_infer_blackbox 0
option set distributed_compile 0
option set distributed_synthesis 0
option set debug_dumpvars 1

if {[string compare $env(HARDWARE) HAPS-100] == 0} {
# Put HAPS-100 specific options here
    option set dw_minpower 0
    option set dw_stop_on_nolic 0
    option set beta_vfeatures 0
    option set beta_vhfeatures 0
}

if { $env(ENABLE_CDPL) == 1 }  {
# distributed_compile needs to be set to 1 if cdpl has to be enabled.
    option set cdpl 1
    option set distributed_compile 1

    if { $env(CDPL_DISTRIBUTED_SYNTHESIS) == 1 }  {
        option set distributed_synthesis 1
    }

    set env(CDPL_LOGDIR) $env(LOG_DIR)/CDPL_LOGS
}

# User provided configuration options
# source <project-specific-option.tcl>
