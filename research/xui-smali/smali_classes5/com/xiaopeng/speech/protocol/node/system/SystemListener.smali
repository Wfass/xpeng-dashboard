.class public interface abstract Lcom/xiaopeng/speech/protocol/node/system/SystemListener;
.super Ljava/lang/Object;
.source "SystemListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onBluetoothOff()V
.end method

.method public abstract onBluetoothOn()V
.end method

.method public abstract onBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onHeadsetMode(I)V
.end method

.method public abstract onIcmBrightnessDown()V
.end method

.method public abstract onIcmBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onIcmBrightnessMax()V
.end method

.method public abstract onIcmBrightnessMin()V
.end method

.method public abstract onIcmBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onIcmBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onIcmBrightnessUp()V
.end method

.method public abstract onIcmBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
.end method

.method public abstract onOpenSettingPage()V
.end method

.method public abstract onOpenWifiPage()V
.end method

.method public abstract onScreenBrightnessAutoOff()V
.end method

.method public abstract onScreenBrightnessAutoOn()V
.end method

.method public abstract onScreenBrightnessDown()V
.end method

.method public abstract onScreenBrightnessMax()V
.end method

.method public abstract onScreenBrightnessMin()V
.end method

.method public abstract onScreenBrightnessStop()V
.end method

.method public abstract onScreenBrightnessUp()V
.end method

.method public abstract onScreenModeClean()V
.end method

.method public abstract onScreenOff()V
.end method

.method public abstract onScreenOn()V
.end method

.method public abstract onSettingOpen()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSoundEffectField(I)V
.end method

.method public abstract onSoundEffectMode(I)V
.end method

.method public abstract onSoundEffectScene(I)V
.end method

.method public abstract onSoundEffectStyle(I)V
.end method

.method public abstract onThemeModeAuto()V
.end method

.method public abstract onThemeModeDay()V
.end method

.method public abstract onThemeModeNight()V
.end method

.method public abstract onVolumeDown(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
.end method

.method public abstract onVolumeMax(I)V
.end method

.method public abstract onVolumeMin(I)V
.end method

.method public abstract onVolumeMute(I)V
.end method

.method public abstract onVolumeNotificationDown()V
.end method

.method public abstract onVolumeNotificationMax()V
.end method

.method public abstract onVolumeNotificationMedium()V
.end method

.method public abstract onVolumeNotificationMin()V
.end method

.method public abstract onVolumeNotificationUp()V
.end method

.method public abstract onVolumeResume()V
.end method

.method public abstract onVolumeSet(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
.end method

.method public abstract onVolumeUnmute(I)V
.end method

.method public abstract onVolumeUp(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
.end method

.method public abstract onWifiOff()V
.end method

.method public abstract onWifiOn()V
.end method
