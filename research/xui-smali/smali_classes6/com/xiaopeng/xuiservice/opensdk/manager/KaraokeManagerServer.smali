.class public Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
.super Lcom/car/opensdk/pipebus/IPipeBus$Stub;
.source "KaraokeManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$KaraokeManagerServerHolder;,
        Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "karaoke"

.field private static final TAG:Ljava/lang/String; = "KaraokeServer"


# instance fields
.field private mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

.field private final mPipeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final micCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/car/opensdk/pipebus/IPipeBus$Stub;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->micCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->callbackTest()V

    return-void
.end method

.method private callbackTest()V
    .locals 5

    .line 475
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->micCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;->micServiceCallBack(I)V

    .line 478
    const-wide/16 v1, 0x2

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_1

    .line 479
    :catch_0
    move-exception v3

    .line 482
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->micCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4, v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;->onErrorEvent(II)V

    .line 484
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    goto :goto_2

    .line 485
    :catch_1
    move-exception v1

    .line 475
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 489
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
    .locals 1

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$KaraokeManagerServerHolder;->access$300()Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    move-result-object v0

    return-object v0
.end method

.method private getKaraokeManager()V
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    .line 496
    .local v0, "xuiManager":Lcom/xiaopeng/xuimanager/XUIManager;
    :try_start_0
    const-string v1, "karaoke"

    .line 497
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    .line 498
    const-string v1, "KaraokeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init,mKaraokeManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v0    # "xuiManager":Lcom/xiaopeng/xuimanager/XUIManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static getModuleName()Ljava/lang/String;
    .locals 1

    .line 245
    const-string v0, "karaoke"

    return-object v0
.end method

