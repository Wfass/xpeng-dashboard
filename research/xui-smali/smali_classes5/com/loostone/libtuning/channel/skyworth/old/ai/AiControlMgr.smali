.class public Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;


# instance fields
.field private final CHANGBA_APP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/BaseChannelMgr;

.field private mContext:Landroid/content/Context;

.field private mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

.field private final volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AiControlMgr"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->TAG:Ljava/lang/String;

    const-string v0, "com.changba.sd"

    .line 3
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->CHANGBA_APP:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/loostone/libtuning/PuremicTuning;->Companion:Lcom/loostone/libtuning/PuremicTuning$Companion;

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/PuremicTuning;->getChannelMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    .line 10
    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning$Companion;->getInstance()Lcom/loostone/libtuning/PuremicTuning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/PuremicTuning;->getVolumeAdjustment()Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    return-void
.end method

.method private adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "increase"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "reduce"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_1
    :goto_0
    sget-object p3, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustVolume, cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiControlMgr"

    invoke-virtual {p3, v1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdjustMusic"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterApp()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 9
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustMusic(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "AdjustMic"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterPlayer()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "AiControlMgr"

    const-string v1, "self mic"

    .line 13
    invoke-virtual {p3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    invoke-direct {p0, p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->parseVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setMicVolume(I)V

    goto/16 :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-eqz p1, :cond_c

    const-string p1, "AiControlMgr"

    const-string v0, "else mic"

    .line 16
    invoke-virtual {p3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustMic(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "AdjustEcho"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 20
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterPlayer()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AiControlMgr"

    const-string v1, "self echo"

    .line 21
    invoke-virtual {p3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    invoke-direct {p0, p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->parseVolume(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->setAef1ReverbOutGain(I)V

    goto/16 :goto_1

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-eqz p1, :cond_c

    .line 24
    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.changba.sd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "AiControlMgr"

    const-string v0, "changba echo"

    .line 25
    invoke-virtual {p3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5531\u5c06"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    const-string p2, "+0"

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "\u9b54\u97f3"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    const-string p2, "+1"

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p1, "\u4e13\u4e1a"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    const-string p2, "+2"

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p1, "\u6b4c\u795e"

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 33
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    const-string p2, "+3"

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_9
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string p1, "AiControlMgr"

    const-string v0, "else echo"

    .line 38
    invoke-virtual {p3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustEcho(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string p3, "AdjustTone"

    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 43
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterApp()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 44
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, p2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->adjustTone(Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;
    .locals 2

    const-class v0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    invoke-direct {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;-><init>()V

    sput-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;

    .line 4
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMicAvailable()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->fullSceneSpeakMgr:Lcom/loostone/libtuning/channel/BaseChannelMgr;

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVerifyStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initKaraokeControl(Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;)V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterApp()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already enter karaoke app, package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {p1, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package name is empty, use dft,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {p1, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    move-object p1, v0

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Search"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    :cond_2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "AiControlMgr"

    const-string v2, "not enter karaoke app"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->isForceUsePackageName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForceUsePackage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getInstance()Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/KaraokeVoiceAppLogic;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package name is empty, use dft,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-nez v0, :cond_6

    .line 25
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaokeControl is null, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.changba.sd"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    goto :goto_2

    .line 30
    :cond_5
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/NormalKaraokeControl;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/NormalKaraokeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->setPackageName(Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :cond_6
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaokeControl not null, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", control.packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiControlMgr"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 38
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "AiControlMgr"

    const-string v2, "recreate karaokeControl"

    .line 39
    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.changba.sd"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/ChangbaKaraokeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    goto :goto_3

    .line 43
    :cond_7
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/NormalKaraokeControl;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/impl/NormalKaraokeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    .line 45
    :goto_3
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->setPackageName(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private parseVolume(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    invoke-interface {v0}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getMicVolume()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->volumeAdjustment:Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;

    invoke-interface {v1}, Lcom/loostone/libtuning/inf/extern/IVolumeAdjustment;->getAef1ReverbOutGain()I

    move-result v1

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AdjustMic"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string v2, "AdjustEcho"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "+"

    .line 16
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string p2, "AdjustMic"

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p2, v0, 0xa

    goto :goto_0

    :cond_2
    const-string p2, "AdjustEcho"

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 p2, v1, 0xa

    goto :goto_0

    :cond_3
    const-string v2, "-"

    .line 22
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p2, "AdjustMic"

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p2, v0, -0xa

    goto :goto_0

    :cond_4
    const-string p2, "AdjustEcho"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 p2, v1, -0xa

    goto :goto_0

    .line 30
    :cond_5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p2, "AdjustMic"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 34
    move p2, v0

    goto :goto_0

    .line 32
    :cond_6
    const-string p2, "AdjustEcho"

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_0

    :cond_7
    move p2, v3

    :goto_0
    const-string v2, "AdjustMic"

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x64

    if-eqz v2, :cond_8

    if-le p2, v4, :cond_9

    .line 41
    move p2, v0

    goto :goto_1

    .line 39
    :cond_8
    const-string v0, "AdjustEcho"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-le p2, v4, :cond_9

    move p2, v1

    :cond_9
    :goto_1
    if-gez p2, :cond_a

    move p2, v3

    :cond_a
    return p2
.end method


# virtual methods
.method public create(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mContext:Landroid/content/Context;

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    return-void
.end method

.method public sendCmd(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "AiControlMgr"

    const-string v2, "sendCmd, cmd = null"

    invoke-virtual {p1, v0, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->initKaraokeControl(Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;)V

    .line 10
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 11
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCmd, cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AiControlMgr"

    invoke-virtual {v3, v5, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdjustMic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-nez v4, :cond_1e

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AdjustEcho"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 19
    :cond_1
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    if-nez v4, :cond_2

    return v1

    .line 24
    :cond_2
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterApp()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v4

    const-string v7, "OpenApp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Search"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "AiControlMgr"

    const-string v0, "send cmd, exit"

    .line 25
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "PlayNext"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "NextPage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "PrePage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "CloseApp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "TopSong"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "OpenApp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "Pause"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "Stop"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "Play"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_9
    const-string v7, "Back"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    move v1, v6

    goto/16 :goto_1

    :sswitch_a
    const-string v7, "AdjustMic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string v7, "AdjustTone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "AdjustEcho"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_1

    :cond_10
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_d
    const-string v7, "OpenPage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_1

    :cond_11
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_e
    const-string v7, "SwitchVocal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_1

    :cond_12
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_f
    const-string v7, "SwitchScore"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_1

    :cond_13
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_10
    const-string v7, "DeleteSong"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_1

    :cond_14
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_11
    const-string v7, "AdjustMusic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_1

    :cond_15
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_12
    const-string v7, "Search"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_1

    :cond_16
    move v1, v8

    goto :goto_1

    :sswitch_13
    const-string v7, "Replay"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_1

    :cond_17
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, play next"

    .line 74
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->playNext()V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, next page"

    .line 119
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->nextPage()V

    goto/16 :goto_3

    :pswitch_2
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, pre page"

    .line 123
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->prePage()V

    goto/16 :goto_3

    :pswitch_3
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, close app"

    .line 125
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->closeApp()V

    goto/16 :goto_3

    :pswitch_4
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, top song"

    .line 219
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, v2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->topSong(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    const-string p1, "AiControlMgr"

    const-string v1, "sendCmd, open app"

    .line 221
    invoke-virtual {v3, p1, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getMicAvailable()I

    move-result p1

    if-ne p1, v8, :cond_18

    .line 223
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, v0, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->openApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_18
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getMicAvailable()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->onMicExist(I)V

    goto/16 :goto_3

    :pswitch_6
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, pause"

    .line 257
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->pause()V

    goto/16 :goto_3

    :pswitch_7
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, stop"

    .line 261
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->stop()V

    goto/16 :goto_3

    .line 263
    :pswitch_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, play"

    .line 264
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->play()V

    goto/16 :goto_3

    .line 267
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendCmd, play, index:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AiControlMgr"

    invoke-virtual {v3, v0, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :try_start_1
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->play(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :pswitch_9
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, back"

    .line 325
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->back()V

    goto/16 :goto_3

    :pswitch_a
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, adjust mic"

    .line 327
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_b
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, adjust tone"

    .line 335
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v8}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_c
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, adjust echo"

    .line 337
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_d
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, open page"

    .line 345
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getPage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PageTuning"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 348
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->openTuning()V

    goto/16 :goto_3

    :cond_1a
    const-string v0, "PageSelectedSong"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 350
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->openSelectedSong()V

    goto/16 :goto_3

    :pswitch_e
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, switch vocal"

    .line 351
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, v2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->switchVocal(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_f
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, switch score"

    .line 355
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, v2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->switchScore(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_10
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, delete song"

    .line 396
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1, v2}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->deleteSong(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_11
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, adjust music"

    .line 398
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_12
    const-string v0, "AiControlMgr"

    const-string v1, "sendCmd, search"

    .line 400
    invoke-virtual {v3, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getMicAvailable()I

    move-result v0

    if-ne v0, v8, :cond_1c

    .line 402
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->isEnterApp()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {v0}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 404
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->search(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 406
    :cond_1b
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getSinger()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->openApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1c
    :goto_2
    invoke-static {}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlFactory;->getAiControl()Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;

    move-result-object p1

    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->getMicAvailable()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/loostone/libtuning/channel/skyworth/old/ai/IAiControl;->onMicExist(I)V

    goto :goto_3

    :pswitch_13
    const-string p1, "AiControlMgr"

    const-string v0, "sendCmd, replay"

    .line 437
    invoke-virtual {v3, p1, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->mKaraokeControl:Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;

    invoke-interface {p1}, Lcom/loostone/libtuning/channel/skyworth/old/karaoke/IKaraokeControl;->replay()V

    :cond_1d
    :goto_3
    return v5

    .line 439
    :cond_1e
    :goto_4
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdjustMic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {p1}, Lcom/loostone/libtuning/channel/skyworth/old/ai/Cmd;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/loostone/libtuning/channel/skyworth/old/ai/AiControlMgr;->adjustVolume(Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e4ecbf9 -> :sswitch_13
        -0x6ca0ae38 -> :sswitch_12
        -0x592c304a -> :sswitch_11
        -0x20010280 -> :sswitch_10
        -0x1e5b6062 -> :sswitch_f
        -0x1e2bd47f -> :sswitch_e
        -0x1a3bd3e7 -> :sswitch_d
        -0x13686d8c -> :sswitch_c
        -0x13616e3f -> :sswitch_b
        -0x112447e8 -> :sswitch_a
        0x1f7907 -> :sswitch_9
        0x25ff54 -> :sswitch_8
        0x277c22 -> :sswitch_7
        0x49535d6 -> :sswitch_6
        0x17ed5757 -> :sswitch_5
        0x1f470fea -> :sswitch_4
        0x44fd2529 -> :sswitch_3
        0x503017b2 -> :sswitch_2
        0x58bf1442 -> :sswitch_1
        0x73d33467 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
