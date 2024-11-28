#include "HeadsetConfig.h"

// Serialization function
void to_json(nlohmann::json& j, const HeadsetConfig& config) {
    j = nlohmann::json{
        {"sleep", config.sleep},
        {"micMuted", config.micMuted},
        {"muted", config.muted},
        {"voice", config.voice},
        {"mic_monitor", config.mic_monitor},
        // Note: wxArrayString choices is not serialized here
    };
}

// Deserialization function
void from_json(const nlohmann::json& j, HeadsetConfig& config) {
    j.at("sleep").get_to(config.sleep);

    j.at("micMuted").get_to(config.micMuted);
    j.at("muted").get_to(config.muted);
    j.at("voice").get_to(config.voice);
    j.at("mic_monitor").get_to(config.mic_monitor);
    // Note: wxArrayString choices is not deserialized here
}