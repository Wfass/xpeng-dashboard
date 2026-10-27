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

    .line 49
    const-string v1, "\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a|\u4e00\u53f7|\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a\u8f66\u4f4d"

    const-string v2, "\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a|\u4e8c\u53f7|\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a\u8f66\u4f4d"

    const-string v3, "\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a|\u4e09\u53f7|\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a\u8f66\u4f4d"

    const-string v4, "\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a|\u56db\u53f7|\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a\u8f66\u4f4d"

    const-string v5, "\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a|\u4e94\u53f7|\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a\u8f66\u4f4d"

    const-string v6, "\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a|\u516d\u53f7|\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a\u8f66\u4f4d"

    const-string v7, "\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a|\u4e03\u53f7|\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a\u8f66\u4f4d"

    const-string v8, "\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a|\u516b\u53f7|\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a\u8f66\u4f4d"

    const-string v9, "\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a|\u4e5d\u53f7|\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a\u8f66\u4f4d"

    const-string v10, "\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a|\u5341\u53f7|\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a\u8f66\u4f4d"

    const-string v11, "\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a|\u5341\u4e00\u53f7|\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d"

    const-string v12, "\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a|\u5341\u4e8c\u53f7|\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d"

    const-string v13, "\u7b2c\u5341\u4e09\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e09\u4e2a|\u5341\u4e09\u53f7"

    const-string v14, "\u7b2c\u5341\u56db\u4e2a|\u6cca\u5165\u7b2c\u5341\u56db\u4e2a|\u5341\u56db\u53f7"

    const-string v15, "\u7b2c\u5341\u4e94\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e94\u4e2a|\u5341\u4e94\u53f7"

    const-string v16, "\u7b2c\u5341\u516d\u4e2a|\u6cca\u5165\u7b2c\u5341\u516d\u4e2a|\u5341\u516d\u53f7"

    const-string v17, "\u7b2c\u5341\u4e03\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e03\u4e2a|\u5341\u4e03\u53f7"

    const-string v18, "\u7b2c\u5341\u516b\u4e2a|\u6cca\u5165\u7b2c\u5341\u516b\u4e2a|\u5341\u516b\u53f7"

    const-string v19, "\u7b2c\u5341\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e5d\u4e2a|\u5341\u4e5d\u53f7"

    const-string v20, "\u7b2c\u4e8c\u5341\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u5341\u4e2a|\u4e8c\u5341\u53f7"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->WORD_GENERALIZATION:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x1

    move v0, v1

    .local v0, "i":I
    :goto_0
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    const/16 v0, 0x14

    if-gt v2, v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v0

    .line 76
    .local v3, "word":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "command"

    const-string v4, "command://autoparking.park.start"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v0, "param":Lorg/json/JSONObject;
    const-string v4, "position"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v4, "param"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v4, "tts"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v4, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->ALL_WORDS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "param":Lorg/json/JSONObject;
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AutoParkingNode"

    const-string v5, "error: %s"

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "word":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 86
    .end local v0    # "i":I
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

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 47
    const/4 v0, -0x1

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

    .line 99
    return-void
.end method

