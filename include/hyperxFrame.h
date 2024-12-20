#ifndef __HYPERXFRAME_H
#define __HYPERXFRAME_H

#include <thread>
#include <wx/taskbar.h>
#include <wx/wx.h>
#include <atomic>
#include <nlohmann/json.hpp>

#include "SwitchCtrl.h"
#include "alpha_w.h"
#include "HeadsetConfig.h"

// main window
class hyperxFrame : public wxFrame {
public:
	hyperxFrame(const wxChar *title, const wxPoint &pos, const wxSize &size, const wxChar *runDir);
	void setHeadsetData(const nlohmann::json& jsonData);
	HeadsetConfig getHeadsetData();
	wxString getRunDir() const;
	HeadsetConfig getConfig() { return m_config; }

private:
	// Main layout
	wxTaskBarIcon taskBarIcon;
	wxMenu *taskMenu;
	wxIcon wicon;
	wxButton *quitButton;
	wxButton *hideButton;
	wxString m_runDir;
	wxStaticText *statusLabel;
	bool dialogShown = false;

	// audiobox
	wxStaticText *micMuteLabel;
	wxSwitchCtrl *micMute;
	wxStaticText *muteLabel;
	wxSwitchCtrl *mute;
	wxStaticText *micVolumeLabel;
	wxSlider *micVolume;
	wxStaticText *volumeLabel;
	wxSlider *volume;

	// features box
	wxStaticText *sleepTimerLabel;
	wxChoice *sleepTimer;
	wxStaticText *voicePromptLabel;
	wxSwitchCtrl *voicePrompt;
	wxStaticText *micMonitorLabel;
	wxSwitchCtrl *micMonitor;

	// headset data
	headset *m_headset;
	HeadsetConfig m_config;

	//TODO use a struct to represent this data
	// sleep_time sleep;
	connection_status status;
	unsigned int battery;
	// bool micMuted;
	// bool muted;
	// bool voice;
	// bool mic_monitor;
	unsigned long identifier;
	// const wxArrayString choices = {_T("30 Minutes"), _T("20 Minutes"), _T("10 Minutes"), _T("Never")};

	// callback functions for controls
	void createFrame();
	void setTaskIcon();
	void onConnect();
	void showWindow(wxTaskBarIconEvent &event);
	void showMenu(wxTaskBarIconEvent &event);
	void on_micMute(wxCommandEvent &event);
	void on_micVolume(wxCommandEvent &event);
	void on_mute(wxCommandEvent &event);
	void on_volume(wxCommandEvent &event);
	void sleepChoice(wxCommandEvent &event);
	void voiceSwitch(wxCommandEvent &event); // hide button
	void micSwitch(wxCommandEvent &event);   // hide button
	void quit(wxCommandEvent &event);        // quit button

	// timer Event 5 seconds
	wxTimer *dialogTimer;
	wxTimer *timer;
	void on_timer(wxTimerEvent &event);

	// read loop for headset
	bool wanted;
	std::atomic<bool> running;
	std::thread t;
	std::thread pt;
	void read_loop();
};
#endif
