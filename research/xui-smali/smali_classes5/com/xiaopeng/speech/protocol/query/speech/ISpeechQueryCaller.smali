.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public appIsInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public carHasScreen(I)I
    .locals 1
    .param p1, "display_location"    # I

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getCarPlatForm()Ljava/lang/String;
.end method

.method public getCfcVehicleLevel()I
    .locals 1

    .line 141
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getCurrentMode()I
.end method

.method public getCurrentTtsEngine()I
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public getDialogTurnMode()I
    .locals 1

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstSpeechState()I
    .locals 1

    .line 83
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getSoundLocation()I
.end method

.method public getTTSPositionMode()I
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public getTTSToneType()I
    .locals 1

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getVuiSceneSwitchStatus()I
    .locals 1

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public homeSpaceSeatFlags()[I
    .locals 1

    .line 217
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public ifAdvancedSettingsOpen()I
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public ifDefaultWakeupOpen()Z
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public ifFastSpeechEnable()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public ifFullTimeSpeechEnable()I
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public ifMultiSpeechEnable()I
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportFastSpeech()I
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportMulti()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportWaitAwake()I
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAccountLogin()Z
.end method

.method public abstract isAppForeground(Ljava/lang/String;)Z
.end method

.method public abstract isAppOpen(Ljava/lang/String;)I
.end method

.method public abstract isEnableGlobalWakeup()Z
.end method

.method public isNapaTop(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public isNaviTop(I)Z
    .locals 1
    .param p1, "display_location"    # I

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenOn(I)Z
    .locals 1
    .param p1, "display_location"    # I

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport5dCinema()Z
    .locals 1

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSport()Z
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isUserExpressionOpened()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public screenAppIsFull(I)Z
    .locals 1
    .param p1, "displayLocation"    # I

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public screenCurrentBack(I)I
    .locals 1
    .param p1, "display_location"    # I

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public screenFullAppInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "displayLocation"    # I

    .line 245
    const-string v0, ""

    return-object v0
.end method

.method public screenGoHome(I)I
    .locals 1
    .param p1, "display_location"    # I

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public screenisDesktop(I)I
    .locals 1
    .param p1, "display_location"    # I

    .line 209
    const/4 v0, 0x1

    return v0
.end method
