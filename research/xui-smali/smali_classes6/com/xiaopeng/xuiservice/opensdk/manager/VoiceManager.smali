.class public Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$SingleInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceManager"


# instance fields
.field private final asrToTextlistener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

.field private mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 17
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->asrToTextlistener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$1;

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;)Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager$SingleInstanceHolder;->access$200()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 75
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 90
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/car/opensdk/voice/VoiceManager;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 42
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x56a8e97b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x344fc7f1    # -2.3097374E7f

    if-eq v0, v1, :cond_2

    const v1, 0x43dcdb9d

    if-eq v0, v1, :cond_1

    const v1, 0x6bd75d81

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "voiceAsrStopRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "voiceAsrDestroyRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "voiceAsrInitRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "voiceAsrStartRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 60
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->destroyRecord()V

    goto :goto_2

    .line 56
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->stopRecord()V

    .line 57
    goto :goto_2

    .line 52
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v0

    invoke-static {p3}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    aget-object v3, p2, v2

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->startRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_2

    .line 48
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->getInstance()Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    move-result-object v0

    aget-object v1, p2, v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->asrToTextlistener:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->initRecord(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;)V

    .line 49
    nop

    .line 64
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 80
    return-void
.end method
