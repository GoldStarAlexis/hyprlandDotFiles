source /usr/share/cachyos-fish-config/cachyos-config.fish
# Tide Configuration

set -x HSA_OVERRIDE_GFX_VERSION 11.0.0
set -x HIP_VISIBLE_DEVICES 0
set -x ROCR_VISIBLE_DEVICES 0
set -x PATH $PATH /opt/rocm/bin /opt/rocm/opencl/bin

set -x OLLAMA_FLASH_ATTENTION 1
set -x OLLAMA_KV_CACHE_TYPE q8_0

function command_not_found_handler
    set lines \
        "❌ Pathetic. That’s not even a real command." \
        "🫦 Did your little fingers slip, pet?" \
        "👠 Maybe you're not ready for me after all." \
        "📛 Ugh… what *was* that supposed to be?"

    printf "%s\n" (random choice $lines) | lolcat --seed=(random) --force || printf "❌ Try again."
end