.method private handleCmdWithBytes(Ljava/lang/String;[Ljava/lang/String;[B[BII)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "bytesIn"    # [B
    .param p4, "bytesOut"    # [B
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 447
    const-string v0, "KaraokeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdWithBytes, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",bytes in len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    array-length v3, p3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",out len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    array-length v3, p4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v0, -0x4

    .line 450
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getKaraokeManager()V

    .line 451
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x6c257df

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x406564d1

    if-eq v3, v4, :cond_3

    const v4, 0x4065771a

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "readRec"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v5

    goto :goto_2

    :cond_3
    const-string v3, "readMic"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "write"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 464
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_6

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, p4}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_readMic([B)I

    move-result v0

    goto :goto_3

    .line 459
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_6

    .line 460
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, p4}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_readRec([B)I

    move-result v0

    goto :goto_3

    .line 453
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_6

    .line 454
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v5

    .line 455
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 454
    invoke-virtual {v1, p3, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_write([BII)I

    move-result v0

    .line 471
    :cond_6
    :goto_3
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 250
    const/4 v0, -0x4

    .line 251
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getKaraokeManager()V

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "enableVocalRemoveDynamic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "recGetAvail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "setMusicInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "enableVocalRemove"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "micGetMinBuf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "micGetAvail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "getMicPowerStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "getCarMicrophonePosition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "isVocalRemoveEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "recGetMinBuf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "getVolume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "recDestroy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "pausePlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "trackCreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "setVolume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "setBgmVolume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "init"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "enableCarMicrophone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "recCreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "setMusicLyric"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "getVocalRemoveLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "resumePlay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "trackDestroy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "isVocalRemoveDynamicEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_1a
    const-string v1, "getMicStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1b
    const-string v1, "trackGetMinBuf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v1, "micDestroy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_1d
    const-string v1, "isCarMicrophoneEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto :goto_1

    :sswitch_1e
    const-string v1, "deinit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1f
    const-string v1, "getBgmVolume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto :goto_1

    :sswitch_20
    const-string v1, "micCreate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_21
    const-string v1, "trackGetLatency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 435
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 436
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->getBgmVolume()I

    move-result v0

    goto/16 :goto_2

    .line 430
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 431
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->setBgmVolume(I)V

    goto/16 :goto_2

    .line 425
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->isVocalRemoveDynamicEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v4

    nop

    :cond_1
    move v0, v3

    goto/16 :goto_2

    .line 420
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->enableVocalRemoveDynamic(Z)V

    goto/16 :goto_2

    .line 415
    :pswitch_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->getVocalRemoveLevel()I

    move-result v0

    goto/16 :goto_2

    .line 410
    :pswitch_5
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 411
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->isVocalRemoveEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v3, v4

    nop

    :cond_2
    move v0, v3

    goto/16 :goto_2

    .line 405
    :pswitch_6
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 406
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget-object v3, p2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->enableVocalRemove(ZI)I

    move-result v0

    goto/16 :goto_2

    .line 400
    :pswitch_7
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 401
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->getCarMicrophonePosition()I

    move-result v0

    goto/16 :goto_2

    .line 395
    :pswitch_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 396
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->isCarMicrophoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v4

    nop

    :cond_3
    move v0, v3

    goto/16 :goto_2

    .line 390
    :pswitch_9
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 391
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget-object v3, p2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->enableCarMicrophone(ZI)I

    move-result v0

    goto/16 :goto_2

    .line 385
    :pswitch_a
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 386
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setMusicLyric([Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 380
    :pswitch_b
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 381
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setMusicInfo([Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 375
    :pswitch_c
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 376
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_micDestroy()I

    move-result v0

    goto/16 :goto_2

    .line 370
    :pswitch_d
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_micGetAvail()I

    move-result v0

    goto/16 :goto_2

    .line 364
    :pswitch_e
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 365
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v4

    .line 366
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 365
    invoke-virtual {v1, v3, v4, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_micCreate(III)I

    move-result v0

    goto/16 :goto_2

    .line 358
    :pswitch_f
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 359
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v4

    .line 360
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 359
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_micGetMinBuf(II)I

    move-result v0

    goto/16 :goto_2

    .line 353
    :pswitch_10
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 354
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recDestroy()I

    move-result v0

    goto/16 :goto_2

    .line 348
    :pswitch_11
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 349
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recGetAvail()I

    move-result v0

    goto/16 :goto_2

    .line 342
    :pswitch_12
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 343
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v4

    .line 344
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 343
    invoke-virtual {v1, v3, v4, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recCreate(III)I

    move-result v0

    goto/16 :goto_2

    .line 336
    :pswitch_13
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 337
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v4

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recGetMinBuf(II)I

    move-result v0

    goto/16 :goto_2

    .line 331
    :pswitch_14
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_resumePlay()I

    move-result v0

    goto/16 :goto_2

    .line 326
    :pswitch_15
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 327
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_pausePlay()I

    move-result v0

    goto/16 :goto_2

    .line 321
    :pswitch_16
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 322
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_resume()I

    move-result v0

    goto/16 :goto_2

    .line 316
    :pswitch_17
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 317
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_pause()I

    move-result v0

    goto/16 :goto_2

    .line 311
    :pswitch_18
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackDestroy()I

    move-result v0

    goto/16 :goto_2

    .line 306
    :pswitch_19
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 307
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackGetLatency()I

    move-result v0

    goto/16 :goto_2

    .line 300
    :pswitch_1a
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 301
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, p2, v4

    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 301
    invoke-virtual {v1, v3, v4, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackCreate(III)I

    move-result v0

    goto/16 :goto_2

    .line 294
    :pswitch_1b
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 295
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v4

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 295
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackGetMinBuf(II)I

    move-result v0

    goto/16 :goto_2

    .line 289
    :pswitch_1c
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 290
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getVolume(I)I

    move-result v0

    goto/16 :goto_2

    .line 283
    :pswitch_1d
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, p2, v4

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 284
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_setVolume(II)I

    move-result v0

    goto :goto_2

    .line 278
    :pswitch_1e
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 279
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getMicPowerStatus()I

    move-result v0

    goto :goto_2

    .line 273
    :pswitch_1f
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 274
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_getMicStatus()I

    move-result v0

    goto :goto_2

    .line 268
    :pswitch_20
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v1, :cond_7

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_deinit()I

    move-result v0

    goto :goto_2

    .line 254
    :pswitch_21
    aget-object v1, p2, v5

    .line 255
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v2, :cond_4

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_init(Ljava/lang/String;)I

    move-result v0

    .line 258
    :cond_4
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init,pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v2, :cond_6

    .line 260
    invoke-static {p4}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_5

    .line 262
    const-string v2, "com.xiaopeng.xuiservice"

    .line 264
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->setCallingAppPkg(Ljava/lang/String;)V

    .line 266
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_6
    nop

    .line 442
    :cond_7
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6d088b8d -> :sswitch_21
        -0x55addddd -> :sswitch_20
        -0x53aff4b4 -> :sswitch_1f
        -0x4f9ab6ef -> :sswitch_1e
        -0x4ae8fa49 -> :sswitch_1d
        -0x4088bc4d -> :sswitch_1c
        -0x3b308354 -> :sswitch_1b
        -0x3ad83d9d -> :sswitch_1a
        -0x37b237d3 -> :sswitch_19
        -0x327940ed -> :sswitch_18
        -0x2434b3d1 -> :sswitch_17
        -0x213616ff -> :sswitch_16
        -0x209400df -> :sswitch_15
        -0x132224c4 -> :sswitch_14
        -0xfdc6654 -> :sswitch_13
        -0x8d86ca5 -> :sswitch_12
        0x316510 -> :sswitch_11
        0x65825f6 -> :sswitch_10
        0x8a3cbc0 -> :sswitch_f
        0x27f73e1c -> :sswitch_e
        0x2f5d1a27 -> :sswitch_d
        0x316e3a4a -> :sswitch_c
        0x33d4bd4a -> :sswitch_b
        0x34c20a10 -> :sswitch_a
        0x40411307 -> :sswitch_9
        0x42919a32 -> :sswitch_8
        0x587d0db1 -> :sswitch_7
        0x65269986 -> :sswitch_6
        0x65fc7ea0 -> :sswitch_5
        0x6d5ba330 -> :sswitch_4
        0x715f45d6 -> :sswitch_3
        0x72fd5e31 -> :sswitch_2
        0x7d4e37e9 -> :sswitch_1
        0x7ef29589 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public getModuleImplementor(Ljava/lang/String;)Lcom/car/opensdk/pipebus/IPipeBus;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getKaraokeManager()V

    .line 104
    const-string v0, "karaokeservice2"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 120
    return-void
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 125
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 127
    .local v1, "uid":I
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControl,cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    return v2
.end method

.method public ioControlWithBytes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[B)I
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "bytesIn"    # [B
    .param p5, "bytesOut"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 145
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 147
    .local v8, "uid":I
    const-string v0, "KaraokeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithBytes,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",call pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->handleCmdWithBytes(Ljava/lang/String;[Ljava/lang/String;[B[BII)I

    move-result v0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;)I
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p4, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 135
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 137
    .local v1, "uid":I
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithParcelable,cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    return v2
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "results"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 155
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 157
    .local v7, "uid":I
    const-string v0, "KaraokeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket,cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",call pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public registerListener(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBusListener;)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 165
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 167
    .local v1, "uid":I
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener,call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getKaraokeManager()V

    .line 169
    new-instance v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V

    .line 171
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :try_start_0
    invoke-interface {p2}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    nop

    .line 177
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->micCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_registerCallback(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    .line 181
    .local v3, "e2":Ljava/lang/Exception;
    const-string v4, "KaraokeServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener e2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v3    # "e2":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 186
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v3

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "KaraokeServer"

    const-string v5, "PipeListener is dead, ignoring it"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public registerModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 193
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 195
    .local v1, "uid":I
    const-string v2, "KaraokeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterListener,call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getKaraokeManager()V

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;

    .line 200
    .local v5, "r":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    iget v6, v5, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->pid:I

    if-ne v6, v0, :cond_0

    .line 201
    move-object v2, v5

    .line 202
    goto :goto_1

    .line 204
    .end local v5    # "r":Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    if-eqz v2, :cond_2

    .line 208
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    goto :goto_2

    .line 209
    :catch_0
    move-exception v3

    .line 212
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 213
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 216
    :cond_2
    const-string v3, "KaraokeServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unRegisterListener, no record for pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mPipeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    :try_start_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->mKaraokeManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_unRegisterCallback()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 225
    goto :goto_4

    .line 223
    :catch_1
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "KaraokeServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unRegisterListener e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    return-void

    .line 205
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public unRegisterModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "impl"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    return-void
.end method
