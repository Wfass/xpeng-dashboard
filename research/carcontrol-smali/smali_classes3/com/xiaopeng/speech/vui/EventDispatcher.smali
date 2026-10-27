.class Lcom/xiaopeng/speech/vui/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/event/IVuiEvent;",
            ">;"
        }
    .end annotation
.end field

.field private gson:Lcom/google/gson/Gson;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDispatchSceneId:Ljava/lang/String;

.field private mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

.field private vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

.field private weakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->gson:Lcom/google/gson/Gson;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const-string v0, "EventDispatcher"

    .line 68
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->initEvents()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/google/gson/Gson;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/EventDispatcher;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private callOnVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_c

    .line 420
    iget-object v1, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 421
    :cond_1
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 422
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.xiaopeng.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 424
    iget-object v1, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiStatefulButtonClick:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    new-array p2, v2, [Ljava/lang/String;

    .line 426
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResultActions(Ljava/util/List;)V

    return v0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 430
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    new-array p2, v2, [Ljava/lang/String;

    .line 431
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResultActions(Ljava/util/List;)V

    return v0

    .line 436
    :cond_3
    iget-object v0, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomHandle(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "view \u4e0d\u53ef\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomFeedback(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    iget-object p2, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    :cond_4
    return v2

    .line 443
    :cond_5
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 444
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object v1, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiEventListener(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    move-result-object p1

    .line 446
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v3, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    .line 448
    iget-object v3, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v3, v3, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    if-eqz v3, :cond_8

    .line 449
    iget-object v2, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    iget-object p2, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-interface {v2, p2, v0}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 451
    invoke-interface {p1}, Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;->onVuiEventExecutioned()V

    :cond_6
    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    .line 454
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEventExecutioned()V

    :cond_7
    return p2

    :cond_8
    if-eqz v1, :cond_9

    .line 460
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/speech/vui/EventDispatcher$9;

    invoke-direct {v4, p0, v1, p2, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher$9;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    if-eqz p1, :cond_a

    .line 468
    invoke-interface {p1}, Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;->onVuiEventExecutioned()V

    :cond_a
    if-eqz v1, :cond_b

    .line 472
    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEventExecutioned()V

    :cond_b
    return v2

    :cond_c
    :goto_0
    return v0
.end method

.method private getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 390
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 395
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p1

    .line 399
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 400
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-nez p1, :cond_3

    return-object v0

    .line 407
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 410
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    return-object p1

    .line 401
    :cond_5
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object p1

    :cond_6
    :goto_1
    return-object v0
.end method

.method private getResultAction(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/String;
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 497
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 2

    .line 501
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "hasFeedback"

    .line 503
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 508
    sget p1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 509
    sget p1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u5f53\u524d\u8be5\u529f\u80fd\u4e0d\u53ef\u7528"

    .line 511
    :goto_0
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_1
    return-void
.end method

.method private handleFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 3

    const-string v0, "soundArea"

    .line 355
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "hasFeedback"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 357
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 361
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResourceName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initEvents()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/speech/vui/event/ScrollToEvent;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/event/ScrollToEvent;-><init>()V

    const-string v2, "scrollTo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    const-string v2, "Click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    const-string v2, "click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/speech/vui/event/SetCheckEvent;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/event/SetCheckEvent;-><init>()V

    const-string v2, "SetCheck"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    new-instance v1, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    const-string v2, "listItemClick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private isCustomFeedback(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 540
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 541
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaopeng.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 542
    sget p1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedback:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isCustomHandle(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z
    .locals 2

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "customDisableControl"

    .line 521
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 527
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 528
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaopeng.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    sget p1, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableControl:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 481
    :cond_0
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 482
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 483
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 484
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----result datasource ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->gson:Lcom/google/gson/Gson;

    const-class v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "mEventData is Null"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagErr]\u573a\u666f\u4e0d\u662f\u5f53\u524d\u6d3b\u8dc3\u573a\u666f\uff0c\u8fd4\u56de:"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-nez p1, :cond_5

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagErr]\u4e8b\u4ef6\u6d3e\u53d1Element \u4e3a\u7a7a"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiElement  ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 134
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "targetElement:"

    const-string v1, "subSceneIds:"

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    instance-of p1, p1, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz p1, :cond_a

    .line 139
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p2

    .line 142
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 144
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 145
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 147
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 150
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/speech/vui/EventDispatcher$1;

    invoke-direct {p2, p0, v1}, Lcom/xiaopeng/speech/vui/EventDispatcher$1;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher$2;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_1
    return-void

    .line 177
    :cond_a
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagInfo]Event will dispatch to third app"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 184
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_c

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 187
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 188
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    .line 190
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$3;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher$3;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    :cond_c
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 206
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher$4;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void

    .line 219
    :cond_e
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 221
    instance-of p2, p1, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-eqz p2, :cond_f

    .line 222
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher$5;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 233
    :cond_f
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VuiSceneTagInfo]dispatch Scene:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    sget-object p1, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 237
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_9

    .line 259
    :cond_10
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 261
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-nez p1, :cond_11

    goto/16 :goto_6

    .line 279
    :cond_11
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 280
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xiaopeng.systemui"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 281
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDoAction:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 283
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_12
    move p1, v2

    .line 287
    :goto_3
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_14

    .line 289
    :cond_13
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, p1, v4}, Lcom/xiaopeng/speech/vui/EventDispatcher;->callOnVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagInfo]custom view dispatch success"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_14
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz v4, :cond_18

    .line 301
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 302
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    .line 303
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomHandle(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagErr]view \u4e0d\u53ef\u64cd\u4f5c"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomFeedback(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 306
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object p2, v4, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    :cond_15
    return-void

    .line 310
    :cond_16
    new-instance v5, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v5, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getResultAction(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getAnimation()Lcom/xiaopeng/vui/commons/model/AnimationObj;

    move-result-object p1

    if-nez p1, :cond_17

    move v3, v2

    goto :goto_4

    .line 313
    :cond_17
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/AnimationObj;->isEffectOnly()Z

    move-result p1

    move v3, p1

    .line 314
    :goto_4
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/xiaopeng/speech/vui/EventDispatcher$8;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/vui/EventDispatcher$8;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;ZLcom/xiaopeng/speech/vui/model/VuiEventInfo;Lcom/xiaopeng/vui/commons/model/VuiEvent;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 348
    :cond_18
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagInfo]\u6ca1\u627e\u5230\u6b63\u786e\u7684\u6267\u884c\u64cd\u4f5c\u7684view"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_5
    return-void

    .line 262
    :cond_1a
    :goto_6
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    const-string p2, "Dialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    const-string p2, "dialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_7

    .line 273
    :cond_1b
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagErr]\u6ca1\u627e\u5230\u6b63\u786e\u7684\u6267\u884c\u64cd\u4f5c\u7684view"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 263
    :cond_1c
    :goto_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 265
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/speech/vui/EventDispatcher$7;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_8
    return-void

    .line 238
    :cond_1e
    :goto_9
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "parentId"

    .line 239
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 240
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 242
    iget-object p2, p1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz p2, :cond_1f

    .line 243
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    .line 244
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/vui/EventDispatcher$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/vui/EventDispatcher$6;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    if-eqz p2, :cond_1f

    .line 252
    iget-object p1, p1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->setSceneId(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/event/IVuiEvent;

    if-eqz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/vui/event/IVuiEvent;->run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method
