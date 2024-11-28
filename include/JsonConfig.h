#ifndef JSONCONFIG_H
#define JSONCONFIG_H

#include <fstream>
#include <nlohmann/json.hpp>
#include "HeadsetConfig.h"

using json = nlohmann::json;

class JsonConfig
{
public:
    static void to_json(json& j, const HeadsetConfig& config)
    {
        j = json{
            {"sleep", config.sleep},
            {"micMuted", config.micMuted},
            {"muted", config.muted},
            {"voice", config.voice},
            {"mic_monitor", config.mic_monitor},
            {"choices", config.choices}
        };
    }

    static void from_json(const json& j, HeadsetConfig& config)
    {
        j.at("sleep").get_to(config.sleep);
        j.at("micMuted").get_to(config.micMuted);
        j.at("muted").get_to(config.muted);
        j.at("voice").get_to(config.voice);
        j.at("mic_monitor").get_to(config.mic_monitor);
        j.at("choices").get_to(config.choices);
    }

    static void writeConfig(const std::string& filename, const HeadsetConfig& config)
    {
        json j = config;
        std::ofstream file(filename);
        if (file.is_open())
        {
            file << j.dump(4);
            file.close();
        }
    }

    static void readConfig(const std::string& filename, HeadsetConfig& config)
    {
        std::ifstream file(filename);
        if (file.is_open())
        {
            json j;
            file >> j;
            config = j.get<HeadsetConfig>();
            file.close();
        }
    }
};

#endif