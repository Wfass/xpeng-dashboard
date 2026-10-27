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

    .line 46
    const-string v0, "enable_tts"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->SLOT_ENABLE_TTS:Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    .line 61
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode$1;

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

    const-string v4, "\u84dd\u7259\u7535\u8bdd"

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

    .line 389
    :goto_1
    move-object v5, v0

    const/4 v6, 0x1

    .line 384
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 391
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x4

    const-string v4, "\u84dd\u7259\u7535\u8bdd"

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

    .line 396
    :goto_3
    move-object v5, v0

    const/4 v6, 0x1

    .line 391
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 398
    const-string v0, "disableWakeup"

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

    .line 403
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

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 369
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x4

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 373
    const-string v0, "enableWakeup clear hot words"

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

    .line 380
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

    .line 313
    :try_start_0
    const-string v0, "callEnd"

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

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
    throw v0
.end method

.method public declared-synchronized callOffhook()V
    .locals 2

    monitor-enter p0

    .line 302
    :try_start_0
    const-string v0, "callOffhook"

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

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
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

    .line 209
    return-void
.end method

.method public disableMainWakeup()V
    .locals 2

    .line 349
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->disableWakeup()V

    .line 350
    const-string v0, "PhoneNode"

    const-string v1, "stopRecord-------"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    .line 352
    return-void
.end method

