.class public Lcom/xiaopeng/speech/XpSpeechEngine;
.super Ljava/lang/Object;
.source "XpSpeechEngine.java"


# static fields
.field private static TAG:Ljava/lang/String; = "XpSpeechEngine"

.field private static impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3

    .line 190
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1

    .line 472
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    return-void
.end method

.method public static dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 441
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 445
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static enterDupScene(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 3

    .line 383
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 385
    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;)V
    .locals 3

    .line 344
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 346
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;I)V
    .locals 3

    .line 366
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 368
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;Z)V
    .locals 3

    .line 355
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static exitDupScene(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 3

    .line 427
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 429
    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitDupScene(Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;)V
    .locals 3

    .line 394
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;I)V
    .locals 3

    .line 416
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;Z)V
    .locals 3

    .line 405
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 321
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 333
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 111
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/XpSpeechEngine;->initApiRouter()V

    .line 112
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 115
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const-string v1, "ApiRouterSceneService"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2

    .line 150
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 153
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 156
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 2

    .line 124
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 127
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/XpSpeechEngine;->initApiRouter()V

    .line 128
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 131
    :cond_1
    sget-object p1, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const-string v0, "ApiRouterSceneService"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static initApiRouter()V
    .locals 1

    .line 136
    new-instance v0, Lcom/xiaopeng/speech/XpSpeechEngine$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/XpSpeechEngine$1;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    return-void
.end method

.method public static initRecord(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 2

    .line 457
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    return-void
.end method

.method public static initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1

    .line 453
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    return-void
.end method

.method public static initScene(Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 1

    .line 434
    new-instance v0, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;

    invoke-direct {v0, p1, p2, p0}, Lcom/xiaopeng/speech/vui/observer/XpVuiLifecycleObserver;-><init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;Landroidx/lifecycle/Lifecycle;)V

    .line 435
    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 436
    new-instance p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;

    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;-><init>()V

    .line 437
    invoke-interface {p2, p0}, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;->onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V

    return-void
.end method

.method public static isInSpeech()Z
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportRecord()Z
    .locals 1

    .line 449
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->isSupportRecord()Z

    move-result v0

    return v0
.end method

.method public static isVuiFeatureDisabled()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isVuiFeatureDisabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static registerDupVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 6

    .line 209
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addDupVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 212
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",listener:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;-><init>(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 214
    invoke-interface {p1, p0}, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;->onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V

    return-void
.end method

.method public static registerVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 6

    .line 235
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 238
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",listener:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance p0, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;

    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;-><init>()V

    .line 240
    invoke-interface {p1, p0}, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;->onInitCompleted(Lcom/xiaopeng/speech/vui/observer/XpVuiElementChangedObserver;)V

    return-void
.end method

.method public static removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3

    .line 198
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static setBuildElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 1

    .line 261
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object p1, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p1, p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setBuildElement(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setBuildElement(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setLoglevel(I)V
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setLoglevel(I)V

    :cond_0
    return-void
.end method

.method public static setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3

    .line 181
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setProcessName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 1

    .line 296
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object p1, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p1, p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static speak(Ljava/lang/String;)V
    .locals 1

    .line 476
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public static startRecord()V
    .locals 2

    .line 465
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static startRecord(Ljava/lang/String;)V
    .locals 1

    .line 461
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static stopRecord()V
    .locals 1

    .line 469
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->stopRecord()V

    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2

    .line 165
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 1

    .line 173
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static unregisterDupVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 3

    .line 223
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeDupVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public static unregisterVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;)V
    .locals 3

    .line 249
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVuiSceneListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public static updateDisplayLocation(Ljava/lang/String;)V
    .locals 3

    .line 373
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/xiaopeng/speech/XpSpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
