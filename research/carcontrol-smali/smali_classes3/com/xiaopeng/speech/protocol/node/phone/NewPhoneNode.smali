.class public Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "NewPhoneNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHUNKSIZE:I = 0x40000

.field private static final COMMAND_SPLIT:Ljava/lang/String; = "#"

.field public static final INTENT_IN_COMING_PHONE:Ljava/lang/String; = "\u6765\u7535\u8bdd"

.field private static final SET_EXIT_CALL_TIMEOUT:J = 0x96L

.field public static final SKILL_NAME:Ljava/lang/String; = "\u79bb\u7ebf\u6765\u7535\u8bdd"

.field public static final TASK_PHONE:Ljava/lang/String; = "\u6765\u7535\u8bdd"


# instance fields
.field private final SLOT_ENABLE_TTS:Ljava/lang/String;

.field private volatile deviceId:Ljava/lang/String;

.field private volatile duiWidget:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private phoneBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile syncResultCode:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    const-string v0, "enable_tts"

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->SLOT_ENABLE_TTS:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    .line 61
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;-><init>()V

    return-void
.end method

.method private disableWakeup()V
    .locals 7

    .line 383
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v0

    if-nez v0, :cond_4

    .line 384
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x2

    .line 387
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isE38ZH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isD55ZH()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isE28ZH()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_stop_service:I

    .line 389
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 387
    :cond_1
    :goto_0
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    .line 388
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    const-string/jumbo v4, "\u84dd\u7259\u7535\u8bdd"

    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 391
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x4

    .line 394
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isE38ZH()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isD55ZH()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isE28ZH()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 395
    :cond_2
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_stop_service:I

    .line 396
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 394
    :cond_3
    :goto_2
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->during_call_disable:I

    .line 395
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    const/4 v6, 0x1

    const-string/jumbo v4, "\u84dd\u7259\u7535\u8bdd"

    .line 391
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "disableWakeup"

    .line 398
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_4

    .line 400
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupEnhance(Landroid/os/IBinder;)V

    .line 401
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableMainWakeupWord(Landroid/os/IBinder;)V

    :goto_4
    return-void
.end method

