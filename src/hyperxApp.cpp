#include "hyperxApp.h"
#include "hyperxFrame.h"
#include <sys/param.h>
#include <fstream>
#include <nlohmann/json.hpp>
#include <filesystem>

using json = nlohmann::json;

// App
hyperxApp::hyperxApp() {}
hyperxApp::~hyperxApp()
{
    // Save headset data to config.json
    std::ofstream configFile(m_frame->getRunDir().ToStdString() + "config.json");
    if (configFile.is_open()) {
        json j = m_frame->getHeadsetData(); // Use the to_json function
        configFile << j.dump(4);
        configFile.close();
    }
}

hyperxFrame *m_frame;

bool hyperxApp::OnInit()
{
    wxImage::AddHandler(new wxPNGHandler);
    char resolved_path[256];
    realpath(argv[0], resolved_path);
    wxString c(resolved_path);
    c.erase(c.end() - 6, c.end());
    try
    {
        m_frame = new hyperxFrame(_T("HyperX"), wxDefaultPosition, wxSize(400, 400), c);
        if (std::filesystem::exists(c.ToStdString() + "config.json"))
        {
            std::ifstream configFile(c.ToStdString() + "config.json");
            if (configFile.is_open()) {
                json j;
                configFile >> j;
                m_frame->setHeadsetData(j);
                configFile.close();
            }
        }
    }
    catch (std::exception &e)
    {
        std::cout << e.what() << std::endl;
        return false;
    }
    SetTopWindow(m_frame);
    return true;
}

// start the application from here
wxIMPLEMENT_APP(hyperxApp);