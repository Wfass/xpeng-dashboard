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

    .line 21
    return-void
.end method


# virtual methods
.method protected appIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "app.is.installed"
    .end annotation

    .line 94
    const-string v0, "SpeechUiQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter appIsInstalled , event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "packageName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->appIsInstalled(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 103
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 105
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected carHasScreen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "car.has.screen"
    .end annotation

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 214
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->carHasScreen(I)I

    move-result v1

    return v1
.end method

.method protected getCarPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.get.car.platform"
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCfcVehicleLevel()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "get.car.level"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCfcVehicleLevel()I

    move-result v0

    return v0
.end method

.method protected getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.current.mode"
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method protected getCurrentTtsEngine(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "tts.engine.status"
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getCurrentTtsEngine()I

    move-result v0

    return v0
.end method

.method protected getDialogTurnMode()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "dialog.turn.mode"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getDialogTurnMode()I

    move-result v0

    return v0
.end method

.method protected getFirstSpeechState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.first.status"
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getFirstSpeechState()I

    move-result v0

    return v0
.end method

.method protected getSoundLocation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.sound.location"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getSoundLocation()I

    move-result v0

    return v0
.end method

.method protected getTTSPositionMode()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "tts.position.mode"
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getTTSPositionMode()I

    move-result v0

    return v0
.end method

.method protected getTTSToneType()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "tts.tone.type"
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getTTSToneType()I

    move-result v0

    return v0
.end method

.method protected getVuiSceneSwitchStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.scene.switch.status"
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->getVuiSceneSwitchStatus()I

    move-result v0

    return v0
.end method

.method protected homeSpaceSeatFlags(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.homespace.meditation.seatflag"
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->homeSpaceSeatFlags()[I

    move-result-object v0

    return-object v0
.end method

.method protected ifDefaultWakeupOpen()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "default.wakeup.enable"
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifDefaultWakeupOpen()Z

    move-result v0

    return v0
.end method

.method protected ifSupportFastSpeech()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "fast.speech.status"
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportFastSpeech()I

    move-result v0

    return v0
.end method

.method protected ifSupportMulti()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "multi.speech.status"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportMulti()I

    move-result v0

    return v0
.end method

.method protected ifSupportWaitAwake()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "wait.awake.status"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifSupportWaitAwake()I

    move-result v0

    return v0
.end method

.method protected is(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.screen.on"
    .end annotation

    .line 143
    const/4 v0, -0x1

    .line 145
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 151
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isScreenOn(I)Z

    move-result v1

    return v1
.end method

.method protected isAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.account.login"
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAccountLogin()Z

    move-result v0

    return v0
.end method

.method protected isAdvancedSettingsOpen()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "if.advance.settings.open"
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifAdvancedSettingsOpen()I

    move-result v0

    return v0
.end method

.method protected isAppForeground(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.app.query"
    .end annotation

    .line 30
    const-string v0, ""

    .line 32
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 34
    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 38
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAppForeground(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isAppOpen(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.app.open"
    .end annotation

    .line 44
    const-string v0, ""

    .line 46
    .local v0, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 48
    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 52
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isAppOpen(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected isEnableGlobalWakeup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "speech.enable.wakeup"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isEnableGlobalWakeup()Z

    move-result v0

    return v0
.end method

.method protected isFastSpeechOpen()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "fast.speech.enable"
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifFastSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isFullTimeSpeechOpen()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "full.time.speech.enable"
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifFullTimeSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isMultiSpeechOpen()I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "multi.speech.enable"
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->ifMultiSpeechEnable()I

    move-result v0

    return v0
.end method

.method protected isNapaTop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.napa.top"
    .end annotation

    .line 115
    const/4 v0, -0x1

    .line 117
    .local v0, "display_id":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 123
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isNapaTop(I)Z

    move-result v1

    return v1
.end method

.method protected isNaviTop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.navi.top"
    .end annotation

    .line 129
    const/4 v0, -0x1

    .line 131
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 137
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isNaviTop(I)Z

    move-result v1

    return v1
.end method

.method protected isSupport5DCinema(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.support.5d.cinema"
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isSupport5dCinema()Z

    move-result v0

    return v0
.end method

.method protected isSupportXSport()Z
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = " is.support.xsport"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isSupportXSport()Z

    move-result v0

    return v0
.end method

.method protected isUserExpressionOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "is.userexpression.opened"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->isUserExpressionOpened()Z

    move-result v0

    return v0
.end method

.method protected screenAppIsFull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "screen.app.is.full"
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 303
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 304
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenAppIsFull(I)Z

    move-result v1

    return v1
.end method

.method protected screenCurrentBack(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "screen.current.back"
    .end annotation

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 254
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 255
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenCurrentBack(I)I

    move-result v1

    return v1
.end method

.method protected screenFullAppInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "screen.full.app.info"
    .end annotation

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 288
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenFullAppInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected screenGoHome(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "screen.go.home"
    .end annotation

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 240
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 241
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenGoHome(I)I

    move-result v1

    return v1
.end method

.method protected screenisDesktop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "screen.is.desktop"
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "display_location":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 227
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/ISpeechQueryCaller;->screenisDesktop(I)I

    move-result v1

    return v1
.end method
