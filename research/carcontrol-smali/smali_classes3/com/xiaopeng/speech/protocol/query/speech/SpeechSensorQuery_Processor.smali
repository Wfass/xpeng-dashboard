.class public Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;
.super Ljava/lang/Object;
.source "SpeechSensorQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 36

    const-string v0, "speech.sound.location"

    const-string v1, "speech.app.query"

    const-string v2, "speech.app.open"

    const-string v3, "speech.account.login"

    const-string v4, "speech.enable.wakeup"

    const-string v5, "speech.current.mode"

    const-string v6, "speech.get.car.platform"

    const-string v7, "speech.scene.switch.status"

    const-string v8, "speech.first.status"

    const-string v9, "tts.engine.status"

    const-string v10, "app.is.installed"

    const-string v11, "is.userexpression.opened"

    const-string v12, "is.napa.top"

    const-string v13, "is.navi.top"

    const-string v14, "is.screen.on"

    const-string v15, "get.car.level"

    const-string v16, "fast.speech.status"

    const-string/jumbo v17, "wait.awake.status"

    const-string v18, "multi.speech.status"

    const-string v19, " is.support.xsport"

    const-string v20, "fast.speech.enable"

    const-string v21, "multi.speech.enable"

    const-string v22, "full.time.speech.enable"

    const-string v23, "if.advance.settings.open"

    const-string v24, "car.has.screen"

    const-string v25, "screen.is.desktop"

    const-string v26, "screen.go.home"

    const-string v27, "screen.current.back"

    const-string v28, "speech.homespace.meditation.seatflag"

    const-string v29, "default.wakeup.enable"

    const-string v30, "dialog.turn.mode"

    const-string v31, "tts.position.mode"

    const-string v32, "screen.full.app.info"

    const-string v33, "screen.app.is.full"

    const-string v34, "tts.tone.type"

    const-string v35, "is.support.5d.cinema"

    .line 94
    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "speech.first.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "multi.speech.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "screen.full.app.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v0, " is.support.xsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "if.advance.settings.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "app.is.installed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "speech.app.query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "speech.account.login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "car.has.screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "dialog.turn.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "tts.engine.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "speech.get.car.platform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "speech.app.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "screen.current.back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "speech.homespace.meditation.seatflag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "fast.speech.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "tts.tone.type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "wait.awake.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "is.screen.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "tts.position.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "get.car.level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "is.navi.top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "speech.enable.wakeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "speech.current.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "is.napa.top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "fast.speech.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "default.wakeup.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "is.support.5d.cinema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "screen.app.is.full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v0, "screen.go.home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v0, "full.time.speech.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v0, "is.userexpression.opened"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_20
    const-string v0, "speech.scene.switch.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_21
    const-string v0, "screen.is.desktop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_22
    const-string v0, "multi.speech.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_23
    const-string v0, "speech.sound.location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getFirstSpeechState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isMultiSpeechOpen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->screenFullAppInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isSupportXSport()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isAdvancedSettingsOpen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->appIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isAppForeground(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->carHasScreen(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getDialogTurnMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getCurrentTtsEngine(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getCarPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isAppOpen(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->screenCurrentBack(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 73
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->homeSpaceSeatFlags(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->ifSupportFastSpeech()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_10
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getTTSToneType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->ifSupportWaitAwake()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->is(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_13
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getTTSPositionMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getCfcVehicleLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isNaviTop(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isEnableGlobalWakeup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getCurrentMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isNapaTop(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isFastSpeechOpen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->ifDefaultWakeupOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isSupport5DCinema(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->screenAppIsFull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->screenGoHome(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isFullTimeSpeechOpen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->isUserExpressionOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getVuiSceneSwitchStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->screenisDesktop(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_22
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->ifSupportMulti()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/SpeechSensorQuery;->getSoundLocation(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x722287c0 -> :sswitch_23
        -0x7146fd77 -> :sswitch_22
        -0x6ad0f9e6 -> :sswitch_21
        -0x5e6c4d02 -> :sswitch_20
        -0x5d3101b0 -> :sswitch_1f
        -0x5bb88f93 -> :sswitch_1e
        -0x57c0695d -> :sswitch_1d
        -0x52f3f87c -> :sswitch_1c
        -0x28b5d033 -> :sswitch_1b
        -0x204445db -> :sswitch_1a
        -0x1c085e03 -> :sswitch_19
        -0x1a5ed871 -> :sswitch_18
        -0x18baa57c -> :sswitch_17
        -0x134f5202 -> :sswitch_16
        -0xfb108af -> :sswitch_15
        -0xd6ef7ae -> :sswitch_14
        -0xcacbd73 -> :sswitch_13
        -0x8c07923 -> :sswitch_12
        -0x8ab73ac -> :sswitch_11
        -0x4890805 -> :sswitch_10
        -0x3cfb394 -> :sswitch_f
        0x2dd848e -> :sswitch_e
        0x3617e7e -> :sswitch_d
        0xadad983 -> :sswitch_c
        0x170d9c71 -> :sswitch_b
        0x3610e463 -> :sswitch_a
        0x45690f4e -> :sswitch_9
        0x47cdc49a -> :sswitch_8
        0x47d8605c -> :sswitch_7
        0x509eccaf -> :sswitch_6
        0x665d9a63 -> :sswitch_5
        0x6884cab8 -> :sswitch_4
        0x752d561f -> :sswitch_3
        0x764d5ed8 -> :sswitch_2
        0x7680581a -> :sswitch_1
        0x76a95e7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
