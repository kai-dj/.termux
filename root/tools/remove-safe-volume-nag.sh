# root required! tsudo would only work, if /system/bin in $PATH - so "su -c" is used instead
su -c 'mount -o rw,remount /product' &&
su -c 'sed -i "s#ro.config.hw.security_volume=8#ro.config.hw.security_volume=0#g" /product/etc/prop/local.prop' &&
su -c 'mount -o ro,remount /product' &&
echo "nag should be removed"
