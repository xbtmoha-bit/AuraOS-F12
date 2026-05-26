#!/bin/bash
echo "=== بدء دمج خصائص نظام AuraOS لهاتف Samsung F12 ==="

# 1. تفعيل ضغط الذاكرة المتقدم (zRAM LZ4) وتعطيل الرام الافتراضية البطيئة
echo "ro.vendor.qti.config.zram=true" >> vendor/samsung/m12nsxx/system.prop
echo "ro.lmk.kill_heaviest_task=true" >> vendor/samsung/m12nsxx/system.prop
echo "ro.config.low_ram=false" >> vendor/samsung/m12nsxx/system.prop

# 2. تعطيل التأثيرات الضبابية الثقيلة (Live Blur) لحماية معالج الرسوميات وإعطاء سلاسة iOS
echo "ro.surface_flinger.supports_background_blur=0" >> vendor/samsung/m12nsxx/system.prop
echo "ro.sf.blurs_are_expensive=1" >> vendor/samsung/m12nsxx/system.prop

# 3. إجبار النظام على استخدام كارت الشاشة في معالجة الواجهة (Hardware Acceleration)
echo "debug.hwui.renderer=skiavk" >> vendor/samsung/m12nsxx/system.prop

echo "=== اكتمل دمج هوية AuraOS بنجاح ==="