.method private enableWakeup()V
    .locals 5

    .line 364
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x2

    const-string/jumbo v3, "\u84dd\u7259\u7535\u8bdd"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 369
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    const-string v0, "enableWakeup clear hot words"

    .line 373
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getHotwordEngine()Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;

    move-result-object v0

    const-string v1, "bluetoothPhone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/HotwordEngineProxy;->removeHotWords(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupEnhance(Landroid/os/IBinder;)V

    .line 378
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableMainWakeupWord(Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method public static final instance()Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
    .locals 1

    .line 69
    invoke-static {}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$Holder;->access$100()Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized callEnd()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callEnd"

    .line 313
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 315
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized callOffhook()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callOffhook"

    .line 302
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 304
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanContacts()V
    .locals 4

    .line 208
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "sys.\u8054\u7cfb\u4eba"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public disableMainWakeup()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->disableWakeup()V

    const-string v0, "PhoneNode"

    const-string v1, "stopRecord-------"

    .line 350
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    return-void
.end method

.method public divideArray([BI)[[B
    .locals 9

    if-eqz p1, :cond_3

    .line 158
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    array-length v0, p1

    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 163
    const-class v4, B

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    add-int v6, v5, p2

    if-le v6, v0, :cond_1

    .line 167
    aget-object v7, v2, v4

    array-length v8, p1

    sub-int/2addr v8, v5

    invoke-static {p1, v5, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 169
    :cond_1
    aget-object v7, v2, v4

    invoke-static {p1, v5, v7, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 159
    check-cast p1, [[B

    return-object p1
.end method

.method public enableMainWakeup()V
    .locals 2

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->enableWakeup()V

    const-string v0, "PhoneNode"

    const-string v1, "startRecord----------"

    .line 341
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    return-void
.end method

.method public declared-synchronized incomingCallRing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 285
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const-string/jumbo v0, "\u6765\u7535\u53f7\u7801"

    const-string/jumbo v1, "\u6765\u7535\u4eba"

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incomingCallRing, enable tts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 261
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 263
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    const/4 v3, 0x1

    .line 266
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "isLocalSkill"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 268
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "command"

    const-string v0, "command://phone.in.accept#command://phone.in.reject"

    .line 269
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "enable_tts"

    .line 270
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 273
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 276
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 277
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string/jumbo p2, "\u79bb\u7ebf\u6765\u7535\u8bdd"

    const-string/jumbo p3, "\u6765\u7535\u8bdd"

    invoke-virtual {p1, p2, p3, p3, v2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    return-void
.end method

.method public isEnglish(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z]*"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFastWakeup()Z
    .locals 1

    .line 360
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->isDefaultEnableWakeup()Z

    move-result v0

    return v0
.end method

.method public onCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 660
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 662
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 663
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallback()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCallbackSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 651
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 653
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 654
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallbackSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 613
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 615
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 616
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInAccept()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInReject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 622
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 623
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 625
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 626
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInReject()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 p1, 0x0

    .line 552
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "phone"

    .line 553
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 554
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p1

    goto :goto_1

    .line 557
    :cond_0
    new-instance p2, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "name"

    .line 558
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    const-string p1, "number"

    .line 559
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    const-string p1, "id"

    .line 560
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_0

    :catch_1
    move-exception p2

    .line 563
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez p1, :cond_1

    const-string p1, "phoneBean == null"

    .line 566
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 569
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 571
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 572
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onOutCustomerservice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 671
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 672
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 674
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 676
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 678
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 679
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutCustomerservice(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onOutHelp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 687
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "number"

    .line 688
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 690
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 692
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 694
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 695
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutHelp(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onPhoneSelectOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 580
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "select_num"

    .line 581
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 582
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_2

    .line 587
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    goto :goto_2

    .line 588
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object p2

    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->out_of_range:I

    .line 589
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select_num is  == "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "phoneBeanList == null"

    .line 583
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 596
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    const-string p1, "phoneBean == null"

    .line 599
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 604
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 605
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/xiaopeng/speech/protocol/R$string;->calling:I

    .line 607
    invoke-static {v3}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 710
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 712
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 713
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryBluetooth()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryContacts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 406
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object p2

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 409
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 410
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueryDetailPhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p1, "content"

    const-string v0, "subTitle"

    .line 417
    :try_start_0
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->duiWidget:Ljava/lang/String;

    .line 418
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 423
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 424
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v3

    .line 425
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 428
    new-instance v4, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-direct {v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;-><init>()V

    const-string v5, "title"

    .line 429
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 432
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setNumber(Ljava/lang/String;)V

    :cond_0
    const-string v5, "extra"

    .line 434
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v5, "id"

    .line 436
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setId(Ljava/lang/String;)V

    .line 438
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 448
    :goto_1
    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 449
    aget-object v0, p1, v3

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryDetailPhoneInfo(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 236
    new-instance p1, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 237
    sget p2, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {p2}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p2, "phone"

    .line 238
    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 239
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->deviceId:Ljava/lang/String;

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 240
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "phone_bluetooth"

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 241
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "phone_sync"

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 242
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p4, "native://phone.query.bluetooth.sync"

    invoke-direct {p3, p4}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public onRedial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 642
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 644
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 645
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedial()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRedialSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 633
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 635
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 636
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedialSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSettingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 701
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 703
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 704
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSettingOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSyncContactResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 719
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 720
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 722
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 723
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSyncContactResult(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public outgoingCallRing()V
    .locals 2

    const-string v0, "outgoingCallRing"

    .line 293
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    return-void
.end method

.method public postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    .line 489
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    .line 490
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 491
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p1, "phone"

    .line 492
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 493
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 494
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    .line 495
    new-instance v1, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 496
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 497
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 498
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->toJson()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 499
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p3, "native://phone.query.contacts"

    invoke-direct {p2, p3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public postContactsResult(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "\u8054\u7cfb\u4eba"

    .line 478
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public postDetailPhoneInfoResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 513
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->removeDuplicate(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 514
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    if-eqz v1, :cond_1

    .line 517
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "subTitle"

    .line 518
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "title"

    .line 519
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "\u4efb\u610f\u8054\u7cfb\u4eba"

    .line 521
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "\u53f7\u7801"

    .line 522
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "phone"

    .line 524
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extra"

    .line 525
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 529
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->duiWidget:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    .line 530
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "context.widget.list"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 533
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public removeDuplicate(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 537
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_1

    .line 539
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 467
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 468
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 469
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string p4, "phone_bluetooth"

    invoke-virtual {v0, p4, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 470
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 471
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {p3, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public setBTStatus(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "setBTStatus:%b"

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 228
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "phone"

    .line 229
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone_bluetooth"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 231
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v2, "native://phone.query.bluetooth"

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public setPhoneCallStatus(Landroid/os/IBinder;I)V
    .locals 1

    .line 333
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    return-void
.end method

.method public stopSpeechDialog()V
    .locals 1

    const-string v0, "stopSpeechDialog"

    .line 323
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    return-void
.end method

.method public syncCallLogs(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;

    .line 187
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 188
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 189
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    .line 190
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "call_count"

    .line 191
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getCallCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9a-zA-Z]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "data"

    .line 195
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deveiceId"

    .line 196
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "sys.\u6700\u8fd1\u901a\u8bdd"

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9a-zA-Z]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->setName(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "sys.\u8054\u7cfb\u4eba"

    invoke-virtual {p1, v2, v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public syncContacts(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    .line 96
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->deviceId:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 98
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v1

    const-string v2, "sys.\u8054\u7cfb\u4eba"

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 103
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    .line 104
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "[0-9]"

    .line 107
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {p0, v7}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->isEnglish(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v8, "[a-zA-Z]"

    .line 112
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {v5, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    const-string v7, "name"

    .line 116
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "data"

    .line 119
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deveiceId"

    .line 120
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uncompress source data size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PhoneNode"

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compress data size\uff1a "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x40000

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->divideArray([BI)[[B

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 136
    :cond_3
    array-length v1, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    aget-object v5, p2, v4

    const-string v6, "divide data"

    .line 137
    invoke-static {v0, v6}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 139
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v6

    new-instance v7, Lcom/xiaopeng/speech/common/bean/SliceData;

    array-length v8, p1

    invoke-direct {v7, v5, v8}, Lcom/xiaopeng/speech/common/bean/SliceData;-><init>([BI)V

    invoke-virtual {v6, v2, v7, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 144
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 146
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 148
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v2, p2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
