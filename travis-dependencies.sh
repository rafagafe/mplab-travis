#/usr/bin/env sh

# Save the current working directory
pushd .

# Create a folder for the installation files.
mkdir ../install-dependencies
cd ../install-dependencies



### IDE
# Install MPLAB X IDE v4.05

echo "Downloading MPLAB X IDE v4.05..."
wget http://ww1.microchip.com/downloads/en/DeviceDoc/MPLABX-v4.05-linux-installer.tar
echo "Download finished..."

echo "Unpacking MPLABX-v4.05-linux-installer.tar..."
tar -xvf MPLABX-v4.05-linux-installer.tar
echo "Unpack finished..."

echo "Installing MPLAB X IDE v4.05..."
sudo ./MPLABX-v4.05-linux-installer.sh -- --mode unattended
echo "Installation of MPLAB X IDE v4.05 finished..."
echo


### Compiler
# Install MPLAB XC16 Compiler v1.31

echo "Downloading MPLAB XC16 Compiler v1.31"
wget http://ww1.microchip.com/downloads/en/DeviceDoc/xc16-v1.31-full-install-linux-installer.run
echo "- Download finished...        -"

echo "Adding excecution rights..."
chmod +x xc16-v1.31-full-install-linux-installer.run

echo "Installing MPLAB XC16 Compiler v1.31"
sudo ./xc16-v1.31-full-install-linux-installer.run --mode unattended --netservername dontknow
echo "Installation of MPLAB XC16 Compiler v1.31 finished..."
echo

# Return to the saved working directory
popd

echo "All installations finished"
echo