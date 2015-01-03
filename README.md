## phone_accel
===========
Simple set of R scripts to read and process phone accelerometer data collected using phone accelerometer app.

## Data
Data collected using SONY Xperia ST27i mobile phone running Accelerometer Monitor by Mobile Tools

### Raw Data File Format from Phone
Line 1:   \# Accelerometer Values
Line 2:   \# filename:  default.txt
Line 3:   \# Saving start time: **Ddd Mmm DD HH:MM:SS TZ YYYY**
Line 4:   **[BLANK]**
Line 5:   \# sensor resolution: 0.1m/s^2
Line 6:   \#Sensorvendor: ST Microelectronic, name: ST accelerometer, type: 1,version : 104, range 16.0
Line 7: 
Line 8:   \# X value, Y value, Z value, time diff in ms
Line 9:   **[First line of data]**
Line N-2: **[Last line of data]**
Line N-1: \# end
Line N-1: \# **Ddd Mmm DD HH:MM:SS TZ YYYY**

**Example data record: 0.061 -0.029 -0.093 32**


