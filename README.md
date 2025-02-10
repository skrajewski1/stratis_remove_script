Stratis Remove Script

This script automates the removal of Stratis filesystems, pools, and related configurations from your system.

Features
Automated Removal: Streamlines the process of deleting Stratis filesystems and pools.
Safety Checks: Ensures that the specified Stratis components exist before attempting removal.
Logging: Provides detailed output of actions taken for transparency and troubleshooting.
Requirements
Stratis CLI: Ensure that the Stratis command-line interface is installed and properly configured on your system.
Permissions: Administrative (root) privileges are required to execute the removal operations.
Usage
Clone the Repository:

bash
Copy
Edit
git clone https://github.com/skrajewski1/stratis_remove_script.git
cd stratis_remove_script
Make the Script Executable:

bash
Copy
Edit
chmod +x remove_stratis_filesystem.sh
Run the Script:

bash
Copy
Edit
sudo ./remove_stratis_filesystem.sh
Note: Running with sudo is necessary to perform system-level modifications.

License
This project is licensed under the GNU General Public License v3.0. See the LICENSE file for details.
