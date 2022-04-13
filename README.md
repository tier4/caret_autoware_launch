# caret_autoware_launch

## Structure

With this launcher, Autoware will run along with [CARET](https://github.com/tier4/CARET_doc).

Structure of the launcher depends on [autoware_launch](../autoware_launch/README.md), except for CARET.

## Package Dependencies

Please see `<exec_depend>` in `package.xml`.

## Usage

You can use the command as follows at shell script to launch `*.launch.xml` in `launch` directory.

```bash
ros2 launch caret_autoware_launch autoware.launch.xml map_path:=/path/to/map_folder vehicle_model:=lexus sensor_model:=aip_xx1 caret_session:=autoware_launch_trace
```
