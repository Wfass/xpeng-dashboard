.class public Lcom/xiaopeng/speech/UnitySpeechEngine;
.super Ljava/lang/Object;
.source "UnitySpeechEngine.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 37
    const-string v0, "UnitySpeechEngine"

    sput-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 171
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 173
    return-void
.end method

.method public static dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 385
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public static dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "vuiEvent"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "isMainScene"    # Z

    .line 327
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    .line 330
    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;ZI)V
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "isMainScene"    # Z
    .param p2, "displayLocation"    # I

    .line 337
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isMainScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;)V
    .locals 2
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 358
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    .line 361
    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;I)V
    .locals 4
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "displayLocation"    # I

    .line 368
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 372
    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;IZ)V
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "displayLocation"    # I
    .param p2, "isMainScene"    # Z

    .line 379
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p2, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 382
    :cond_0
    return-void
.end method

.method public static getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "elementId"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStatefulButtonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "currIndex"    # I
    .param p1, "vuilabel"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "vuilabels":[Ljava/lang/String;
    invoke-static {p0, v0, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 263
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_0

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 269
    .end local v0    # "vuilabels":[Ljava/lang/String;
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 303
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 315
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 116
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/UnitySpeechEngine;->initApiRouter()V

    .line 117
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 120
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const-string v1, "ApiRouterUnitySceneService"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 129
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 133
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/UnitySpeechEngine;->initApiRouter()V

    .line 134
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 136
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const-string v1, "ApiRouterUnitySceneService"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 139
    return-void
.end method

.method private static initApiRouter()V
    .locals 1

    .line 441
    new-instance v0, Lcom/xiaopeng/speech/UnitySpeechEngine$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/UnitySpeechEngine$1;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    .line 448
    return-void
.end method

.method public static isInSpeech()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isShowVuiListIndex()Z
    .locals 2

    .line 465
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    return v1

    .line 469
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    .line 471
    :cond_1
    return v1
.end method

.method public static isVuiFeatureDisabled()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isVuiFeatureDisabled()Z

    move-result v0

    return v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 393
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    return-void
.end method

.method public static onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .line 481
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    return-void
.end method

.method public static registerVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;)V
    .locals 7
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 190
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 191
    sget-object v1, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public static registerVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)Z
    .locals 1
    .param p0, "vuiStateListener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    .line 451
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V

    .line 454
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/UnitySpeechEngine;->isShowVuiListIndex()Z

    move-result v0

    return v0
.end method

.method public static removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 179
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 181
    return-void
.end method

.method public static setBuildElement(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 211
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public static setLoglevel(I)V
    .locals 1
    .param p0, "loglevel"    # I

    .line 43
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setLoglevel(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public static setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3
    .param p0, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 162
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverallListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 164
    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 1
    .param p0, "processName"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setProcessName(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;)V
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 223
    .local v0, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    sget-object v1, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 240
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v2, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v2, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v1    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "displayLocation"    # I

    .line 254
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    :cond_0
    return-void
.end method

.method public static setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_0
    return-void
.end method

.method public static setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 291
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    :cond_0
    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2
    .param p0, "events"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 147
    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 1
    .param p0, "events"    # [Ljava/lang/String;
    .param p1, "querys"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 154
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 155
    return-void
.end method

.method public static unregisterVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;)V
    .locals 2
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    .line 201
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public static unregisterVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1
    .param p0, "vuiStateListener"    # Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;

    .line 459
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V

    .line 462
    :cond_0
    return-void
.end method

.method public static updateDisplayLocation(Ljava/lang/String;I)V
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "displayLocation"    # I

    .line 347
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public static vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "feedbackStr"    # Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 435
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public addVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "sceneData"    # Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVuiElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 407
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 408
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v2, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    .line 412
    .end local v0    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v1    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_0
    return-void
.end method

.method public removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "elementId"    # Ljava/lang/String;

    .line 422
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVuiElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",elementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    return-void
.end method