.method public divideArray([BI)[[B
    .locals 8
    .param p1, "source"    # [B
    .param p2, "chunkSize"    # I

    .line 158
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    array-length v0, p1

    .line 162
    .local v0, "totalLength":I
    int-to-double v1, v0

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 163
    .local v1, "arraySize":I
    filled-new-array {v1, p2}, [I

    move-result-object v2

    const-class v3, B

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 164
    .local v2, "ret":[[B
    const/4 v3, 0x0

    .line 165
    .local v3, "start":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "start":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 166
    add-int v6, v5, p2

    if-le v6, v0, :cond_1

    .line 167
    aget-object v6, v2, v3

    array-length v7, p1

    sub-int/2addr v7, v5

    invoke-static {p1, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 169
    :cond_1
    aget-object v6, v2, v3

    invoke-static {p1, v5, v6, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :goto_1
    add-int/2addr v5, p2

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 159
    .end local v0    # "totalLength":I
    .end local v1    # "arraySize":I
    .end local v2    # "ret":[[B
    .end local v5    # "start":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    check-cast v0, [[B

    return-object v0
.end method

.method public enableMainWakeup()V
    .locals 2

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->enableWakeup()V

    .line 341
    const-string v0, "PhoneNode"

    const-string v1, "startRecord----------"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    .line 343
    return-void
.end method

.method public declared-synchronized incomingCallRing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    monitor-enter p0

    .line 285
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 284
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "number":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;
    throw p1
.end method

.method public incomingCallRing(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "enableTts"    # Z

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incomingCallRing, enable tts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 255
    const-string v0, "\u79bb\u7ebf\u6765\u7535\u8bdd"

    .line 256
    .local v0, "skill":Ljava/lang/String;
    const-string v1, "\u6765\u7535\u8bdd"

    .line 257
    .local v1, "task":Ljava/lang/String;
    const-string v2, "\u6765\u7535\u8bdd"

    .line 258
    .local v2, "intent":Ljava/lang/String;
    const-string v3, ""

    .line 259
    .local v3, "slots":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 261
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "\u6765\u7535\u4eba"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "\u6765\u7535\u53f7\u7801"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 266
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "isLocalSkill"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "\u6765\u7535\u4eba"

    .line 267
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "\u6765\u7535\u53f7\u7801"

    .line 268
    invoke-virtual {v5, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "command"

    const-string v7, "command://phone.in.accept#command://phone.in.reject"

    .line 269
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "enable_tts"

    .line 270
    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    .line 274
    goto :goto_1

    .line 272
    :catch_1
    move-exception v5

    .line 273
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 276
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 277
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v5, v4}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    .line 279
    return-void
.end method

.method public isEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "charaString"    # Ljava/lang/String;

    .line 154
    const-string v0, "^[a-zA-Z]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 661
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 662
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 663
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallback()V

    .line 662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onCallbackSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 652
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 653
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 654
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onCallbackSupport()V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onInAccept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 612
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 616
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInAccept()V

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onInReject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 622
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setCanExitFlag(Z)V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 624
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 626
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onInReject()V

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 553
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "phoneJson":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 557
    :cond_0
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    invoke-direct {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;-><init>()V

    move-object v0, v3

    .line 558
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setName(Ljava/lang/String;)V

    .line 559
    const-string v3, "number"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setNumber(Ljava/lang/String;)V

    .line 560
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "phoneJson":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 565
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-nez v0, :cond_1

    .line 566
    const-string v1, "phoneBean == null"

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 570
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 571
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 572
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 575
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public onOutCustomerservice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 669
    const-string v0, ""

    .line 671
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 672
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 675
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 676
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 677
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 678
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 679
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutCustomerservice(Ljava/lang/String;)V

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 682
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onOutHelp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 685
    const-string v0, ""

    .line 687
    .local v0, "number":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 691
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 692
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 693
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 694
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 695
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOutHelp(Ljava/lang/String;)V

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 698
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onPhoneSelectOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "select_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 582
    .local v2, "select_num":I
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-object v0, v3

    .line 597
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "select_num":I
    goto :goto_2

    .line 588
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "select_num":I
    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v3

    sget v4, Lcom/xiaopeng/speech/protocol/R$string;->out_of_range:I

    .line 589
    invoke-static {v4}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select_num is  == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    return-void

    .line 583
    :cond_3
    :goto_1
    const-string v3, "phoneBeanList == null"

    invoke-static {p0, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    return-void

    .line 595
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "select_num":I
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 598
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    if-nez v0, :cond_4

    .line 599
    const-string v1, "phoneBean == null"

    invoke-static {p0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    return-void

    .line 602
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 603
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 604
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 605
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/xiaopeng/speech/protocol/R$string;->calling:I

    .line 607
    invoke-static {v5}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 610
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 711
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 712
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 713
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryBluetooth()V

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onQueryContacts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 406
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    move-result-object v0

    .line 407
    .local v0, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 409
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 410
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onQueryDetailPhoneInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 417
    :try_start_0
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->duiWidget:Ljava/lang/String;

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "widgetObj":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 423
    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 424
    .local v2, "content":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 425
    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 426
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 427
    .local v5, "phone":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 428
    new-instance v6, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    invoke-direct {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;-><init>()V

    .line 429
    .local v6, "info":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    const-string v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 431
    const-string v7, "subTitle"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "subTitle"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 432
    const-string v7, "subTitle"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setNumber(Ljava/lang/String;)V

    .line 434
    :cond_0
    const-string v7, "extra"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 435
    .local v7, "extra":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 436
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setId(Ljava/lang/String;)V

    .line 438
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v5    # "phone":Lorg/json/JSONObject;
    .end local v6    # "info":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    .end local v7    # "extra":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "content":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 447
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 448
    nop

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 449
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v4, v1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onQueryDetailPhoneInfo(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v0    # "widgetObj":Lorg/json/JSONObject;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    .end local v2    # "listenerList":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_4
    goto :goto_2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 456
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public onQuerySyncBluetooth(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "bluetoothStatus"    # Z
    .param p4, "syncStatus"    # I

    .line 236
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 237
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 238
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 239
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 240
    const-string v1, "phone_bluetooth"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 241
    const-string v1, "phone_sync"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 242
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.bluetooth.sync"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 243
    return-void
.end method

.method public onRedial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 643
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 645
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedial()V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onRedialSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 634
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 636
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onRedialSupport()V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSettingOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 702
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 703
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 704
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSettingOpen()V

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSyncContactResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 720
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    .line 721
    if-eqz v0, :cond_0

    .line 722
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 723
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->syncResultCode:I

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;->onSyncContactResult(I)V

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public outgoingCallRing()V
    .locals 2

    .line 293
    const-string v0, "outgoingCallRing"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->stopSpeechDialog()V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->setPhoneCallStatus(Landroid/os/IBinder;I)V

    .line 296
    return-void
.end method

.method public postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 6
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p3, "isBtConnected"    # Z
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
    .local p2, "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->phoneBeanList:Ljava/util/List;

    .line 490
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 491
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 492
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 493
    const-string v1, "phone_bluetooth"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 494
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    .line 495
    .local v2, "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 496
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 497
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 498
    const-string v4, "phone"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 499
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 500
    .end local v2    # "phoneBean":Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 501
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.contacts"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 502
    return-void
.end method

.method public postContactsResult(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isBtConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;",
            ">;Z)V"
        }
    .end annotation

    .line 478
    .local p1, "phoneBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;>;"
    const-string v0, "\u8054\u7cfb\u4eba"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->postContactsResult(Ljava/lang/String;Ljava/util/List;Z)V

    .line 479
    return-void
.end method

.method public postDetailPhoneInfoResult(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    if-nez p1, :cond_0

    .line 511
    return-void

    .line 513
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->removeDuplicate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object p1, v0

    .line 514
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 515
    .local v0, "jsonContacts":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 516
    .local v2, "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    if-eqz v2, :cond_1

    .line 517
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 518
    .local v3, "contact":Lorg/json/JSONObject;
    const-string v4, "subTitle"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v4, "title"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .local v4, "phone":Lorg/json/JSONObject;
    const-string v5, "\u4efb\u610f\u8054\u7cfb\u4eba"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v5, "\u53f7\u7801"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 524
    .local v5, "extra":Lorg/json/JSONObject;
    const-string v6, "phone"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v6, "extra"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 528
    .end local v2    # "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    .end local v3    # "contact":Lorg/json/JSONObject;
    .end local v4    # "phone":Lorg/json/JSONObject;
    .end local v5    # "extra":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 529
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->duiWidget:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "widget":Lorg/json/JSONObject;
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "context.widget.list"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0    # "jsonContacts":Lorg/json/JSONArray;
    .end local v1    # "widget":Lorg/json/JSONObject;
    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 535
    .end local v0    # "e":Lorg/json/JSONException;
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

    .line 537
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
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

    .line 538
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 537
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    .end local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "isBtConnected"    # Z

    .line 467
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 468
    .local v0, "supportWidget":Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 469
    const-string v1, "phone_bluetooth"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 470
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 471
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 472
    return-void
.end method

.method public setBTStatus(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .line 219
    const-string v0, "setBTStatus:%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 228
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->title_contacts:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 229
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 230
    const-string v1, "phone_bluetooth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 231
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://phone.query.bluetooth"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 232
    return-void
.end method

.method public setPhoneCallStatus(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callStatus"    # I

    .line 333
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSpeechState()Lcom/xiaopeng/speech/proxy/SpeechStateProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/SpeechStateProxy;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 334
    return-void
.end method

.method public stopSpeechDialog()V
    .locals 1

    .line 323
    const-string v0, "stopSpeechDialog"

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 325
    return-void
.end method

.method public syncCallLogs(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p2, "deviceId"    # Ljava/lang/String;
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

    .line 182
    .local p1, "callLogs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v0, "eventData":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 186
    .local v1, "contacts":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;

    .line 187
    .local v3, "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v4, "phoneObj":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v5, "name"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v5, "time"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v5, "call_count"

    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getCallCount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[0-9a-zA-Z]"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->setName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    .end local v3    # "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;
    .end local v4    # "phoneObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 195
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "deveiceId"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "sys.\u6700\u8fd1\u901a\u8bdd"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    .end local v0    # "eventData":Lorg/json/JSONObject;
    .end local v1    # "contacts":Lorg/json/JSONArray;
    :cond_1
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v1

    .line 80
    .local v1, "isOverseasCarType":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;

    .line 81
    .local v3, "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;
    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9a-zA-Z]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->setName(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v2

    const-string v3, "sys.\u8054\u7cfb\u4eba"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 88
    .end local v0    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "isOverseasCarType":Z
    :cond_2
    return-void
.end method

.method public syncContacts(Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .param p2, "deviceId"    # Ljava/lang/String;
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

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;>;"
    move-object/from16 v1, p0

    .line 96
    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->deviceId:Ljava/lang/String;

    .line 97
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 98
    invoke-static {}, Lcom/xiaopeng/speech/protocol/utils/CarTypeUtils;->isOverseasCarType()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v0

    .line 100
    .local v4, "eventData":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v0

    .line 102
    .local v5, "contacts":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 103
    .local v6, "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v7, "phoneObj":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "strName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 107
    const-string v9, "[0-9]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 108
    invoke-virtual {v1, v8}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->isEnglish(Ljava/lang/String;)Z

    move-result v9

    .line 109
    .local v9, "isWord":Z
    if-eqz v9, :cond_0

    .line 110
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto :goto_1

    .line 112
    :cond_0
    const-string v10, "[a-zA-Z]"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 115
    .end local v9    # "isWord":Z
    :cond_1
    :goto_1
    invoke-virtual {v6, v8}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->setName(Ljava/lang/String;)V

    .line 116
    const-string v9, "name"

    invoke-virtual {v6}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    .end local v6    # "phoneInfo":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    .end local v7    # "phoneObj":Lorg/json/JSONObject;
    .end local v8    # "strName":Ljava/lang/String;
    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "data"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "deveiceId"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "unzipEventData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 126
    .local v6, "bis":[B
    const-string v7, "PhoneNode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uncompress source data size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/utils/DeflaterUtils;->compressForGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "zipEventData":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 129
    const-string v8, "PhoneNode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compress data size\uff1a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const/high16 v8, 0x40000

    invoke-virtual {v1, v6, v8}, Lcom/xiaopeng/speech/protocol/node/phone/NewPhoneNode;->divideArray([BI)[[B

    move-result-object v8

    .line 133
    .local v8, "divideData":[[B
    if-nez v8, :cond_3

    .line 134
    return-void

    .line 136
    :cond_3
    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_5

    aget-object v11, v8, v10

    .line 137
    .local v11, "item":[B
    const-string v12, "PhoneNode"

    const-string v13, "divide data"

    invoke-static {v12, v13}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    if-eqz v11, :cond_4

    .line 139
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v12

    const-string v13, "sys.\u8054\u7cfb\u4eba"

    new-instance v14, Lcom/xiaopeng/speech/common/bean/SliceData;

    move-object v15, v0

    array-length v0, v6

    .end local v0    # "unzipEventData":Ljava/lang/String;
    .local v15, "unzipEventData":Ljava/lang/String;
    invoke-direct {v14, v11, v0}, Lcom/xiaopeng/speech/common/bean/SliceData;-><init>([BI)V

    invoke-virtual {v12, v13, v14, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    .end local v11    # "item":[B
    goto :goto_4

    .line 136
    .end local v15    # "unzipEventData":Ljava/lang/String;
    .restart local v0    # "unzipEventData":Ljava/lang/String;
    :cond_4
    move-object v15, v0

    .end local v0    # "unzipEventData":Ljava/lang/String;
    .restart local v15    # "unzipEventData":Ljava/lang/String;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v0, v15

    goto :goto_3

    .line 143
    .end local v4    # "eventData":Lorg/json/JSONObject;
    .end local v5    # "contacts":Lorg/json/JSONArray;
    .end local v6    # "bis":[B
    .end local v7    # "zipEventData":Ljava/lang/String;
    .end local v8    # "divideData":[[B
    .end local v15    # "unzipEventData":Ljava/lang/String;
    :cond_5
    goto :goto_6

    .line 144
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;

    .line 146
    .local v5, "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v5    # "item":Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
    goto :goto_5

    .line 148
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v4

    const-string v5, "sys.\u8054\u7cfb\u4eba"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 151
    .end local v0    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_6
    return-void
.end method
