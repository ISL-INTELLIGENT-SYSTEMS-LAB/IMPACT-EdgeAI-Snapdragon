#!/bin/sh
export LD_LIBRARY_PATH=/data/matt/impact_data/artifacts/aarch64-oe-linux-gcc8.2/lib:$LD_LIBRARY_PATH
export ADSP_LIBRARY_PATH="/data/matt/impact_data/artifacts/aarch64-oe-linux-gcc8.2/lib;/system/lib/rfsa/adsp;/usr/lib/rfsa/adsp;/system/vendor/lib/rfsa/adsp;/dsp;/etc/images/dsp;"
cd /data/matt/impact_data/mars_quant
rm -rf output
/data/matt/impact_data/artifacts/aarch64-oe-linux-gcc8.2/bin/snpe-net-run --container mars_quant.dlc --input_list input_list_raw.txt --output_dir output --use_gpu --userbuffer_auto --perf_profile high_performance --profiling_level basic
