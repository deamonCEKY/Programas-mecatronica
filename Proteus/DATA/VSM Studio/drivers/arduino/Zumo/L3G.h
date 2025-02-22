#ifndef L3G_h
#define L3G_h

#include <Arduino.h> // for byte data type

class L3G
{
  public:
    template <typename T> struct vector
    {
      T x, y, z;
    };

    enum deviceType { device_4200D, device_D20, device_D20H, device_auto };
    enum sa0State { sa0_low, sa0_high, sa0_auto };

    // register addresses
    enum regAddr
    {
       WHO_AM_I       = 0x0F,

       CTRL1          = 0x20, // D20H
       CTRL_REG1      = 0x20, // D20, 4200D
       CTRL2          = 0x21, // D20H
       CTRL_REG2      = 0x21, // D20, 4200D
       CTRL3          = 0x22, // D20H
       CTRL_REG3      = 0x22, // D20, 4200D
       CTRL4          = 0x23, // D20H
       CTRL_REG4      = 0x23, // D20, 4200D
       CTRL5          = 0x24, // D20H
       CTRL_REG5      = 0x24, // D20, 4200D
       REFERENCE      = 0x25,
       OUT_TEMP       = 0x26,
       STATUS         = 0x27, // D20H
       STATUS_REG     = 0x27, // D20, 4200D

       OUT_X_L        = 0x28,
       OUT_X_H        = 0x29,
       OUT_Y_L        = 0x2A,
       OUT_Y_H        = 0x2B,
       OUT_Z_L        = 0x2C,
       OUT_Z_H        = 0x2D,

       FIFO_CTRL      = 0x2E, // D20H
       FIFO_CTRL_REG  = 0x2E, // D20, 4200D
       FIFO_SRC       = 0x2F, // D20H
       FIFO_SRC_REG   = 0x2F, // D20, 4200D

       IG_CFG         = 0x30, // D20H
       INT1_CFG       = 0x30, // D20, 4200D
       IG_SRC         = 0x31, // D20H
       INT1_SRC       = 0x31, // D20, 4200D
       IG_THS_XH      = 0x32, // D20H
       INT1_THS_XH    = 0x32, // D20, 4200D
       IG_THS_XL      = 0x33, // D20H
       INT1_THS_XL    = 0x33, // D20, 4200D
       IG_THS_YH      = 0x34, // D20H
       INT1_THS_YH    = 0x34, // D20, 4200D
       IG_THS_YL      = 0x35, // D20H
       INT1_THS_YL    = 0x35, // D20, 4200D
       IG_THS_ZH      = 0x36, // D20H
       INT1_THS_ZH    = 0x36, // D20, 4200D
       IG_THS_ZL      = 0x37, // D20H
       INT1_THS_ZL    = 0x37, // D20, 4200D
       IG_DURATION    = 0x38, // D20H
       INT1_DURATION  = 0x38, // D20, 4200D

       LOW_ODR        = 0x39  // D20H
    };

    vector<int16_t> g; // gyro angular velocity readings

    byte last_status; // status of last I2C transmission

    L3G(void);

    // Initializes the library with the device being used (@device_4200D@, @device_D20@, @device_D20H@, or @device_auto@)
    // and the state of the SA0 pin (@sa0_low@, @sa0_high@, or @sa0_auto@), which determines the least significant bit of
    // the I�C slave address. Constants for these arguments are defined in L3G.h. Both of these arguments are optional;
    // if they are not specified, the library will try to automatically detect the device and slave address, and it will
    // return a boolean indicating whether the type of L3G device was successfully determined (if necessary).
    bool init(deviceType device = device_auto, sa0State sa0 = sa0_auto);

    // Returns the device type specified to or detected by @init()@.
    deviceType getDeviceType(void) { return _device; }

    // Turns on the gyro and enables a consistent set of default settings.
    // This function will set the gyro's full scale to be +/-250 dps (degrees per second), which means that a reading of
    // 114 corresponds to approximately 1 dps. See the comments in L3G.cpp for a full explanation of these settings.
    void enableDefault(void);

    // Writes a gyro register with the given value. Register address constants are defined by the regAddr enumeration
    // type in L3G.h.
    //    Example use: @gyro.writeReg(L3G::CTRL_REG1, 0x6F);@
    void writeReg(byte reg, byte value);

    // Reads a gyro register and returns the value read.
    byte readReg(byte reg);

    // Takes a reading from the gyro and stores the values in the vector @g@.
    void read(void);

    // Sets a timeout period for @read()@, in milliseconds, after which it will abort if no data is received. A value of
    // 0 disables the timeout.
    void setTimeout(unsigned int timeout);

    // Returns the current timeout period setting.
    unsigned int getTimeout(void);

    // Returns a boolean indicating whether a call to @read()@ has timed out since the last call to @timeoutOccurred()@.
    bool timeoutOccurred(void);

    // vector functions
    template <typename Ta, typename Tb, typename To> static void vector_cross(const vector<Ta> *a, const vector<Tb> *b, vector<To> *out);
    template <typename Ta, typename Tb> static float vector_dot(const vector<Ta> *a, const vector<Tb> *b);
    static void vector_normalize(vector<float> *a);

  private:
      deviceType _device; // chip type (D20H, D20, or 4200D)
      byte address;

      unsigned int io_timeout;
      bool did_timeout;

      int testReg(byte address, regAddr reg);
};

template <typename Ta, typename Tb, typename To> void L3G::vector_cross(const vector<Ta> *a, const vector<Tb> *b, vector<To> *out)
{
  out->x = (a->y * b->z) - (a->z * b->y);
  out->y = (a->z * b->x) - (a->x * b->z);
  out->z = (a->x * b->y) - (a->y * b->x);
}

template <typename Ta, typename Tb> float L3G::vector_dot(const vector<Ta> *a, const vector<Tb> *b)
{
  return (a->x * b->x) + (a->y * b->y) + (a->z * b->z);
}

#endif