.method private triggerDialog(ILjava/lang/String;I)V
    .locals 8
    .param p1, "triggerId"    # I
    .param p2, "tts"    # Ljava/lang/String;
    .param p3, "number"    # I

    .line 140
    const-string v0, "AutoParkingNode"

    const-string v1, "trigger dialog, id: %s, tts: %s, number: %d"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    invoke-static {v0, v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    const-string v0, "AutoParkingNode"

    const-string v1, "already in trigger, already disable wakeup."

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->disableWakeup()V

    .line 146
    :goto_0
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->curTriggerId:I

    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "wordList":Lorg/json/JSONObject;
    move v3, v5

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 153
    sget-object v6, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->WORD_GENERALIZATION:[Ljava/lang/String;

    aget-object v6, v6, v3

    sget-object v7, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->ALL_WORDS:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v3    # "i":I
    :cond_1
    const-string v3, "wordList"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v3, "ifMergeWords"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v3, "tts"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v3, "repeatNum"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "repeatAfterNoise"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    new-array v3, v4, [I

    aput v5, v3, v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v3, v6}, Lcom/xiaopeng/speech/proxy/AgentProxy;->newTriggerDialog(I[ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "wordList":Lorg/json/JSONObject;
    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutoParkingNode"

    const-string v2, "error: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
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
    .local v0, "ttsResourceId":I
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const-string v5, "\u6cca\u8f66"

    .line 247
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 244
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 249
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

    const-string v2, "\u6cca\u8f66"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 236
    return-void
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;)V
    .locals 1
    .param p1, "tts"    # Ljava/lang/String;

    monitor-enter p0

    .line 108
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->findParkingPosition(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    .end local p1    # "tts":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
    throw p1
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "isFindParking"    # Z

    monitor-enter p0

    .line 112
    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->findParkingPosition(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    .end local p1    # "tts":Ljava/lang/String;
    .end local p2    # "isFindParking":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
    throw p1
.end method

.method public declared-synchronized findParkingPosition(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;
    .param p2, "isFindParking"    # Z
    .param p3, "number"    # I

    monitor-enter p0

    .line 122
    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    .line 123
    :try_start_0
    const-string v0, "AutoParkingNode"

    const-string v1, "number %d too large, return"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 121
    .end local p1    # "tts":Ljava/lang/String;
    .end local p2    # "isFindParking":Z
    .end local p3    # "number":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 126
    .restart local p1    # "tts":Ljava/lang/String;
    .restart local p2    # "isFindParking":Z
    .restart local p3    # "number":I
    :cond_0
    if-eqz p2, :cond_1

    .line 127
    const/16 v0, 0x2713

    :try_start_1
    invoke-direct {p0, v0, p1, p3}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->triggerDialog(ILjava/lang/String;I)V

    goto :goto_0

    .line 129
    :cond_1
    const/16 v0, 0x2712

    invoke-direct {p0, v0, p1, p3}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->triggerDialog(ILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    .end local p1    # "tts":Ljava/lang/String;
    .end local p2    # "isFindParking":Z
    .end local p3    # "number":I
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
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

    .line 170
    :try_start_0
    const-string v0, "AutoParkingNode"

    const-string v1, "leave trigger, curTriggerID: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

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

    .line 172
    const-string v0, "AutoParkingNode"

    const-string v1, "not in trigger, can not leave trigger."

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

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "AutoParkingNode"

    const-string v3, "error: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
    throw v0
.end method

.method protected onActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://autoparking.activate"
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 263
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 264
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v4}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onActivate()V

    .line 263
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method protected onExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://autoparking.exit"
    .end annotation

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 273
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 274
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 275
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v4}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onExit()V

    .line 274
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method protected onMemoryParkingStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.car.favoriteslotparking.on"
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 307
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onMemoryParkingStart()V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onParkCarportCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://autoparking.park.carport.count"
    .end annotation

    .line 293
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;

    move-result-object v0

    .line 294
    .local v0, "positionBean":Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 296
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 297
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v5, v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onParkCarportCount(Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;)V

    .line 296
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method protected onParkStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://autoparking.park.start"
    .end annotation

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 283
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 284
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 285
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 286
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v4, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onParkStart(Ljava/lang/String;)V

    .line 285
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method protected onUnmannedParkingStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://unmannedparking.activate"
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 317
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;->onMemoryParkingStart()V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
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

    const-string v2, "\u6cca\u8f66"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 199
    return-void
.end method

.method public setShouldExitParking(Z)V
    .locals 0
    .param p1, "exitParking"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 217
    return-void
.end method

.method public setWheelWakeupEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 225
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->mWakeupBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    .line 226
    return-void
.end method

.method public stopCarSpeech()V
    .locals 2

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->isShouldExitParking:Z

    .line 256
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const-string v1, "auto_park"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialogReason(Ljava/lang/String;)V

    .line 257
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

    const-string v3, "\u6cca\u8f66"

    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->disable_speech_safe:I

    .line 189
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 191
    return-void
.end method
