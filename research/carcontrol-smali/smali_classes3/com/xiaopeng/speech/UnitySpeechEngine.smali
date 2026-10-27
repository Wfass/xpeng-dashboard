.class public Lcom/xiaopeng/speech/UnitySpeechEngine;
.super Ljava/lang/Object;
.source "UnitySpeechEngine.java"


# static fields
.field private static TAG:Ljava/lang/String; = "UnitySpeechEngine"

.field private static impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 171
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

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

    .line 172
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 385
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 389
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;Z)V
    .locals 1

    .line 327
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static enterScene(Ljava/lang/String;ZI)V
    .locals 3

    .line 337
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isMainScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->enterScene(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;)V
    .locals 2

    .line 358
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 359
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;I)V
    .locals 3

    .line 368
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public static exitScene(Ljava/lang/String;IZ)V
    .locals 2

    .line 379
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    :cond_0
    return-void
.end method

.method public static getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStatefulButtonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 264
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 303
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiElement(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 315
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

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

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2

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

    const-string v1, "ApiRouterUnitySceneService"

    .line 136
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->init(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method private static initApiRouter()V
    .locals 1

    .line 441
    new-instance v0, Lcom/xiaopeng/speech/UnitySpeechEngine$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/UnitySpeechEngine$1;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    return-void
.end method

.method public static isInSpeech()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

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

    return v1

    .line 469
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isInSpeech()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static isVuiFeatureDisabled()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isVuiFeatureDisabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 393
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 481
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;)V
    .locals 6

    .line 190
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    :cond_0
    return-void
.end method

.method public static registerVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)Z
    .locals 1

    .line 451
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V

    .line 454
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/UnitySpeechEngine;->isShowVuiListIndex()Z

    move-result p0

    return p0
.end method

.method public static removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3

    .line 179
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

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

    .line 180
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static setBuildElement(Ljava/lang/String;)V
    .locals 1

    .line 211
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLoglevel(I)V
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setLoglevel(I)V

    :cond_0
    return-void
.end method

.method public static setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 3

    .line 162
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

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

    .line 163
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setProcessName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;)V
    .locals 2

    .line 220
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p0

    .line 223
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 225
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 237
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object p1, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p1, p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setUpdateElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 254
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 279
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 291
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElementVisible(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static subScribeOverallCommand([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public static unregisterVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;)V
    .locals 2

    .line 201
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V

    :cond_0
    return-void
.end method

.method public static unregisterVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V
    .locals 1

    .line 459
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiStateChangeListener(Lcom/xiaopeng/speech/vui/listener/IUnityVuiStateListener;)V

    :cond_0
    return-void
.end method

.method public static updateDisplayLocation(Ljava/lang/String;I)V
    .locals 3

    .line 347
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 350
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 434
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->vuiFeedback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 405
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVuiElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 407
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object p2, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 422
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVuiElement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",elementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/xiaopeng/speech/UnitySpeechEngine;->impl:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
