.class public Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "NaviNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVE_VOICE_TASK:Ljava/lang/String; = "\u4e3b\u52a8\u8bed\u97f3"

.field public static final ALL_ROUTE_WIDGET_ID:Ljava/lang/String; = "-Route-2"

.field public static final BASE_ROUTE_WIDGET_ID:Ljava/lang/String; = "-Route-1"

.field private static final COMMAND_SPLIT:Ljava/lang/String; = "#"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_PULLUP_NAVI:Ljava/lang/String; = "pullUpNavi"

.field private static final OFFLINE_SKILL:Ljava/lang/String; = "\u79bb\u7ebf\u547d\u4ee4\u8bcd"

.field private static final SELECT_PARKING_INTENT:Ljava/lang/String; = "\u505c\u8f66\u573a\u4e3b\u52a8\u8bed\u97f3"

.field private static final SELECT_ROUTE_INTENT:Ljava/lang/String; = "\u8def\u7ebf\u4e3b\u52a8\u8bed\u97f3"

.field private static final STOP_DIALOG_OPT_FORCE:I = 0x0

.field private static final STOP_DIALOG_OPT_OPTIONAL:I = 0x1


# instance fields
.field private binder:Landroid/os/IBinder;

.field private mAddressPendingRoute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    .line 67
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V
    .locals 3
    .param p1, "startNaviBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 778
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 780
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private getRouteSelectWidget(Ljava/util/List;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;)",
            "Lcom/xiaopeng/speech/speechwidget/SpeechWidget;"
        }
    .end annotation

    .line 1182
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 1183
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    const-string v1, "route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1184
    const-string v1, "navi_route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 1185
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1187
    .local v2, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1188
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1189
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1191
    :try_start_0
    const-string v4, "navi_route"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    goto :goto_1

    .line 1192
    :catch_0
    move-exception v4

    .line 1193
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1195
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1196
    .end local v2    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 1198
    :cond_0
    return-object v0
.end method

.method private postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p3, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 622
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 623
    const-string v1, "navi"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 624
    if-eqz p3, :cond_0

    .line 625
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 626
    .local v2, "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 627
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 628
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 630
    :try_start_0
    const-string v4, "navi"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    goto :goto_1

    .line 631
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 634
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 635
    .end local v2    # "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 637
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    invoke-direct {v2, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 638
    return-void
.end method

.method private postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p3, "isExistRoute"    # Z
    .param p4, "isWaypointListFull"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;ZZ)V"
        }
    .end annotation

    .line 598
    .local p2, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 599
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 600
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExist(Z)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 601
    const-string v1, "navi"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 602
    const-string v1, "isWaypointListFull"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 603
    if-eqz p2, :cond_0

    .line 604
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 605
    .local v2, "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 606
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 607
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 609
    :try_start_0
    const-string v4, "navi"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_1

    .line 610
    :catch_0
    move-exception v4

    .line 611
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 613
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 614
    .end local v2    # "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 616
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://navi.waypoint.search"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 617
    return-void
.end method


# virtual methods
.method public directNavigation()V
    .locals 4

    .line 1244
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1245
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "from"

    const-string v2, "Navigation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1250
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public ignoreRouteResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "speechInfo"    # Ljava/lang/String;

    .line 2338
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2339
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "from"

    const-string v2, "Navigation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2340
    const-string v1, "NaviNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoreRouteResult:speechInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2342
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 2343
    .local v1, "speechObj":Lcom/google/gson/JsonObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2344
    const-string v2, "soundArea"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2345
    const-string v2, "soundArea"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 2346
    .local v2, "soundArea":I
    const-string v3, "soundArea"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2350
    .end local v1    # "speechObj":Lcom/google/gson/JsonObject;
    .end local v2    # "soundArea":I
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 2351
    :catch_0
    move-exception v0

    .line 2354
    :goto_0
    return-void
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x0

    return v0

    .line 789
    :cond_0
    const-string v0, "-?[0-9]+(\\.[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 791
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public onAddressGet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.address.get"
    .end annotation

    .line 642
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    move-result-object v0

    .line 643
    .local v0, "addressBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 644
    .local v1, "listenerList":[Ljava/lang/Object;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 645
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 646
    aget-object v4, v1, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAddressGet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)V

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v3    # "i":I
    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    .line 650
    return-void
.end method

.method public onAddressPendingRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.address.pending.route"
    .end annotation

    .line 678
    const-string v0, "pending route"

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    .line 680
    return-void
.end method

