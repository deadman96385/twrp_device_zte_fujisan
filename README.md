## TWRP device tree for ZTE Axon M (fujisan)

Add to `.repo/local_manifests/fujisan.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/zte/fujisan" name="android_device_zte_fujisan" remote="TeamWin" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_fujisan-eng
make -j5 recoveryimage
```
