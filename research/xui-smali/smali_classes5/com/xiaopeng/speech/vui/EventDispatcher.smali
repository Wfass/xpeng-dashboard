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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initEvent"    # Z

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

    .line 68
    const-string v0, "EventDispatcher"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mContext:Landroid/content/Context;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->initEvents()V

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/google/gson/Gson;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/EventDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private callOnVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z
    .locals 6
    .param p1, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "viewInfo"    # Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    .line 417
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 418
    return v0

    .line 420
    :cond_0
    if-eqz p2, :cond_c

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

    const-string v1, "com.android.systemui"

    .line 422
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.xiaopeng.systemui"

    .line 423
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 424
    iget-object v1, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiStatefulButtonClick:I

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 425
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 426
    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResultActions(Ljava/util/List;)V

    .line 427
    return v0

    .line 429
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    .line 430
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 431
    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setResultActions(Ljava/util/List;)V

    .line 432
    return v0

    .line 436
    .end local v1    # "o":Ljava/lang/Object;
    .end local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
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
    iget-object v0, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    .line 441
    :cond_4
    return v2

    .line 443
    :cond_5
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 444
    .local v0, "event":Lcom/xiaopeng/vui/commons/model/VuiEvent;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v3, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiEventListener(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;

    move-result-object v1

    .line 446
    .local v1, "eventListener":Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    .line 448
    .local v3, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    iget-object v4, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    instance-of v4, v4, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    if-eqz v4, :cond_8

    .line 449
    iget-object v2, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    iget-object v4, p2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-interface {v2, v4, v0}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result v2

    .line 450
    .local v2, "b":Z
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 451
    invoke-interface {v1}, Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;->onVuiEventExecutioned()V

    .line 453
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 454
    invoke-interface {v3}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEventExecutioned()V

    .line 456
    :cond_7
    return v2

    .line 459
    .end local v2    # "b":Z
    :cond_8
    if-eqz v3, :cond_9

    .line 460
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/xiaopeng/speech/vui/EventDispatcher$9;

    invoke-direct {v5, p0, v3, p2, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher$9;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    :cond_9
    if-eqz v1, :cond_a

    .line 468
    invoke-interface {v1}, Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;->onVuiEventExecutioned()V

    .line 471
    :cond_a
    if-eqz v3, :cond_b

    .line 472
    invoke-interface {v3}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEventExecutioned()V

    .line 474
    :cond_b
    return v2

    .line 420
    .end local v0    # "event":Lcom/xiaopeng/vui/commons/model/VuiEvent;
    .end local v1    # "eventListener":Lcom/xiaopeng/speech/vui/listener/IVuiEventListener;
    .end local v3    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_c
    :goto_0
    return v0
.end method

.method private getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .line 390
    .local p1, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    .line 396
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0

    .line 399
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 400
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 405
    .local v1, "vui":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v1, :cond_3

    .line 406
    return-object v0

    .line 407
    :cond_3
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    return-object v1

    .line 410
    :cond_4
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0

    .line 401
    .end local v1    # "vui":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_5
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0

    .line 392
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-object v0
.end method

.method private getResultAction(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    .line 494
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 495
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 5
    .param p1, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "view"    # Landroid/view/View;

    .line 501
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 503
    .local v0, "props":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_1

    const-string v1, "hasFeedback"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    const-string v1, "hasFeedback"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    .line 505
    .local v1, "hasFeedback":Z
    if-eqz v1, :cond_1

    .line 506
    const-string v2, "\u5f53\u524d\u8be5\u529f\u80fd\u4e0d\u53ef\u7528"

    .line 507
    .local v2, "tts":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 508
    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 509
    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedbackTTS:I

    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 511
    :cond_0
    new-instance v3, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object v3

    .line 512
    .local v3, "feedback":Lcom/xiaopeng/speech/vui/model/VuiFeedback;
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 516
    .end local v0    # "props":Lcom/google/gson/JsonObject;
    .end local v1    # "hasFeedback":Z
    .end local v2    # "tts":Ljava/lang/String;
    .end local v3    # "feedback":Lcom/xiaopeng/speech/vui/model/VuiFeedback;
    :cond_1
    return-void
.end method

.method private handleFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 355
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "hasFeedback"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, -0x1

    .line 357
    .local v0, "soundArea":I
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "soundArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "soundArea"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 361
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, p2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->storeFeedbackInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "soundArea":I
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_1
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
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

    const-string v1, "scrollTo"

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ScrollToEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ScrollToEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const-string v1, "Click"

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const-string v1, "click"

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const-string v1, "SetCheck"

    new-instance v2, Lcom/xiaopeng/speech/vui/event/SetCheckEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/SetCheckEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const-string v1, "listItemClick"

    new-instance v2, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 91
    :cond_0
    return-void
.end method

.method private isCustomFeedback(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z
    .locals 2
    .param p1, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "view"    # Landroid/view/View;

    .line 539
    if-eqz p2, :cond_0

    .line 540
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaopeng.systemui"

    .line 541
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableFeedback:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, "customControl":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 544
    const/4 v1, 0x1

    return v1

    .line 548
    .end local v0    # "customControl":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCustomHandle(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z
    .locals 2
    .param p1, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "view"    # Landroid/view/View;

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 521
    .local v0, "props":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    const-string v1, "customDisableControl"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "customDisableControl"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    .line 523
    .local v1, "customControl":Z
    return v1

    .line 526
    .end local v0    # "props":Lcom/google/gson/JsonObject;
    .end local v1    # "customControl":Z
    :cond_0
    if-eqz p2, :cond_1

    .line 527
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng.systemui"

    .line 528
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    sget v0, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDisableControl:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "customControl":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 531
    const/4 v1, 0x1

    return v1

    .line 535
    .end local v0    # "customControl":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z
    .locals 3
    .param p1, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 478
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 479
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

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    return v0

    .line 485
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "vuiEvent"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    move-object/from16 v8, p0

    .line 94
    move-object/from16 v9, p2

    if-nez v9, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-----result datasource ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 99
    .local v10, "startTime":J
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, v9, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 101
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "mEventData is Null"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void

    .line 106
    :cond_1
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 107
    return-void

    .line 110
    :cond_2
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    return-void

    .line 115
    :cond_3
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "[VuiSceneTagErr]\u573a\u666f\u4e0d\u662f\u5f53\u524d\u6d3b\u8dc3\u573a\u666f\uff0c\u8fd4\u56de:"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-void

    .line 121
    :cond_4
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getHitVuiElements(Ljava/util/List;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 123
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-nez v0, :cond_5

    .line 124
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "[VuiSceneTagErr]\u4e8b\u4ef6\u6d3e\u53d1Element \u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void

    .line 127
    :cond_5
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VuiElement  ===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v8, v9, v0, v1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 134
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v12

    .line 136
    .local v12, "sceneListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz v12, :cond_a

    instance-of v0, v12, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz v0, :cond_a

    .line 139
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 140
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_9

    .line 141
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subSceneIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v2, :cond_8

    .line 144
    nop

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 145
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 147
    .local v4, "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    iget-object v5, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v5

    .line 148
    .local v5, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    iget-object v6, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "targetElement:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v5, :cond_7

    .line 150
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    .line 151
    .local v6, "vuiSceneListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v6, :cond_7

    .line 152
    iget-object v7, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v13, Lcom/xiaopeng/speech/vui/EventDispatcher$1;

    invoke-direct {v13, v8, v6}, Lcom/xiaopeng/speech/vui/EventDispatcher$1;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v7, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void

    .line 144
    .end local v3    # "subSceneId":Ljava/lang/String;
    .end local v4    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v5    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v6    # "vuiSceneListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    .line 164
    .local v1, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v1, :cond_9

    .line 165
    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/speech/vui/EventDispatcher$2;

    invoke-direct {v4, v8, v1}, Lcom/xiaopeng/speech/vui/EventDispatcher$2;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v1    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v2    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 177
    :cond_a
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isThirdApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "[VuiSceneTagInfo]Event will dispatch to third app"

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 180
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_c

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getSubSceneList()Ljava/util/List;

    move-result-object v2

    .line 182
    .restart local v2    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subSceneIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v2, :cond_c

    .line 184
    nop

    .local v1, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .restart local v3    # "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 187
    .restart local v4    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    iget-object v5, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v5

    .line 188
    .restart local v5    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    iget-object v6, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "targetElement:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v5, :cond_b

    .line 190
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    .line 191
    .restart local v6    # "vuiSceneListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v6, :cond_b

    .line 192
    iget-object v7, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v13, Lcom/xiaopeng/speech/vui/EventDispatcher$3;

    invoke-direct {v13, v8, v6}, Lcom/xiaopeng/speech/vui/EventDispatcher$3;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v7, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void

    .line 184
    .end local v3    # "subSceneId":Ljava/lang/String;
    .end local v4    # "cache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v5    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v6    # "vuiSceneListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    .end local v1    # "i":I
    .end local v2    # "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    .line 205
    .local v1, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v1, :cond_d

    .line 206
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/vui/EventDispatcher$4;

    invoke-direct {v3, v8, v1}, Lcom/xiaopeng/speech/vui/EventDispatcher$4;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_d
    return-void

    .line 219
    .end local v0    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v1    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_e
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    .line 220
    .local v0, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v0, :cond_f

    instance-of v2, v0, Lcom/xiaopeng/speech/vui/listener/IXpVuiSceneListener;

    if-eqz v2, :cond_f

    .line 222
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/EventDispatcher$5;

    invoke-direct {v2, v8, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher$5;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void

    .line 233
    .end local v0    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_f
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    .line 234
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneTagInfo]dispatch Scene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLIST:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIRTUALLISTITEM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 237
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_9

    .line 259
    :cond_10
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v0

    .line 261
    .local v0, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-nez v2, :cond_11

    .line 262
    move-object/from16 v16, v0

    goto/16 :goto_6

    .line 278
    :cond_11
    const/4 v2, 0x0

    .line 279
    .local v2, "customDoAction":Z
    const-string v3, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "com.xiaopeng.systemui"

    .line 280
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 281
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    sget v4, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->customDoAction:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "doAction":Ljava/lang/Object;
    if-eqz v3, :cond_12

    .line 283
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 287
    .end local v2    # "customDoAction":Z
    .end local v3    # "doAction":Ljava/lang/Object;
    .local v13, "customDoAction":Z
    :cond_12
    move v13, v2

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v8, v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomView(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v13, :cond_14

    .line 289
    :cond_13
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v8, v2, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->callOnVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 290
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "[VuiSceneTagInfo]custom view dispatch success"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 300
    :cond_14
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 301
    if-eqz v0, :cond_18

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v2, :cond_18

    .line 302
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    .line 303
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {v8, v2, v3}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomHandle(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 304
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "[VuiSceneTagErr]view \u4e0d\u53ef\u64cd\u4f5c"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {v8, v1, v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->isCustomFeedback(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 306
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {v8, v1, v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->handleDisableFeedBack(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V

    .line 308
    :cond_15
    return-void

    .line 310
    :cond_16
    new-instance v5, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v5, v2}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 311
    .local v5, "event":Lcom/xiaopeng/vui/commons/model/VuiEvent;
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v8, v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->getResultAction(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "action":Ljava/lang/String;
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getAnimation()Lcom/xiaopeng/vui/commons/model/AnimationObj;

    move-result-object v15

    .line 313
    .local v15, "animationObj":Lcom/xiaopeng/vui/commons/model/AnimationObj;
    if-nez v15, :cond_17

    :goto_3
    move v3, v1

    goto :goto_4

    :cond_17
    invoke-virtual {v15}, Lcom/xiaopeng/vui/commons/model/AnimationObj;->isEffectOnly()Z

    move-result v1

    goto :goto_3

    .line 314
    .local v3, "effectOnly":Z
    :goto_4
    iget-object v6, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/vui/EventDispatcher$8;

    move-object v1, v7

    move-object v2, v8

    move-object v4, v0

    move-object/from16 v16, v0

    move-object v0, v6

    move-object v9, v7

    move-wide v6, v10

    .end local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .local v16, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/speech/vui/EventDispatcher$8;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;ZLcom/xiaopeng/speech/vui/model/VuiEventInfo;Lcom/xiaopeng/vui/commons/model/VuiEvent;J)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    .end local v3    # "effectOnly":Z
    .end local v5    # "event":Lcom/xiaopeng/vui/commons/model/VuiEvent;
    .end local v14    # "action":Ljava/lang/String;
    .end local v15    # "animationObj":Lcom/xiaopeng/vui/commons/model/AnimationObj;
    goto :goto_5

    .line 348
    .end local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_18
    move-object/from16 v16, v0

    .end local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "[VuiSceneTagInfo]\u6ca1\u627e\u5230\u6b63\u786e\u7684\u6267\u884c\u64cd\u4f5c\u7684view"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 351
    .end local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_19
    move-object/from16 v16, v0

    .end local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :goto_5
    return-void

    .line 262
    .end local v13    # "customDoAction":Z
    .end local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_1a
    move-object/from16 v16, v0

    .end local v0    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .restart local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :goto_6
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    const-string v1, "Dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_7

    .line 273
    :cond_1b
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "[VuiSceneTagErr]\u6ca1\u627e\u5230\u6b63\u786e\u7684\u6267\u884c\u64cd\u4f5c\u7684view"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 263
    :cond_1c
    :goto_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mEventData:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v0

    .line 264
    .local v0, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v0, :cond_1d

    .line 265
    iget-object v1, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/vui/EventDispatcher$7;

    invoke-direct {v2, v8, v0}, Lcom/xiaopeng/speech/vui/EventDispatcher$7;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    .end local v0    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_1d
    nop

    .line 275
    :goto_8
    return-void

    .line 238
    .end local v16    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    :cond_1e
    :goto_9
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 239
    .local v0, "props":Lcom/google/gson/JsonObject;
    const-string v1, "parentId"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 240
    const-string v1, "parentId"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "parentId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->mDispatchSceneId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->findView(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    move-result-object v2

    .line 242
    .local v2, "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    if-eqz v2, :cond_1f

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    if-eqz v3, :cond_1f

    .line 243
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    .line 244
    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/speech/vui/EventDispatcher$6;

    invoke-direct {v4, v8}, Lcom/xiaopeng/speech/vui/EventDispatcher$6;-><init>(Lcom/xiaopeng/speech/vui/EventDispatcher;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v3, v8, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/event/SetValueEvent;

    .line 251
    .local v3, "ev":Lcom/xiaopeng/speech/vui/event/SetValueEvent;
    if-eqz v3, :cond_1f

    .line 252
    iget-object v4, v2, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/event/SetValueEvent;->setSceneId(Ljava/lang/String;)V

    .line 256
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "viewInfo":Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
    .end local v3    # "ev":Lcom/xiaopeng/speech/vui/event/SetValueEvent;
    :cond_1f
    return-void
.end method

.method public run()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    .line 373
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->events:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/event/IVuiEvent;

    .line 377
    .local v1, "ev":Lcom/xiaopeng/speech/vui/event/IVuiEvent;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->weakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher;->vuiElement:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/speech/vui/event/IVuiEvent;->run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;

    .line 380
    :cond_1
    return-void

    .line 374
    .end local v1    # "ev":Lcom/xiaopeng/speech/vui/event/IVuiEvent;
    :cond_2
    :goto_0
    return-void
.end method
