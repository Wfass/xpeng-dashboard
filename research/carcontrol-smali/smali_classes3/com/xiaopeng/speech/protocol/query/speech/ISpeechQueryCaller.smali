.class public interface abstract Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;
.super Ljava/lang/Object;
.source "ISpeechQueryCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public appIsInstalled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public carHasScreen(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract getCarPlatForm()Ljava/lang/String;
.end method

.method public getCfcVehicleLevel()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getCurrentMode()I
.end method

.method public getCurrentTtsEngine()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDialogTurnMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstSpeechState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getSoundLocation()I
.end method

.method public getTTSPositionMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTTSToneType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVuiSceneSwitchStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public homeSpaceSeatFlags()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 217
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

    const/4 v0, 0x0

    return v0
.end method

.method public ifDefaultWakeupOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifFastSpeechEnable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifFullTimeSpeechEnable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifMultiSpeechEnable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportFastSpeech()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportMulti()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ifSupportWaitAwake()I
    .locals 1

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
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isNaviTop(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isScreenOn(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSupport5dCinema()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportXSport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserExpressionOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public screenAppIsFull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public screenCurrentBack(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public screenFullAppInfo(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public screenGoHome(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public screenisDesktop(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
