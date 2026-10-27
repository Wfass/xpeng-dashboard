.class public Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "AutoParkingNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_WORDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final BY_WHO_PARKING:Ljava/lang/String; = "\u6cca\u8f66"

.field private static final DEFAULT_PARKING_NUMBER:I = 0x6

.field private static final MAX_PARKING_NUMBER:I = 0x14

.field private static final TAG:Ljava/lang/String; = "AutoParkingNode"

.field private static final TRIGGER_ID_FINDING:I = 0x2713

.field private static final TRIGGER_ID_PARKING:I = 0x2712

.field private static final WORD_GENERALIZATION:[Ljava/lang/String;


# instance fields
.field private curTriggerId:I

.field private volatile isShouldExitParking:Z

.field private final mWakeupBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->ALL_WORDS:Ljava/util/List;

    const-string/jumbo v1, "\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a|\u4e00\u53f7|\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a\u8f66\u4f4d"

    const-string/jumbo v2, "\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a|\u4e8c\u53f7|\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a\u8f66\u4f4d"

    const-string/jumbo v3, "\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a|\u4e09\u53f7|\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a\u8f66\u4f4d"

    const-string/jumbo v4, "\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a|\u56db\u53f7|\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a\u8f66\u4f4d"

    const-string/jumbo v5, "\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a|\u4e94\u53f7|\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a\u8f66\u4f4d"

    const-string/jumbo v6, "\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a|\u516d\u53f7|\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a\u8f66\u4f4d"

    const-string/jumbo v7, "\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a|\u4e03\u53f7|\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a\u8f66\u4f4d"

    const-string/jumbo v8, "\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a|\u516b\u53f7|\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a\u8f66\u4f4d"

    const-string/jumbo v9, "\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a|\u4e5d\u53f7|\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a\u8f66\u4f4d"

    const-string/jumbo v10, "\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a|\u5341\u53f7|\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a\u8f66\u4f4d"

    const-string/jumbo v11, "\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a|\u5341\u4e00\u53f7|\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d"

    const-string/jumbo v12, "\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a|\u5341\u4e8c\u53f7|\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d"

    const-string/jumbo v13, "\u7b2c\u5341\u4e09\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e09\u4e2a|\u5341\u4e09\u53f7"

    const-string/jumbo v14, "\u7b2c\u5341\u56db\u4e2a|\u6cca\u5165\u7b2c\u5341\u56db\u4e2a|\u5341\u56db\u53f7"

    const-string/jumbo v15, "\u7b2c\u5341\u4e94\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e94\u4e2a|\u5341\u4e94\u53f7"

    const-string/jumbo v16, "\u7b2c\u5341\u516d\u4e2a|\u6cca\u5165\u7b2c\u5341\u516d\u4e2a|\u5341\u516d\u53f7"

    const-string/jumbo v17, "\u7b2c\u5341\u4e03\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e03\u4e2a|\u5341\u4e03\u53f7"

    const-string/jumbo v18, "\u7b2c\u5341\u516b\u4e2a|\u6cca\u5165\u7b2c\u5341\u516b\u4e2a|\u5341\u516b\u53f7"

    const-string/jumbo v19, "\u7b2c\u5341\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e5d\u4e2a|\u5341\u4e5d\u53f7"

    const-string/jumbo v20, "\u7b2c\u4e8c\u5341\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u5341\u4e2a|\u4e8c\u5341\u53f7"

    .line 49
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->WORD_GENERALIZATION:[Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v0, 0x14

    if-gt v2, v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "command"

    const-string v4, "command://autoparking.park.start"

    .line 76
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "position"

    .line 78
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "param"

    .line 79
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tts"

    const-string v4, ""

    .line 80
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v3, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->ALL_WORDS:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "AutoParkingNode"

    const-string v4, "error: %s"

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    .line 89
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    new-instance v2, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode$1;-><init>(Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/NodeManager;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    return-void
.end method

.method private triggerDialog(ILjava/lang/String;I)V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 156
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object p2, v1, v2

    .line 140
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const-string v5, "AutoParkingNode"

    const-string v6, "trigger dialog, id: %s, tts: %s, number: %d"

    invoke-static {v5, v6, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const-string v1, "already in trigger, already disable wakeup."

    .line 142
    invoke-static {v5, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->disableWakeup()V

    .line 146
    :goto_0
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    .line 149
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move v7, v3

    :goto_1
    if-ge v7, p3, :cond_1

    .line 153
    sget-object v8, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->WORD_GENERALIZATION:[Ljava/lang/String;

    aget-object v8, v8, v7

    sget-object v9, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->ALL_WORDS:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo p3, "wordList"

    .line 155
    invoke-virtual {v1, p3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ifMergeWords"

    .line 156
    invoke-virtual {v1, p3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "tts"

    .line 157
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "repeatNum"

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "repeatAfterNoise"

    .line 159
    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p2

    new-array p3, v2, [I

    aput v3, p3, v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "error: %s"

    invoke-static {v5, p1, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public disableWakeup()V
    .locals 8

    .line 243
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->disable_speech_safe:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->parking_query_spaces:I

    .line 244
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    .line 247
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v5, "\u6cca\u8f66"

    .line 244
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public enableWakeup()V
    .locals 5

    .line 232
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v2, 0x1

    const-string/jumbo v3, "\u6cca\u8f66"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->findParkingPosition(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x6

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->findParkingPosition(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;ZI)V
    .locals 2

    monitor-enter p0

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    :try_start_0
    const-string p1, "AutoParkingNode"

    const-string p2, "number %d too large, return"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x2713

    .line 127
    :try_start_1
    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->triggerDialog(ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x2712

    .line 129
    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->triggerDialog(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isShouldExitParking()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    return v0
.end method

.method public declared-synchronized leaveTrigger()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoParkingNode"

    const-string v1, "leave trigger, curTriggerID: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 170
    iget v4, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "AutoParkingNode"

    const-string v1, "not in trigger, can not leave trigger."

    .line 172
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->leaveTriggerWithID(I)V

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->enableWakeup()V

    .line 178
    iput v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AutoParkingNode"

    const-string v3, "error: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 264
    check-cast v1, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v1}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onActivate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 274
    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v1, p2, p1

    .line 275
    check-cast v1, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v1}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onExit()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMemoryParkingStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 306
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 307
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onMemoryParkingStart()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onParkCarportCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 293
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 296
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 297
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onParkCarportCount(Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onParkStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v2, v0, p1

    .line 286
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onParkStart(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUnmannedParkingStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 316
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 317
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onMemoryParkingStart()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeXP()V
    .locals 5

    .line 197
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    const-string/jumbo v2, "\u6cca\u8f66"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setShouldExitParking(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    return-void
.end method

.method public setWheelWakeupEnabled(Z)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public stopCarSpeech()V
    .locals 2

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 256
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const-string v1, "auto_park"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialogReason(Ljava/lang/String;)V

    return-void
.end method

.method public suspendXP()V
    .locals 7

    .line 188
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->disable_speech_safe:I

    .line 189
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v3, "\u6cca\u8f66"

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 188
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
