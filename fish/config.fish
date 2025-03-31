source /usr/share/cachyos-fish-config/cachyos-config.fish
# Tide Configuration

set -x HSA_OVERRIDE_GFX_VERSION 11.0.0
set -x HIP_VISIBLE_DEVICES 0
set -x ROCR_VISIBLE_DEVICES 0
set -x PATH $PATH /opt/rocm/bin /opt/rocm/opencl/bin

set -x OLLAMA_FLASH_ATTENTION 1
set -x OLLAMA_KV_CACHE_TYPE q8_0
