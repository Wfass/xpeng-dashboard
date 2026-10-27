.class public Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "SpeechSensorQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected appIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter appIsInstalled , event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechUiQuery"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "packageName"

    const-string v0, ""

    .line 98
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->appIsInstalled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected carHasScreen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 208
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 210
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 213
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->carHasScreen(I)I

    move-result p1

    return p1
.end method

.method protected getCarPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCarPlatForm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCfcVehicleLevel()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCfcVehicleLevel()I

    move-result v0

    return v0
.end method

.method protected getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCurrentMode()I

    move-result p1

    return p1
.end method

.method protected getCurrentTtsEngine(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCurrentTtsEngine()I

    move-result p1

    return p1
.end method

.method protected getDialogTurnMode()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getDialogTurnMode()I

    move-result v0

    return v0
.end method

.method protected getFirstSpeechState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getFirstSpeechState()I

    move-result p1

    return p1
.end method

.method protected getSoundLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getSoundLocation()I

    move-result p1

    return p1
.end method

.method protected getTTSPositionMode()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getTTSPositionMode()I

    move-result v0

    return v0
.end method

.method protected getTTSToneType()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getTTSToneType()I

    move-result v0

    return v0
.end method

.method protected getVuiSceneSwitchStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getVuiSceneSwitchStatus()I

    move-result p1

    return p1
.end method

.method protected homeSpaceSeatFlags(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->homeSpaceSeatFlags()[I

    move-result-object p1

    return-object p1
.end method

.method protected ifDefaultWakeupOpen()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifDefaultWakeupOpen()Z

    move-result v0

    return v0
.end method

.method protected ifSupportFastSpeech()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportFastSpeech()I

    move-result v0

    return v0
.end method

.method protected ifSupportMulti()I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportMulti()I

    move-result v0

    return v0
.end method

.method protected ifSupportWaitAwake()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportWaitAwake()I

    move-result v0

    return v0
.end method

.method protected is(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p1, -0x1

    .line 145
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 147
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 150
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isScreenOn(I)Z

    move-result p1

    return p1
.end method

.method protected isAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAccountLogin()Z

    move-result p1

    return p1
.end method

.method protected isAdvancedSettingsOpen()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifAdvancedSettingsOpen()I

    move-result v0

    return v0
.end method

.method protected isAppForeground(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 32
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    .line 34
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAppForeground(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isAppOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 46
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pkg"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 53
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAppOpen(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected isEnableGlobalWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isEnableGlobalWakeup()Z

    move-result p1

    return p1
.end method

.method protected isFastSpeechOpen()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifFastSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isFullTimeSpeechOpen()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifFullTimeSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isMultiSpeechOpen()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifMultiSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isNapaTop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p1, -0x1

    .line 117
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 119
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 122
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isNapaTop(I)Z

    move-result p1

    return p1
.end method

.method protected isNaviTop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p1, -0x1

    .line 131
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 133
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 136
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isNaviTop(I)Z

    move-result p1

    return p1
.end method

.method protected isSupport5DCinema(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isSupport5dCinema()Z

    move-result p1

    return p1
.end method

.method protected isSupportXSport()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isSupportXSport()Z

    move-result v0

    return v0
.end method

.method protected isUserExpressionOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isUserExpressionOpened()Z

    move-result p1

    return p1
.end method

.method protected screenAppIsFull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 p1, 0x0

    .line 297
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 299
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 302
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 304
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenAppIsFull(I)Z

    move-result p1

    return p1
.end method

.method protected screenCurrentBack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 248
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 250
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 253
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 255
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenCurrentBack(I)I

    move-result p1

    return p1
.end method

.method protected screenFullAppInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x0

    .line 282
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 284
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 287
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenFullAppInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected screenGoHome(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 234
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 236
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 239
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenGoHome(I)I

    move-result p1

    return p1
.end method

.method protected screenisDesktop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 221
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 223
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 226
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenisDesktop(I)I

    move-result p1

    return p1
.end method
