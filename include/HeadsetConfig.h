#ifndef HEADSETCONFIG_H
#define HEADSETCONFIG_H

#include <wx/arrstr.h>
#include "alpha_w.h"

struct HeadsetConfig
{
    // Constructor
    HeadsetConfig()
        : sleep(S0), micMuted(false), muted(false), voice(false), mic_monitor(false), choices({_T("30 Minutes"), _T("20 Minutes"), _T("10 Minutes"), _T("Never")}) {}

    // Member variables
    sleep_time sleep;
    bool micMuted;
    bool muted;
    bool voice;
    bool mic_monitor;
    const wxArrayString choices;
};

#endif