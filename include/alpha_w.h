#ifndef __ALPHA_W_H
#define __ALPHA_W_H

#include <array>
#include <cstring>
#include <hidapi/hidapi.h>
#include <iomanip>
#include <iostream>
#include <libudev.h>
#include <stdexcept>
#include <wchar.h>

#define VENDOR_ID 0x03f0
#define PRODUCT_ID 0x098d
#define MAX_STR 255

enum connection_status
{
	DISCONNECTED = 0,
	CONNECTED = 1
};
enum sleep_time
{
	S10 = 10,
	S20 = 20,
	S30 = 30,
	S0 = 0
};

enum class commands : int
{
	STATUS_REQUEST = 0x21bb0b00,
	PING = 0x21bb0c00,
	GET_INDENTIFIER = 0x21bb0d00,
	CONNECTION_STATE = 0x21bb0300,
	MICROPHONE_STATE = 0x21bb0500,
	VOICE_STATE = 0x21bb0900,
	VOICE_PROMPTS = 0x21bb1301,
	VOICE_PROMPTS_OFF = 0x21bb1300,
	MIC_MONITOR_STATE = 0x21bb0a00,
	MICROPHONE_MONITOR = 0x21bb1001,
	MICROPHONE_MONITOR_OFF = 0x21bb1000,
	SLEEP_STATE = 0x21bb0700,
	SLEEP_TIMER_NONE = 0x21bb1200,
	SLEEP_TIMER_10 = 0x21bb120a,
	SLEEP_TIMER_20 = 0x21bb1214,
	SLEEP_TIMER_30 = 0x21bb121e
};

class headset
{
public:
	headset()
	{
		if (hid_init() < 0)
		{
			throw std::runtime_error("Failed to initialize HIDAPI");
		};
		std::cout << "HIDAPI version:" << hid_version_str() << std::endl;
	}

	~headset()
	{
		if (handle != NULL)
		{
			hid_close(handle);
		}
		hid_exit();
	}

	int read(unsigned char *buffer) { return hid_read(handle, buffer, 32); }

	void send_command(commands cmd)
	{
		// std::cout << "Sending command 0x" << std::hex << (int)cmd << std::endl;
		unsigned char bytes[4];
		bytes[0] = ((long)cmd >> 24) & 0xff;
		bytes[1] = ((long)cmd >> 16) & 0xff;
		bytes[2] = ((long)cmd >> 8) & 0xff;
		bytes[3] = (long)cmd & 0xff;
		int written = hid_write(handle, bytes, 4);
		if (written == -1)
		{
			std::cerr << "Error on sending command 0x" << std::hex << (int)cmd << ": " << hid_error(handle) << std::endl;
		}
	}

	bool init()
	{
		std::cout << "Initializing HIDAPI..." << std::endl;
		handle = hid_open(VENDOR_ID, PRODUCT_ID, NULL);
		if (handle == NULL)
		{
			std::cerr << "Failed to open HID device." << std::endl;
			return false;
		}
		std::cout << "HID device opened successfully." << std::endl;

		int res = 0;
		wchar_t man[MAX_STR], prod[MAX_STR], ser[MAX_STR];
		res += hid_get_manufacturer_string(handle, man, MAX_STR);
		if (res < 0)
		{
			std::cerr << "Failed to get manufacturer string." << std::endl;
			return false;
		}
		res += hid_get_product_string(handle, prod, MAX_STR);
		if (res < 0)
		{
			std::cerr << "Failed to get product string." << std::endl;
			return false;
		}
		res += hid_get_serial_number_string(handle, ser, MAX_STR);
		if (res < 0)
		{
			std::cerr << "Failed to get serial number string." << std::endl;
			return false;
		}

		manufacturer = std::wstring(man);
		product = std::wstring(prod);
		serial = std::wstring(ser);

		std::wcout << "Manufacturer: " << manufacturer << std::endl;
		std::wcout << "Product: " << product << std::endl;
		std::wcout << "Serial: " << serial << std::endl;

		return true;
	}

	std::wstring print_manufacturer() { return manufacturer; }
	std::wstring print_product() { return product; }
	std::wstring print_serial() { return serial; }

private:
	std::wstring manufacturer;
	std::wstring product;
	std::wstring serial;
	hid_device *handle;
};
#endif
