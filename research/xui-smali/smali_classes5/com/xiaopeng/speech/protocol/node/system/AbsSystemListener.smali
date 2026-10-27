.class public abstract Lcom/xiaopeng/speech/protocol/node/system/AbsSystemListener;
.super Ljava/lang/Object;
.source "AbsSystemListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/system/SystemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothOff()V
    .locals 0

    .line 64
    return-void
.end method

.method public onBluetoothOn()V
    .locals 0

    .line 69
    return-void
.end method

.method public onBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 119
    return-void
.end method

.method public onBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 194
    return-void
.end method

.method public onBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 114
    return-void
.end method

.method public onBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 109
    return-void
.end method

.method public onHeadsetMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 239
    return-void
.end method

.method public onIcmBrightnessDown()V
    .locals 0

    .line 134
    return-void
.end method

.method public onIcmBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 169
    return-void
.end method

.method public onIcmBrightnessMax()V
    .locals 0

    .line 129
    return-void
.end method

.method public onIcmBrightnessMin()V
    .locals 0

    .line 139
    return-void
.end method

.method public onIcmBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 189
    return-void
.end method

.method public onIcmBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 164
    return-void
.end method

.method public onIcmBrightnessUp()V
    .locals 0

    .line 124
    return-void
.end method

.method public onIcmBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 159
    return-void
.end method

.method public onOpenSettingPage()V
    .locals 0

    .line 149
    return-void
.end method

.method public onOpenWifiPage()V
    .locals 0

    .line 144
    return-void
.end method

.method public onScreenBrightnessAutoOff()V
    .locals 0

    .line 209
    return-void
.end method

.method public onScreenBrightnessAutoOn()V
    .locals 0

    .line 204
    return-void
.end method

.method public onScreenBrightnessDown()V
    .locals 0

    .line 24
    return-void
.end method

.method public onScreenBrightnessMax()V
    .locals 0

    .line 19
    return-void
.end method

.method public onScreenBrightnessMin()V
    .locals 0

    .line 29
    return-void
.end method

.method public onScreenBrightnessStop()V
    .locals 0

    .line 199
    return-void
.end method

.method public onScreenBrightnessUp()V
    .locals 0

    .line 14
    return-void
.end method

.method public onScreenModeClean()V
    .locals 0

    .line 49
    return-void
.end method

.method public onScreenOff()V
    .locals 0

    .line 174
    return-void
.end method

.method public onScreenOn()V
    .locals 0

    .line 179
    return-void
.end method

.method public onSettingOpen()V
    .locals 0

    .line 154
    return-void
.end method

.method public onSoundEffectField(I)V
    .locals 0
    .param p1, "field"    # I

    .line 244
    return-void
.end method

.method public onSoundEffectMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 249
    return-void
.end method

.method public onSoundEffectScene(I)V
    .locals 0
    .param p1, "scene"    # I

    .line 254
    return-void
.end method

.method public onSoundEffectStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 259
    return-void
.end method

.method public onThemeModeAuto()V
    .locals 0

    .line 34
    return-void
.end method

.method public onThemeModeDay()V
    .locals 0

    .line 39
    return-void
.end method

.method public onThemeModeNight()V
    .locals 0

    .line 44
    return-void
.end method

.method public onVolumeDown(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
    .locals 0
    .param p1, "volumeValue"    # Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    .line 79
    return-void
.end method

.method public onVolumeMax(I)V
    .locals 0
    .param p1, "steamType"    # I

    .line 84
    return-void
.end method

.method public onVolumeMin(I)V
    .locals 0
    .param p1, "steamType"    # I

    .line 89
    return-void
.end method

.method public onVolumeMute(I)V
    .locals 0
    .param p1, "steamType"    # I

    .line 94
    return-void
.end method

.method public onVolumeNotificationDown()V
    .locals 0

    .line 234
    return-void
.end method

.method public onVolumeNotificationMax()V
    .locals 0

    .line 214
    return-void
.end method

.method public onVolumeNotificationMedium()V
    .locals 0

    .line 219
    return-void
.end method

.method public onVolumeNotificationMin()V
    .locals 0

    .line 224
    return-void
.end method

.method public onVolumeNotificationUp()V
    .locals 0

    .line 229
    return-void
.end method

.method public onVolumeResume()V
    .locals 0

    .line 104
    return-void
.end method

.method public onVolumeSet(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
    .locals 0
    .param p1, "volumeValue"    # Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    .line 184
    return-void
.end method

.method public onVolumeUnmute(I)V
    .locals 0
    .param p1, "steamType"    # I

    .line 99
    return-void
.end method

.method public onVolumeUp(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V
    .locals 0
    .param p1, "volumeValue"    # Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    .line 74
    return-void
.end method

.method public onWifiOff()V
    .locals 0

    .line 54
    return-void
.end method

.method public onWifiOn()V
    .locals 0

    .line 59
    return-void
.end method