.method public onAddressSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.address.set"
    .end annotation

    .line 684
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;-><init>()V

    .line 685
    .local v0, "addressBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;
    const/4 v1, 0x0

    .line 686
    .local v1, "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    const/4 v2, 0x0

    .line 687
    .local v2, "pathPref":Ljava/lang/String;
    const/4 v3, 0x0

    .line 688
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 689
    .local v4, "naviType":I
    const/4 v5, 0x0

    .line 690
    .local v5, "isImediateNavi":Z
    const/4 v6, 0x0

    .line 691
    .local v6, "routeSelectRef":I
    const/4 v7, 0x0

    .line 693
    .local v7, "dialogInfo":Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 694
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "addressType"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->setAddressType(Ljava/lang/String;)V

    .line 695
    const-string v9, "poi"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 696
    .local v9, "posJson":Ljava/lang/String;
    invoke-static {v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v10

    move-object v1, v10

    .line 697
    const-string v10, "pref"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 698
    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 699
    const-string v10, "naviType"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    move v4, v10

    .line 700
    const-string v10, "imediatenavi"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    move v5, v10

    .line 701
    const-string v10, "routeSelectRef"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    move v6, v10

    .line 702
    const-string v10, "soundArea"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 703
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v10

    .line 704
    const-string v10, "soundArea"

    const-string v11, "soundArea"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "posJson":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 706
    :catch_0
    move-exception v8

    .line 707
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 709
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v8, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v8

    .line 710
    .local v8, "listenerList":[Ljava/lang/Object;
    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 711
    move v10, v9

    .local v10, "i":I
    :goto_1
    array-length v11, v8

    if-ge v10, v11, :cond_1

    .line 712
    aget-object v11, v8, v10

    check-cast v11, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v11, v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAddressSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V

    .line 711
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 715
    .end local v10    # "i":I
    :cond_1
    iget-boolean v10, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    if-eqz v10, :cond_2

    .line 716
    new-instance v10, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v10, v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .local v10, "startNaviBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;
    invoke-virtual {v10, v4}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 718
    invoke-virtual {v10, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 719
    invoke-virtual {v10, v6}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 720
    invoke-virtual {v10, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    .line 721
    invoke-direct {p0, v10}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    .line 723
    .end local v10    # "startNaviBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;
    :cond_2
    iput-boolean v9, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    .line 724
    return-void
.end method

.method public onAlertsPreferenceSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.alerts.preference.set"
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1459
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1460
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1461
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object v1

    .line 1462
    .local v1, "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1463
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1464
    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAlertsPreferenceSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1468
    .end local v1    # "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onAutoRerouteAskFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.auto.reroute.ask.first"
    .end annotation

    .line 1497
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1498
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1500
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1501
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteAskFirst()V

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onAutoRerouteBetterRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.auto.reroute.better.route"
    .end annotation

    .line 1486
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1487
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1489
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1490
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteBetterRoute()V

    .line 1488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onAutoRerouteNever(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.auto.reroute.never"
    .end annotation

    .line 1508
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1509
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1510
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1511
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1512
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteNever()V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1515
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onAvoidRouteSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.avoid.route.set"
    .end annotation

    .line 1472
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1473
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1474
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object v1

    .line 1476
    .local v1, "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1477
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1478
    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAvoidRouteSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1482
    .end local v1    # "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onCloseTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.road.info.close"
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 114
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onCloseTraffic()V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onConfirmCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.confirm.cancel"
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 925
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 926
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 927
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onConfirmCancel()V

    .line 926
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onConfirmOk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.confirm.ok"
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 915
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 916
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 917
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onConfirmOk()V

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlBridge3DMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.bridge.area.3d.map"
    .end annotation

    .line 1868
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1869
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1870
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1871
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlBridge3DMap()V

    .line 1870
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1874
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlBridge3DMapOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.bridge.area.3d.map.off"
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1879
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1880
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1881
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlBridge3DMapOff()V

    .line 1880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1884
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlChargeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.control.charge.close"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 185
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeClose()V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlChargeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.control.charge.open"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 175
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeOpen()V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlChargeServiceOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.charge.service.open"
    .end annotation

    .line 1618
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v0, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 1620
    const-string v1, "stationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    const-string v1, "stationId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "stationId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1623
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1624
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1625
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeServiceOpen(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1632
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "stationId":Ljava/lang/String;
    .end local v2    # "listenerList":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1633
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onControlClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.close"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlClose()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlCloseRibbonMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.ribbon.map.close"
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1082
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1083
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1084
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCloseRibbonMap()V

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlCloseSmallMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.small.map.close"
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1062
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1063
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1064
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCloseSmallMap()V

    .line 1063
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlCommuterRouteShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "navi.commuter.route.show"
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1769
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1770
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1771
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCommuterRouteShow()V

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1774
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlCommuterRouteShowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.commuter.route.show.off"
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1779
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1781
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCommuterRouteShowOff()V

    .line 1780
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDashboardDisplay2DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.dashboard.display.2d.headup"
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1809
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1811
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDashboardDisplay2DHeadUp()V

    .line 1810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1814
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDashboardDisplay3DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.dashboard.display.3d.headup"
    .end annotation

    .line 1818
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1819
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1820
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1821
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDashboardDisplay3DHeadUp()V

    .line 1820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1824
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDisPlayCar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.display.car"
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 827
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 829
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisPlayCar()V

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDisPlayNorth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.display.north"
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 817
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 818
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 819
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisPlayNorth()V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDisplay2DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.display.2d.headup"
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1789
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1790
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1791
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay2DHeadUp()V

    .line 1790
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1794
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDisplay3D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.display.3d"
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 838
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 839
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay3D()V

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDisplay3DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.display.3d.headup"
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1799
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1800
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1801
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay3DHeadUp()V

    .line 1800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1804
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDriveChargeLess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.charge.less"
    .end annotation

    .line 1707
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1708
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1709
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1710
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDriveChargeLess()V

    .line 1709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1713
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlDriveChargeLessOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.charge.less.off"
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1718
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1720
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDriveChargeLessOff()V

    .line 1719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1723
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlFavoriteClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.favorite.close"
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 486
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlFavoriteClose()V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlFavoriteOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.favorite.open"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 155
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlFavoriteOpen()V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlGaodeAccountPageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.gaode.account.page.open"
    .end annotation

    .line 1598
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v0, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 1600
    const-string v1, "pageId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const-string v1, "pageId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1602
    .local v1, "pageId":I
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1603
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1604
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1605
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlGaodeAccountPageOpen(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1612
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pageId":I
    .end local v2    # "listenerList":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1613
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onControlHighroadFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highroad.first"
    .end annotation

    .line 1728
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1729
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1730
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1731
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHighroadFirst()V

    .line 1730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1734
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlHighroadFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highroad.first.off"
    .end annotation

    .line 1738
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1739
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1741
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHighroadFirstOff()V

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1744
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.history"
    .end annotation

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1255
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1257
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHistory()V

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlHistoryCLose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.history.close"
    .end annotation

    .line 1566
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1567
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1569
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1570
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHistoryClose()V

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlOpenRibbonMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.ribbon.map.open"
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1072
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1074
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOpenRibbonMap()V

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlOpenSmallMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.small.map.open"
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1052
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1053
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1054
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOpenSmallMap()V

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1057
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlOverviewClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.overview.close"
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 134
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOverviewClose()V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlOverviewOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.overview.open"
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 124
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOverviewOpen()V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlParkRecommendOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.park.recommend.off"
    .end annotation

    .line 1404
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1405
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1407
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlParkRecommendOff()V

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1410
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlParkRecommendOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.park.recommend.on"
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1395
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1397
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlParkRecommendOn()V

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlRealtimeTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "navi.realtime.traffic"
    .end annotation

    .line 1838
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1839
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1840
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1841
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRealtimeTraffic()V

    .line 1840
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1844
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlRealtimeTrafficOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.realtime.traffic.off"
    .end annotation

    .line 1828
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1829
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1830
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1831
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRealtimeTrafficOff()V

    .line 1830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1834
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlRoadAhead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.road.ahead"
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 365
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRoadAhead()V

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlRoadAheadOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.road.ahead.off"
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 496
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRoadAheadOff()V

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSecurityRemind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.security.remind"
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 355
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSecurityRemind()V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSecurityRemindOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.security.remind.off"
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 426
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSecurityRemindOff()V

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSettingsCLose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.settings.close"
    .end annotation

    .line 1555
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1556
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1558
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1559
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSettingsClose()V

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSettingsOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.control.settings.open"
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 165
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSettingsOpen()V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartChargingRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.smart.charging.route"
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1668
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1670
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartChargingRoute()V

    .line 1669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartChargingRouteOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.smart.charging.route.off"
    .end annotation

    .line 1677
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1678
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1680
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartChargingRouteOff()V

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.smart.recommend"
    .end annotation

    .line 1687
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1688
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1689
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1690
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartRecommend()V

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1693
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartRecommendOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.smart.recommend.off"
    .end annotation

    .line 1697
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1698
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1699
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1700
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartRecommendOff()V

    .line 1699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1703
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartScale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.smart.scale"
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 335
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartScale()V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSmartScaleOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.smart.scale.off"
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 345
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartScaleOff()V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechCruise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.cruise"
    .end annotation

    .line 1647
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1648
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1650
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechCruise()V

    .line 1649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechCruiseOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.cruise.off"
    .end annotation

    .line 1657
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1658
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1659
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1660
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechCruiseOff()V

    .line 1659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1663
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.detail"
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 807
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 808
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 809
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechDetail()V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechEye(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.eye"
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 315
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechEye()V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechEyeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.eye.off"
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 325
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechEyeOff()V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.general"
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 305
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechGeneral()V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechMute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.mute"
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 285
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechMute()V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.simple"
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 798
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 799
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechSimple()V

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechStandard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.standard"
    .end annotation

    .line 1637
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1638
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1640
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechStandard()V

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1643
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlSpeechSuperSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.speech.super.simple"
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 295
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechSuperSimple()V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.start"
    .end annotation

    move-object/from16 v1, p0

    .line 728
    const/4 v2, 0x0

    .line 729
    .local v2, "poiBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    const/4 v3, 0x0

    .line 730
    .local v3, "pathPref":Ljava/lang/String;
    const/4 v4, -0x1

    .line 731
    .local v4, "pref":I
    const/4 v5, 0x0

    .line 732
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 733
    .local v6, "naviType":I
    const/4 v7, 0x0

    .line 734
    .local v7, "routeSelectRef":I
    const/4 v8, 0x0

    .line 736
    .local v8, "isImediateNavi":Z
    const/4 v9, 0x1

    .line 737
    .local v9, "fullSceneSwitch":Z
    const/4 v0, 0x0

    move-object v10, v0

    .line 739
    .local v10, "dialogInfo":Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v11, p2

    :try_start_1
    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v12, "poi"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 741
    .local v12, "posJson":Ljava/lang/String;
    invoke-static {v12}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v13

    move-object v2, v13

    .line 742
    const-string v13, "pref"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 743
    const-string v13, "NaviNode"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pathPref:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->isNumeric(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 745
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v4, v13

    .line 747
    :cond_0
    const-string v13, "type"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 748
    const-string v13, "naviType"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move v6, v13

    .line 749
    const-string v13, "imediatenavi"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    move v8, v13

    .line 750
    const-string v13, "routeSelectRef"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move v7, v13

    .line 751
    const-string v13, "fullSceneSwitch"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 752
    const-string v13, "fullSceneSwitch"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move v9, v13

    .line 754
    :cond_1
    const-string v13, "soundArea"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 755
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-object v10, v13

    .line 756
    const-string v13, "soundArea"

    const-string v14, "soundArea"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 760
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "posJson":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 758
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v11, p2

    .line 759
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 761
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v0, 0x0

    .line 762
    .local v0, "startNaviBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;
    const/4 v12, -0x1

    if-eq v4, v12, :cond_3

    .line 763
    new-instance v12, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v12, v2, v4, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;ILjava/lang/String;)V

    move-object v0, v12

    goto :goto_2

    .line 765
    :cond_3
    new-instance v12, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v12, v2, v3, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 767
    :goto_2
    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 768
    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 769
    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 770
    invoke-virtual {v0, v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setFullSceneSwitch(Z)V

    .line 771
    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    .line 772
    const-string v12, "NaviNode"

    const-string v13, "StartNaviBean = %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-direct {v1, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    .line 774
    return-void
.end method

.method public onControlTimeFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.time.priority"
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1749
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1751
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTimeFirst()V

    .line 1750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1754
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlTimeFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.time.priority.off"
    .end annotation

    .line 1758
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1759
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1760
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1761
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTimeFirstOff()V

    .line 1760
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1764
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlTrafficIncident(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "navi.traffic.incident"
    .end annotation

    .line 1848
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1849
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1850
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1851
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTrafficIncident()V

    .line 1850
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1854
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlTrafficIncidentOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.traffic.incident.off"
    .end annotation

    .line 1858
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1859
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1860
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1861
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTrafficIncidentOff()V

    .line 1860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1864
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onControlVolOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.vol.off"
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 871
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 872
    .local v1, "pullUpNavi":Z
    const/4 v2, 0x0

    move v3, v2

    .line 875
    .local v3, "mode":I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 876
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "pullUpNavi"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v1, v5

    .line 877
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 878
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 882
    :cond_0
    goto :goto_0

    .line 880
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 881
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 883
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 884
    nop

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 885
    aget-object v4, v0, v2

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v1, v3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlVolOff(ZI)V

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 888
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onControlVolOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.vol.on"
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 848
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 849
    .local v1, "pullUpNavi":Z
    const/4 v2, 0x0

    move v3, v2

    .line 852
    .local v3, "mode":I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 853
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "pullUpNavi"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v1, v5

    .line 854
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 855
    const-string v5, "mode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 859
    :cond_0
    goto :goto_0

    .line 857
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 858
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 861
    nop

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 862
    aget-object v4, v0, v2

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v1, v3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlVolOn(ZI)V

    .line 861
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 865
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onControlWaypointStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.control.waypoint.start"
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1040
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;

    move-result-object v1

    .line 1041
    .local v1, "pathBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;
    const-string v2, "NaviNode, pathBean =%s"

    if-nez v1, :cond_0

    const-string v3, "data is null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    if-eqz v0, :cond_1

    .line 1043
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1044
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlWaypointStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;)V

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1047
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onDataControlDisplay3dTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 988
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 989
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 990
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 991
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplay3dTts()V

    .line 990
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataControlDisplayCarTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 999
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1001
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplayCarTts()V

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1004
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDataControlDisplayNorthTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 1008
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1009
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1010
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1011
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplayNorthTts()V

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAdvoidTrafficControl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1019
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1020
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1021
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAdvoidTrafficControl()V

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1024
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidCharge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.charge"
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 215
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCharge()V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidChargeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.charge.off"
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 225
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidChargeOff()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidCongestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.congestion"
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 195
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCongestion()V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidCongestionOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.congestion.off"
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCongestionOff()V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidControls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.controls"
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 245
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidControls()V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveAvoidControlsOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.avoid.controls.off"
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 255
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidControlsOff()V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveHighwayFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highway.first"
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 395
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayFirst()V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveHighwayFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highway.first.off"
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 235
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayFirstOff()V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveHighwayNo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highway.no"
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 375
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayNo()V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveHighwayNoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.highway.no.off"
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 383
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 385
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayNoOff()V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveRadarRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.radar.route"
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 265
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveRadarRoute()V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDriveRadarRouteOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.drive.radar.route.off"
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 275
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveRadarRouteOff()V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onGetSettingsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.settings.info"
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1381
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1383
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onGetSettingsInfo()V

    .line 1382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1386
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onListDisappear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "listType"    # Ljava/lang/String;
    .param p2, "speechInfo"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 2208
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2209
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "poi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2210
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 2212
    :cond_0
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 2214
    :goto_0
    const-string v1, "listType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2215
    const-string v1, "speechInfo"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2216
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2217
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.disappear"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2220
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 2218
    :catch_0
    move-exception v0

    .line 2221
    :goto_1
    return-void
.end method

.method public onListItemSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.list.item.selected"
    .end annotation

    .line 1578
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "jsonObject":Lorg/json/JSONObject;
    nop

    .line 1580
    const-string v1, "index"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const-string v1, "index"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1582
    .local v1, "index":I
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 1583
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1584
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 1585
    aget-object v4, v2, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onListItemSelected(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1592
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "index":I
    .end local v2    # "listenerList":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1593
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onMainRoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.main.road"
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 464
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 466
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMainRoad()V

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapEnterFindPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.enter.find.path"
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 436
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapEnterFindPath()V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapExitFindPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.exit.find.path"
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 444
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 446
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapExitFindPath()V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapOverview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.overview"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 144
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapOverview()V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapShowSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.show.set"
    .end annotation

    .line 1519
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1520
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1521
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1522
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object v1

    .line 1523
    .local v1, "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1524
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1525
    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapShowSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    .line 1523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1529
    .end local v1    # "pref":Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onMapZoomIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.zoomin"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomIn()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapZoomOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.zoomout"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomOut()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapZoominMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.zoomin.max"
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 504
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 506
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoominMax()V

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onMapZoomoutMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.map.zoomout.min"
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 514
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 516
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomoutMin()V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.charging.search"
    .end annotation

    .line 2238
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 2239
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2240
    .local v1, "speechInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2241
    .local v2, "searchInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 2243
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2244
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2246
    .local v3, "dataJson":Lorg/json/JSONObject;
    nop

    .line 2247
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2248
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2250
    .local v5, "str":Ljava/lang/String;
    const-string v6, "triggerApi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dialogueInfo"

    .line 2251
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2254
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_2

    .line 2252
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    .end local v5    # "str":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 2261
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_3

    .line 2259
    :catch_0
    move-exception v3

    .line 2260
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 2262
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v3, "NaviNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",speechInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2263
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 2264
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2267
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public onNaviListCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.list.cancel"
    .end annotation

    .line 2315
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 2316
    .local v0, "listenerList":[Ljava/lang/Object;
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2317
    .local v1, "listType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2319
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2320
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v2, "dataJson":Lorg/json/JSONObject;
    const-string v3, "listType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2323
    const-string v3, "listType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 2328
    .end local v2    # "dataJson":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 2326
    :catch_0
    move-exception v2

    .line 2327
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2329
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v2, "NaviNode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNaviListCancel:listType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2331
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviListCancel(Ljava/lang/String;)V

    .line 2330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2334
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.multi.poi.search"
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 2278
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2279
    .local v1, "speechInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2280
    .local v2, "searchInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 2282
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2283
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2285
    .local v3, "dataJson":Lorg/json/JSONObject;
    nop

    .line 2286
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2287
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2288
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2289
    .local v5, "str":Ljava/lang/String;
    const-string v6, "triggerApi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dialogueInfo"

    .line 2290
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2293
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_2

    .line 2291
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2295
    .end local v5    # "str":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 2300
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_3

    .line 2298
    :catch_0
    move-exception v3

    .line 2299
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 2301
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v3, "NaviNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",speechInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2302
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 2303
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2306
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.perform.immediate"
    .end annotation

    .line 1921
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1922
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1923
    .local v1, "speechInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1924
    .local v2, "searchInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 1926
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1927
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v3, "dataJson":Lorg/json/JSONObject;
    nop

    .line 1930
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1931
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1932
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1933
    .local v5, "str":Ljava/lang/String;
    const-string v6, "triggerApi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dialogueInfo"

    .line 1934
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1937
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1935
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    .end local v5    # "str":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1944
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_3

    .line 1942
    :catch_0
    move-exception v3

    .line 1943
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1945
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v3, "NaviNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviPerformImmediate:searchInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",speechInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1946
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 1947
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1950
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.search"
    .end annotation

    .line 1888
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1889
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    .local v1, "speechInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1891
    .local v2, "searchInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 1893
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1894
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1896
    .local v3, "dataJson":Lorg/json/JSONObject;
    nop

    .line 1897
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1898
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1899
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1900
    .local v5, "str":Ljava/lang/String;
    const-string v6, "triggerApi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dialogueInfo"

    .line 1901
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1904
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1902
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    .end local v5    # "str":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1911
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_3

    .line 1909
    :catch_0
    move-exception v3

    .line 1910
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1912
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v3, "NaviNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviSearch:searchInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",speechInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1913
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 1914
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1917
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public onNaviSearchFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.search.filter"
    .end annotation

    .line 1987
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1988
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1989
    .local v1, "speechInfo":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1990
    .local v2, "idList":[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1992
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1993
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v4, "dataJson":Lorg/json/JSONObject;
    nop

    .line 1995
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1996
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1997
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1998
    .local v6, "str":Ljava/lang/String;
    const-string v7, "triggerApi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "dialogueInfo"

    .line 1999
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "soundArea"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 2001
    :cond_0
    const-string v7, "idList"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2002
    const-string v7, "idList"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 2003
    .local v7, "idArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    move-object v2, v8

    .line 2004
    move v8, v3

    .local v8, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 2005
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v2, v8

    .line 2004
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2000
    .end local v7    # "idArray":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :cond_1
    :goto_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2008
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 2013
    .end local v4    # "dataJson":Lorg/json/JSONObject;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    goto :goto_3

    .line 2011
    :catch_0
    move-exception v4

    .line 2012
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 2014
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v4, "NaviNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNaviSearchFilter:speechInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    nop

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 2016
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearchFilter([Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2019
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.search.onway"
    .end annotation

    .line 1954
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1955
    .local v0, "listenerList":[Ljava/lang/Object;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1956
    .local v1, "speechInfo":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1957
    .local v2, "searchInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 1959
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1960
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v3, "dataJson":Lorg/json/JSONObject;
    nop

    .line 1963
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1964
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1965
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1966
    .local v5, "str":Ljava/lang/String;
    const-string v6, "triggerApi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "dialogueInfo"

    .line 1967
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1970
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1968
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    .end local v5    # "str":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 1977
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    goto :goto_3

    .line 1975
    :catch_0
    move-exception v3

    .line 1976
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1978
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_3
    const-string v3, "NaviNode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNaviSearchOnWay:searchInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",speechInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1979
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 1980
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1983
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public onNavigatingGet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.navigating.get"
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 403
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 404
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 405
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNavigatingGet()Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onNearbySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.nearby.search"
    .end annotation

    .line 523
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    move-result-object v0

    .line 524
    .local v0, "searchBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 526
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 527
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onOpenTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.road.info.open"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 104
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onOpenTraffic()V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onParkingSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.parking.select"
    .end annotation

    .line 903
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    move-result-object v0

    .line 904
    .local v0, "selectParkingBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 905
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 906
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 907
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onParkingSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onPoiDetailsFavoriteAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.poi.details.favorite.add"
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1534
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1536
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1537
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiDetailsFavoriteAdd()V

    .line 1535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1540
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPoiDetailsFavoriteDel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.poi.details.favorite.del"
    .end annotation

    .line 1544
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1545
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1547
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1548
    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiDetailsFavoriteDel()V

    .line 1546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1551
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.poi.search"
    .end annotation

    .line 412
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;

    move-result-object v0

    .line 413
    .local v0, "poiSearchBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 415
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 416
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;)V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onRouteNearbySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.route.nearby.search"
    .end annotation

    .line 892
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    move-result-object v0

    .line 893
    .local v0, "searchBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 894
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 895
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 896
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V

    .line 895
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 899
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onRouteRefresh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.route.refresh"
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 946
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 948
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteRefresh(Ljava/lang/String;)V

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 951
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onRouteSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.route.select"
    .end annotation

    .line 934
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    move-result-object v0

    .line 935
    .local v0, "selectRouteBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 936
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 937
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 938
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onRouteTrafficInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.traffic.info"
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 956
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 957
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 958
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteTrafficInfo(Ljava/lang/String;)V

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSearchClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.search.close"
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 456
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSearchClose()V

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSelectParkingCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.select.parking.count"
    .end annotation

    .line 966
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    move-result-object v0

    .line 967
    .local v0, "selectParkingBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 968
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 969
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 970
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSelectParkingCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V

    .line 969
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onSelectRouteCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.select.route.count"
    .end annotation

    .line 977
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    move-result-object v0

    .line 978
    .local v0, "selectRouteBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 979
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 980
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 981
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSelectRouteCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onSetOritentionMetre(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.oritention.metre.set"
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1436
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1439
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "metre"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "oritention"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1441
    const-string v2, "metre"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1442
    .local v2, "metre":D
    const-string v4, "oritention"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1443
    .local v4, "oritention":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 1444
    aget-object v6, v0, v5

    check-cast v6, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v6, v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSetOritentionMetre(DI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1449
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "metre":D
    .end local v4    # "oritention":I
    .end local v5    # "i":I
    :cond_0
    goto :goto_1

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1453
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onSetScaleLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.scale.level.set"
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1415
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1416
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1421
    .local v2, "level":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 1422
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSetScaleLevel(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1427
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "level":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 1425
    :catch_0
    move-exception v1

    .line 1426
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1431
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onSideRoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://navi.side.road"
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 474
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 475
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 476
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSideRoad()V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onWaypointSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://navi.waypoint.search"
    .end annotation

    .line 1028
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;

    move-result-object v0

    .line 1029
    .local v0, "waypointSearch":Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 1030
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1031
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1032
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onWaypointSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;)V

    .line 1031
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1035
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public parsePoiListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p2, "searchInfo"    # Ljava/lang/String;
    .param p3, "speechInfo"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2105
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;>;"
    const/4 v0, -0x1

    .line 2106
    .local v0, "soundArea":I
    :try_start_0
    new-instance v1, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 2107
    .local v1, "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;>;"
    sget-object v2, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 2108
    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 2109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2110
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2111
    .local v2, "speechObj":Lcom/google/gson/JsonObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2112
    const-string v3, "triggerApi"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2113
    const-string v3, "triggerApi"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2115
    :cond_0
    const-string v3, "dialogueInfo"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2116
    const-string v3, "dialogueInfo"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2118
    :cond_1
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2119
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    move v0, v3

    .line 2124
    .end local v2    # "speechObj":Lcom/google/gson/JsonObject;
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_9

    .line 2125
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2126
    .local v2, "extraObj":Lcom/google/gson/JsonObject;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2127
    const-string v5, "totalSize"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2128
    const-string v4, "totalSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2129
    const-string v4, "totalSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    goto :goto_0

    .line 2131
    :cond_3
    if-eqz p1, :cond_4

    .line 2132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_0

    .line 2134
    :cond_4
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2137
    :goto_0
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2138
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2139
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2141
    :cond_5
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2142
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2143
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2145
    :cond_6
    if-eq v0, v3, :cond_7

    .line 2146
    const-string v3, "soundArea"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2148
    :cond_7
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2150
    .end local v2    # "extraObj":Lcom/google/gson/JsonObject;
    :cond_8
    goto :goto_2

    .line 2151
    :cond_9
    if-eqz p1, :cond_a

    .line 2152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_1

    .line 2154
    :cond_a
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2156
    :goto_1
    if-eq v0, v3, :cond_c

    .line 2157
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2158
    .local v2, "object":Lcom/google/gson/JsonObject;
    if-nez v2, :cond_b

    .line 2159
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v2, v3

    .line 2161
    :cond_b
    const-string v3, "soundArea"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2162
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2165
    .end local v2    # "object":Lcom/google/gson/JsonObject;
    :cond_c
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getTriggerApi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2166
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2167
    .local v2, "searchObj":Lcom/google/gson/JsonObject;
    const-string v3, "searchTarget"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2168
    const-string v3, "searchTarget"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, "target":Ljava/lang/String;
    const-string v4, "NaviNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncPoiList:target"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2170
    const-string v4, "setHome"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2171
    const-string v4, "NavigationSetCustomName"

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2172
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2173
    .local v4, "object":Lcom/google/gson/JsonObject;
    const-string v5, "custom_name"

    const-string v6, "\u5bb6"

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2175
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    goto :goto_3

    :cond_d
    const-string v4, "setCompany"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2176
    const-string v4, "NavigationSetCustomName"

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2177
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2178
    .restart local v4    # "object":Lcom/google/gson/JsonObject;
    const-string v5, "custom_name"

    const-string v6, "\u516c\u53f8"

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2180
    .end local v4    # "object":Lcom/google/gson/JsonObject;
    goto :goto_3

    :cond_e
    const-string v4, "wayPoint"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2181
    const-string v4, "NavigationSetDestination"

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2185
    .end local v2    # "searchObj":Lcom/google/gson/JsonObject;
    .end local v3    # "target":Ljava/lang/String;
    :cond_f
    :goto_3
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2186
    .end local v0    # "soundArea":I
    .end local v1    # "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;>;"
    :catch_0
    move-exception v0

    .line 2187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2188
    const/4 v1, 0x0

    return-object v1
.end method

.method public parseRouteListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "speechInfo"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2035
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;>;"
    :try_start_0
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 2036
    .local v0, "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;>;"
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 2037
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 2038
    const/4 v1, -0x1

    .line 2039
    .local v1, "soundArea":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2040
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2041
    .local v2, "speechObj":Lcom/google/gson/JsonObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2042
    const-string v3, "triggerApi"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2043
    const-string v3, "triggerApi"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    goto :goto_0

    .line 2045
    :cond_0
    const-string v3, "NavigationAutoRoute"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2047
    :goto_0
    const-string v3, "dialogueInfo"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2048
    const-string v3, "dialogueInfo"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2050
    :cond_1
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2051
    const-string v3, "soundArea"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    move v1, v3

    .line 2055
    .end local v2    # "speechObj":Lcom/google/gson/JsonObject;
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_9

    .line 2056
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2057
    .local v2, "extraObj":Lcom/google/gson/JsonObject;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 2058
    const-string v5, "totalSize"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2059
    const-string v4, "totalSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2060
    const-string v4, "totalSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    goto :goto_1

    .line 2062
    :cond_3
    if-eqz p1, :cond_4

    .line 2063
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_1

    .line 2065
    :cond_4
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2068
    :goto_1
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2069
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2070
    const-string v4, "totalPage"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2072
    :cond_5
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2073
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2074
    const-string v4, "pageSize"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2076
    :cond_6
    if-eq v1, v3, :cond_7

    .line 2077
    const-string v3, "soundArea"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2079
    :cond_7
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2081
    .end local v2    # "extraObj":Lcom/google/gson/JsonObject;
    :cond_8
    goto :goto_3

    .line 2082
    :cond_9
    if-eqz p1, :cond_a

    .line 2083
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_2

    .line 2085
    :cond_a
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2087
    :goto_2
    if-eq v1, v3, :cond_c

    .line 2088
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2089
    .local v2, "object":Lcom/google/gson/JsonObject;
    if-nez v2, :cond_b

    .line 2090
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v2, v3

    .line 2092
    :cond_b
    const-string v3, "soundArea"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2093
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2096
    .end local v2    # "object":Lcom/google/gson/JsonObject;
    :cond_c
    :goto_3
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2097
    .end local v0    # "listWidget":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;>;"
    .end local v1    # "soundArea":I
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2099
    const/4 v1, 0x0

    return-object v1
.end method

.method public postAddressGetResult(ZZLcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 4
    .param p1, "isExist"    # Z
    .param p2, "hasBigData"    # Z
    .param p3, "poiBean"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 660
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/TextWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/TextWidget;-><init>()V

    .line 661
    .local v0, "textWidget":Lcom/xiaopeng/speech/speechwidget/TextWidget;
    if-eqz p1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "fail"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->setText(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/TextWidget;

    .line 662
    const-string v1, "hasBigData"

    if-eqz p2, :cond_1

    const-string v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 664
    if-eqz p3, :cond_2

    .line 666
    :try_start_0
    const-string v1, "address"

    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 667
    const-string v1, "navi"

    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    goto :goto_2

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 673
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v3, "native://navi.address.get"

    invoke-direct {v2, v3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 674
    return-void
.end method

.method public postAddressPosResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p2, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    const-string v0, "native://navi.poi.search"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 569
    return-void
.end method

.method public postNearbyResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p2, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    const-string v0, "native://navi.nearby.search"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 546
    return-void
.end method

.method public postPoiResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 533
    .local p2, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    const-string v0, "native://navi.poi.search"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 534
    return-void
.end method

.method public postSearchPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p3, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 557
    return-void
.end method

.method public postSettingsInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .line 1389
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v2, "native://navi.settings.info"

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 1390
    return-void
.end method

.method public postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p2, "poiBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 594
    return-void
.end method

.method public postWaypointsFull(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchKey"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 576
    return-void
.end method

.method public postWaypointsNotExitRoute(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchKey"    # Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 583
    return-void
.end method

.method public selectParking(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 1095
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 1096
    const-string v0, ""

    .line 1098
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isLocalSkill"

    const/4 v3, 0x1

    .line 1099
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u505c\u8f66\u573a\u4e3b\u52a8\u8bed\u97f3"

    .line 1100
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isAsrModeOffline"

    const/4 v3, 0x0

    .line 1101
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "command"

    const-string v3, "native://navi.select.parking.count#command://navi.parking.select#command://navi.confirm.cancel"

    .line 1102
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1103
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1106
    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1107
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u79bb\u7ebf\u547d\u4ee4\u8bcd"

    const-string v3, "\u4e3b\u52a8\u8bed\u97f3"

    const-string v4, "\u505c\u8f66\u573a\u4e3b\u52a8\u8bed\u97f3"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public selectRoute(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1117
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 1118
    const-string v0, ""

    .line 1120
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isLocalSkill"

    const/4 v3, 0x1

    .line 1121
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u8def\u7ebf\u4e3b\u52a8\u8bed\u97f3"

    .line 1122
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isAsrModeOffline"

    const/4 v3, 0x0

    .line 1123
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "command"

    const-string v3, "native://navi.select.route.count#command://navi.route.select#command://navi.confirm.cancel"

    .line 1124
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1125
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1128
    goto :goto_0

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1129
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u79bb\u7ebf\u547d\u4ee4\u8bcd"

    const-string v3, "\u4e3b\u52a8\u8bed\u97f3"

    const-string v4, "\u8def\u7ebf\u4e3b\u52a8\u8bed\u97f3"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public selectRoute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1138
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1140
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1141
    .local v1, "jsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1143
    .local v3, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1144
    .end local v3    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    goto :goto_0

    .line 1146
    :cond_0
    const-string v2, "route_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1150
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.route.upload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    return-void
.end method

.method public startSpeechDialog()V
    .locals 4

    .line 1229
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1230
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "from"

    const-string v2, "Navigation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1235
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public stopSpeechDialog()V
    .locals 1

    .line 1205
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 1206
    return-void
.end method

.method public stopSpeechDialog(I)V
    .locals 4
    .param p1, "stopOption"    # I

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDialog option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    if-nez p1, :cond_0

    .line 1215
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    goto :goto_0

    .line 1218
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1219
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "from"

    const-string v2, "Navigation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1225
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2228
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2229
    return-void
.end method

.method public syncPoiList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "searchInfo"    # Ljava/lang/String;
    .param p3, "speechInfo"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2028
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpPoi;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->parsePoiListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "widgetInfo":Ljava/lang/String;
    const-string v1, "NaviNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncPoiList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.upload"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 5
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isBaseInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1269
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1271
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1272
    .local v1, "jsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1274
    .local v3, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1275
    .end local v3    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    goto :goto_0

    .line 1277
    :cond_0
    const-string v2, "route_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1278
    const-string v2, "localStory"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1282
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-eqz p3, :cond_1

    .line 1283
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.route.upload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    .line 1286
    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isBaseInfo"    # Z
    .param p4, "poiInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1296
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1299
    .local v1, "jsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1301
    .local v3, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1302
    .end local v3    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    goto :goto_0

    .line 1304
    :cond_0
    const-string v2, "route_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1305
    const-string v2, "localStory"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1306
    const-string v2, "poiInfo"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1310
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-eqz p3, :cond_1

    .line 1311
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.route.upload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    .line 1314
    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 5
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isBaseInfo"    # Z
    .param p4, "poiInfo"    # Ljava/lang/String;
    .param p5, "isChargeRoute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1325
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1327
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1328
    .local v1, "jsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1330
    .local v3, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1331
    .end local v3    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    goto :goto_0

    .line 1333
    :cond_0
    const-string v2, "route_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    const-string v2, "localStory"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1335
    const-string v2, "poiInfo"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1336
    const-string v2, "isChargeRoute"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 1337
    :catch_0
    move-exception v1

    .line 1338
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1340
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    if-eqz p3, :cond_1

    .line 1341
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.route.upload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    .line 1344
    return-void
.end method

.method public syncRouteList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "speechInfo"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2197
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->parseRouteListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    .local v0, "widgetInfo":Ljava/lang/String;
    const-string v1, "NaviNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRouteList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2199
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "list.upload"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    return-void
.end method

.method public syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isBaseInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1352
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 1353
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    const-string v1, "route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1354
    const-string v1, "navi_route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 1355
    if-eqz p3, :cond_0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Route-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    goto :goto_0

    .line 1358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Route-2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 1360
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1362
    .local v2, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1363
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1364
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1366
    :try_start_0
    const-string v4, "navi_route"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    goto :goto_2

    .line 1367
    :catch_0
    move-exception v4

    .line 1368
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1370
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1371
    .end local v2    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_1

    .line 1374
    :cond_1
    const-string v1, "NaviNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRouteToInfoFlow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "context.widget.list"

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method public updateRouteSelect(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;>;"
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 1161
    .local v0, "listWidget":Lcom/xiaopeng/speech/speechwidget/ListWidget;
    const-string v1, "route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1162
    const-string v1, "navi_route"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 1163
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1165
    .local v2, "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1166
    .local v3, "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1167
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1169
    :try_start_0
    const-string v4, "navi_route"

    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    goto :goto_1

    .line 1170
    :catch_0
    move-exception v4

    .line 1171
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1173
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 1174
    .end local v2    # "routeSelectBean":Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;
    .end local v3    # "contentWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    goto :goto_0

    .line 1177
    :cond_0
    const-string v1, "updateRouteSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRouteSelect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "context.widget.list"

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    return-void
.end method
