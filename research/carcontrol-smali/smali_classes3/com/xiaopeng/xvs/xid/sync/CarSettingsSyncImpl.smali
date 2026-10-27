.class Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;
.super Ljava/lang/Object;
.source "CarSettingsSyncImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;


# instance fields
.field mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->get(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get24Format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "is_24_hour_format"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutoBrightnessEnable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_AUTO_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDarkLightAdaptation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_DARK_LIGHT_ADAPTATION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 264
    sget v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    return v0
.end method

.method public getFontScale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_FONT_SIZE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeneral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue",
            "isBindHabit"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getGeneral(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyAnnouncementVoice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_ANNOUNCEMENT_VOICE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyAppStoreNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_APP_STORE_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyCarControlNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_CAR_CONTROL_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyLbsMediumVoice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_LBS_MEDIUM_VOICE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyOperatingNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_OPERATING_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyOtaNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_OTA_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyPlayContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_PLAY_CONTENT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyRearScreenChildLock(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_REAR_SCREEN_CHILD_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyValetParkingAssistanceNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_VALET_PARKING_ASSISTANCE_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyVehicleCheckNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_VEHICLE_CHECK_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyXpMusicNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XP_MUSIC_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeyXpilotNotify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XPILOT_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMainDriverExclusive(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "main_driver_exclusive"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterAutoBrightness(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_METER_AUTO_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterDarkLightAdaptation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_METER_DARK_LIGHT_ADAPTATION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMeterVolume(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "meter_volume"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemSoundEnabled(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "system_sound_enable"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeDownInReverseMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_R_STALL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeDownWithDoorOpen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_DOOR_OPEN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->get(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put24Format(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "is_24_hour_format"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putAutoBrightnessEnable(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_AUTO_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putDarkLightAdaptation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_DARK_LIGHT_ADAPTATION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putFontScale(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_FONT_SIZE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyLbsMediumVoice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_LBS_MEDIUM_VOICE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putKeyXpMusicNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XP_MUSIC_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMainDriverExclusive(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "main_driver_exclusive"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterAutoBrightness(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_METER_AUTO_BRIGHTNESS"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterDarkLightAdaptation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_METER_DARK_LIGHT_ADAPTATION"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putMeterVolume(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "meter_volume"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putSystemSoundEnabled(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "system_sound_enable"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putVolumeDownInReverseMode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_R_STALL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putVolumeDownWithDoorOpen(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_DOOR_OPEN"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "isBindHabit"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->put(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->mWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setGeneral(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setKeyAnnouncementVoice(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_ANNOUNCEMENT_VOICE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyAppStoreNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_APP_STORE_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyCarControlNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_CAR_CONTROL_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyOperatingNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_OPERATING_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyOtaNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_OTA_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyPlayContent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_PLAY_CONTENT"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyRearScreenChildLock(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_REAR_SCREEN_CHILD_LOCK"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyValetParkingAssistanceNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_VALET_PARKING_ASSISTANCE_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyVehicleCheckNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_VEHICLE_CHECK_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setKeyXpilotNotify(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->getDefaultBindHabitType()I

    move-result v0

    const-string v1, "KEY_XPILOT_NOTIFY"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
