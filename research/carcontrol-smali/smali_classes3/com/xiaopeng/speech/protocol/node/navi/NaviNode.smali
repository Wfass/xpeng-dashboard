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

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    .line 67
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 779
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 780
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRouteSelectWidget(Ljava/util/List;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 5
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
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    const-string v1, "route"

    .line 1183
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "navi_route"

    .line 1184
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p1, :cond_0

    .line 1185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1187
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1188
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1189
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1191
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1193
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1195
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 622
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p2, "navi"

    .line 623
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p3, :cond_0

    .line 625
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 626
    new-instance v2, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 627
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 628
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 630
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 632
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 634
    :goto_1
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/actorapi/ResultActor;

    invoke-direct {p3, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method private postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 2
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
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    .line 599
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 600
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExist(Z)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string p1, "navi"

    .line 601
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 602
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string p4, "isWaypointListFull"

    invoke-virtual {v0, p4, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p2, :cond_0

    .line 604
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 605
    new-instance p4, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {p4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 606
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 607
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 609
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p1, p3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 611
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 613
    :goto_1
    invoke-virtual {v0, p4}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    .line 616
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p3, "native://navi.waypoint.search"

    invoke-direct {p2, p3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method


# virtual methods
.method public directNavigation()V
    .locals 3

    .line 1244
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    const-string v2, "Navigation"

    .line 1245
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1248
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ignoreRouteResult(Ljava/lang/String;)V
    .locals 5

    const-string v0, "soundArea"

    .line 2342
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "from"

    const-string v3, "Navigation"

    .line 2343
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "NaviNode"

    .line 2344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreRouteResult:speechInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2346
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2347
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2348
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2349
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    .line 2350
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2354
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string v0, "scriptQuit"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 1

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "-?[0-9]+(\\.[0-9]+)?"

    .line 789
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 791
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public onAddressGet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 642
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    move-result-object p1

    .line 643
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    .line 645
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 646
    aget-object v2, p2, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAddressGet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    return-void
.end method

.method public onAddressPendingRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pending route"

    .line 678
    invoke-static {p0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 679
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    return-void
.end method

.method public onAddressSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string p1, "soundArea"

    .line 684
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 693
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "addressType"

    .line 694
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;->setAddressType(Ljava/lang/String;)V

    const-string p2, "poi"

    .line 695
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 696
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    const-string v4, "pref"

    .line 697
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    const-string v5, "type"

    .line 698
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    const-string v6, "naviType"

    .line 699
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    const-string v7, "imediatenavi"

    .line 700
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v8, "routeSelectRef"

    .line 701
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 702
    :try_start_6
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 703
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 704
    :try_start_7
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v9, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v9, v1

    move v8, v2

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v9, v1

    move v7, v2

    goto :goto_2

    :catch_4
    move-exception p1

    move-object v9, v1

    goto :goto_1

    :catch_5
    move-exception p1

    move-object v5, v1

    goto :goto_0

    :catch_6
    move-exception p1

    move-object v4, v1

    move-object v5, v4

    :goto_0
    move-object v9, v5

    :goto_1
    move v6, v2

    move v7, v6

    :goto_2
    move v8, v7

    :goto_3
    move-object v1, p2

    goto :goto_4

    :catch_7
    move-exception p1

    move-object v4, v1

    move-object v5, v4

    move-object v9, v5

    move v6, v2

    move v7, v6

    move v8, v7

    .line 707
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, v1

    :goto_5
    move-object v1, v9

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v3, v2

    .line 711
    :goto_6
    array-length v9, p1

    if-ge v3, v9, :cond_1

    .line 712
    aget-object v9, p1, v3

    check-cast v9, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v9, v0, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAddressSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/AddressBean;Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 715
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    if-eqz p1, :cond_2

    .line 716
    new-instance p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {p1, p2, v4, v5}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1, v6}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 718
    invoke-virtual {p1, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 719
    invoke-virtual {p1, v8}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 720
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    .line 721
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    .line 723
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mAddressPendingRoute:Z

    return-void
.end method

.method public onAlertsPreferenceSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1458
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1460
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1461
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1462
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1463
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1464
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAlertsPreferenceSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAutoRerouteAskFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1497
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1499
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1500
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1501
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteAskFirst()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAutoRerouteBetterRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1486
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1488
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1489
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1490
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteBetterRoute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAutoRerouteNever(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1508
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1510
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1511
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1512
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAutoRerouteNever()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAvoidRouteSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1472
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1474
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1475
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1476
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1477
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1478
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onAvoidRouteSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCloseTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 113
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 114
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onCloseTraffic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfirmCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 924
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 926
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 927
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onConfirmCancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfirmOk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 914
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 916
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 917
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onConfirmOk()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlBridge3DMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1868
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1870
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1871
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlBridge3DMap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlBridge3DMapOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1878
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1880
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1881
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlBridge3DMapOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlChargeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 184
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 185
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlChargeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 174
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 175
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlChargeServiceOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "stationId"

    .line 1618
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1621
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1622
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1624
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1625
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlChargeServiceOpen(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1631
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onControlClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 74
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlCloseRibbonMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1081
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1083
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1084
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCloseRibbonMap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlCloseSmallMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1061
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1063
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1064
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCloseSmallMap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlCommuterRouteShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1768
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1770
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1771
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCommuterRouteShow()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlCommuterRouteShowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1778
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1780
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1781
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlCommuterRouteShowOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDashboardDisplay2DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1808
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1810
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1811
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDashboardDisplay2DHeadUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDashboardDisplay3DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1818
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1820
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1821
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDashboardDisplay3DHeadUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDisPlayCar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 826
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 828
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 829
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisPlayCar()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDisPlayNorth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 816
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 818
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 819
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisPlayNorth()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDisplay2DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1788
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1790
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1791
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay2DHeadUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDisplay3D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 836
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 838
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 839
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay3D()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDisplay3DHeadUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1798
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1800
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1801
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDisplay3DHeadUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDriveChargeLess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1707
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1709
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1710
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDriveChargeLess()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlDriveChargeLessOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1717
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1719
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1720
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlDriveChargeLessOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlFavoriteClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 483
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 485
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 486
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlFavoriteClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlFavoriteOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 154
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 155
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlFavoriteOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlGaodeAccountPageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "pageId"

    .line 1598
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1601
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1602
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1604
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1605
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlGaodeAccountPageOpen(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1611
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onControlHighroadFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1728
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1730
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1731
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHighroadFirst()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlHighroadFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1738
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1740
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1741
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHighroadFirstOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1254
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1256
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1257
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHistory()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlHistoryCLose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1566
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1568
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1569
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1570
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlHistoryClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlOpenRibbonMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1071
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1073
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1074
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOpenRibbonMap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlOpenSmallMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1051
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1053
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1054
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOpenSmallMap()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlOverviewClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 133
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 134
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOverviewClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlOverviewOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 123
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 124
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlOverviewOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlParkRecommendOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1404
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1406
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1407
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlParkRecommendOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlParkRecommendOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1394
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1396
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1397
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlParkRecommendOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlRealtimeTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1838
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1840
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1841
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRealtimeTraffic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlRealtimeTrafficOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1828
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1830
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1831
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRealtimeTrafficOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlRoadAhead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 364
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 365
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRoadAhead()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlRoadAheadOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 495
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 496
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlRoadAheadOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSecurityRemind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 354
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 355
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSecurityRemind()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSecurityRemindOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 425
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 426
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSecurityRemindOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSettingsCLose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1555
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1557
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1558
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1559
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSettingsClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSettingsOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 164
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 165
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSettingsOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartChargingRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1667
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1669
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1670
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartChargingRoute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartChargingRouteOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1677
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1679
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1680
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartChargingRouteOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartRecommend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1687
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1689
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1690
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartRecommend()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartRecommendOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1697
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1699
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1700
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartRecommendOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartScale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 334
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 335
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartScale()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSmartScaleOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 344
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 345
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSmartScaleOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechCruise(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1647
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1649
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1650
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechCruise()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechCruiseOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1657
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1659
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1660
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechCruiseOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 806
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 808
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 809
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechDetail()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechEye(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 314
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 315
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechEye()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechEyeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 324
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 325
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechEyeOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechGeneral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 304
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 305
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechGeneral()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechMute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 284
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 285
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechMute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 796
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 798
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 799
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechSimple()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechStandard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1637
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1639
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1640
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechStandard()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlSpeechSuperSimple(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 294
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 295
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlSpeechSuperSimple()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "fullSceneSwitch"

    const-string v2, "NaviNode"

    const-string v3, "soundArea"

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 739
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v9, p2

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "poi"

    .line 740
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 741
    invoke-static {v9}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    const-string v10, "pref"

    .line 742
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 743
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pathPref:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, v10}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->isNumeric(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 745
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_0
    :try_start_3
    const-string v12, "type"

    .line 747
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    const-string v13, "naviType"

    .line 748
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v14, "imediatenavi"

    .line 749
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v15, "routeSelectRef"

    .line 750
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 751
    :try_start_7
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 752
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    .line 754
    :goto_1
    :try_start_8
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 756
    :try_start_9
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v7

    move-object v7, v9

    goto/16 :goto_7

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v15, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v14, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v13, v6

    move v14, v13

    :goto_2
    move v15, v14

    :goto_3
    move-object v7, v9

    const/4 v0, 0x0

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v11, v5

    :goto_4
    move v13, v6

    move v14, v13

    move v15, v14

    move-object v7, v9

    const/4 v0, 0x0

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v11, v5

    move v13, v6

    move v14, v13

    move v15, v14

    move-object v7, v9

    const/4 v0, 0x0

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    move v11, v5

    move v13, v6

    move v14, v13

    move v15, v14

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_5
    const/4 v10, 0x0

    :goto_6
    const/4 v12, 0x0

    .line 759
    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v9, v7

    move-object v7, v0

    :goto_8
    move/from16 v0, v16

    if-eq v11, v5, :cond_3

    .line 763
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v3, v9, v11, v12}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;ILjava/lang/String;)V

    goto :goto_9

    .line 765
    :cond_3
    new-instance v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;

    invoke-direct {v3, v9, v10, v12}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;-><init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_9
    invoke-virtual {v3, v13}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setNaviType(I)V

    .line 768
    invoke-virtual {v3, v14}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setImediateNavi(Z)V

    .line 769
    invoke-virtual {v3, v15}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setRouteSelectRef(I)V

    .line 770
    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setFullSceneSwitch(Z)V

    .line 771
    invoke-virtual {v3, v7}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->setSpeechInfo(Lorg/json/JSONObject;)V

    new-array v0, v4, [Ljava/lang/Object;

    .line 772
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "StartNaviBean = %s"

    invoke-static {v2, v4, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-direct {v1, v3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->doControlStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;)V

    return-void
.end method

.method public onControlTimeFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1748
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1750
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1751
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTimeFirst()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlTimeFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1758
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1760
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1761
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTimeFirstOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlTrafficIncident(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1848
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1850
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1851
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTrafficIncident()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlTrafficIncidentOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1858
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1860
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1861
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlTrafficIncidentOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onControlVolOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "mode"

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pullUpNavi"

    .line 876
    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 877
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 878
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 881
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 884
    :goto_1
    array-length p2, v0

    if-ge v2, p2, :cond_1

    .line 885
    aget-object p2, v0, v2

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {p2, v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlVolOff(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onControlVolOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "mode"

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pullUpNavi"

    .line 853
    invoke-virtual {v3, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 854
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 855
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 858
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move p1, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 861
    :goto_1
    array-length p2, v0

    if-ge v2, p2, :cond_1

    .line 862
    aget-object p2, v0, v2

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {p2, v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlVolOn(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onControlWaypointStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1039
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 1040
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v0, "data is null"

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "NaviNode, pathBean =%s"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1043
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1044
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onControlWaypointStart(Lcom/xiaopeng/speech/protocol/node/navi/bean/PathBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDataControlDisplay3dTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 988
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 990
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 991
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplay3dTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataControlDisplayCarTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 998
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1000
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1001
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplayCarTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataControlDisplayNorthTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1008
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1010
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1011
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDataControlDisplayNorthTts()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAdvoidTrafficControl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1018
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1020
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1021
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAdvoidTrafficControl()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidCharge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 214
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 215
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCharge()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidChargeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 224
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 225
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidChargeOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidCongestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 194
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 195
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCongestion()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidCongestionOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 204
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 205
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidCongestionOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidControls(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 244
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 245
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidControls()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveAvoidControlsOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 254
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 255
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveAvoidControlsOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveHighwayFirst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 392
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 394
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 395
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayFirst()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveHighwayFirstOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 234
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 235
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayFirstOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveHighwayNo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 374
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 375
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayNo()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveHighwayNoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 384
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 385
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveHighwayNoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveRadarRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 264
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 265
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveRadarRoute()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDriveRadarRouteOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 274
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 275
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onDriveRadarRouteOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGetSettingsInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1380
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1382
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1383
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onGetSettingsInfo()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onListDisappear(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2212
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "poi"

    .line 2213
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2214
    sget-object p1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2216
    :cond_0
    sget-object p1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "listType"

    .line 2218
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "speechInfo"

    .line 2219
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extra"

    .line 2220
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2221
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    const-string p2, "list.disappear"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onListItemSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "index"

    .line 1578
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1581
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1582
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1584
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1585
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onListItemSelected(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1591
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onMainRoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 463
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 465
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 466
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMainRoad()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapEnterFindPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 435
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 436
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapEnterFindPath()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapExitFindPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 445
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 446
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapExitFindPath()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapOverview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 143
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 144
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapOverview()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapShowSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1519
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1521
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;

    move-result-object p2

    const/4 v0, 0x0

    .line 1523
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1524
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1525
    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapShowSet(Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapZoomIn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomIn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapZoomOut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomOut()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapZoominMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 505
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 506
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoominMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMapZoomoutMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 515
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 516
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onMapZoomoutMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2242
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 2243
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 2247
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2248
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 2252
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2253
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 2254
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 2255
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2258
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2256
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2264
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2266
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2267
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 2268
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviChargingSearch(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onNaviListCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "listType"

    .line 2319
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 2320
    sget-object v1, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 2323
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2327
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2331
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2333
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNaviListCancel:listType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2334
    :goto_1
    array-length p2, v0

    if-ge p1, p2, :cond_1

    .line 2335
    aget-object p2, v0, p1

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {p2, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviListCancel(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2281
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 2282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 2286
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 2291
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2292
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 2293
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 2294
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2297
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2295
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2303
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2305
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviChargingSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2306
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 2307
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviMultiPoiSearch(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1921
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 1922
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1923
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1926
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1927
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1930
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1931
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1932
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1933
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1934
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1937
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1935
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1943
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1945
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviPerformImmediate:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1946
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1947
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviPerformImmediate(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1888
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 1889
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1890
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1893
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1894
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1898
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1899
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1900
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1901
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1904
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1902
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1910
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1912
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviSearch:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1913
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1914
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearch(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onNaviSearchFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p1, "idList"

    .line 1987
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1988
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1992
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1993
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1996
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1997
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "triggerApi"

    .line 1998
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "dialogueInfo"

    .line 1999
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "soundArea"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 2001
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2002
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    move v6, v2

    .line 2004
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 2005
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2000
    :cond_2
    :goto_2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2012
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2014
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNaviSearchFilter:speechInfo:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    :goto_3
    array-length p1, v0

    if-ge v2, p1, :cond_4

    .line 2016
    aget-object p1, v0, v2

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearchFilter([Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1954
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 1955
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1956
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_3

    .line 1959
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1960
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1964
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1965
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "triggerApi"

    .line 1966
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dialogueInfo"

    .line 1967
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "soundArea"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1970
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1968
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1976
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1978
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNaviSearchOnWay:searchInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",speechInfo:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "NaviNode"

    invoke-static {v2, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1979
    :goto_2
    array-length v2, p1

    if-ge p2, v2, :cond_3

    .line 1980
    aget-object v2, p1, p2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNaviSearchOnWay(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onNavigatingGet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 404
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 405
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNavigatingGet()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNearbySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 523
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    move-result-object p1

    .line 524
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 526
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 527
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpenTraffic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 103
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 104
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onOpenTraffic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onParkingSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 903
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    move-result-object p1

    .line 904
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 906
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 907
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onParkingSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPoiDetailsFavoriteAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1533
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1535
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1536
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1537
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiDetailsFavoriteAdd()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPoiDetailsFavoriteDel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1544
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1546
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1547
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    .line 1548
    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiDetailsFavoriteDel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPoiSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 412
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;

    move-result-object p1

    .line 413
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 415
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 416
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onPoiSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiSearchBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRouteNearbySearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 892
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;

    move-result-object p1

    .line 893
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 895
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 896
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteNearbySearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/NearbySearchBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRouteRefresh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 945
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 947
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 948
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteRefresh(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRouteSelect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 934
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    move-result-object p1

    .line 935
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 937
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 938
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteSelect(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRouteTrafficInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 955
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 957
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 958
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onRouteTrafficInfo(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSearchClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 453
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 455
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 456
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSearchClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectParkingCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 966
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;

    move-result-object p1

    .line 967
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 969
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 970
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSelectParkingCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectParkingBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSelectRouteCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 977
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;

    move-result-object p1

    .line 978
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 980
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 981
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSelectRouteCount(Lcom/xiaopeng/speech/protocol/node/navi/bean/SelectRouteBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetOritentionMetre(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p1, "oritention"

    const-string v0, "metre"

    .line 1435
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1439
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1441
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1442
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 1443
    :goto_0
    array-length v0, v1

    if-ge p2, v0, :cond_0

    .line 1444
    aget-object v0, v1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0, v3, v4, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSetOritentionMetre(DI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1448
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onSetScaleLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "level"

    .line 1414
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1420
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 1421
    :goto_0
    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 1422
    aget-object v1, v0, p2

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSetScaleLevel(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1426
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onSideRoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 475
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 476
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onSideRoad()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWaypointSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1028
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;

    move-result-object p1

    .line 1029
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1031
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1032
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviListener;->onWaypointSearch(Lcom/xiaopeng/speech/protocol/node/navi/bean/WaypointSearchBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public parsePoiListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
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

    const-string v0, "searchTarget"

    const-string v1, "dialogueInfo"

    const-string v2, "triggerApi"

    const-string v3, "pageIndex"

    const-string v4, "pageSize"

    const-string v5, "totalPage"

    const-string v6, "totalSize"

    .line 2106
    :try_start_0
    new-instance v7, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v7}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 2107
    sget-object v8, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->POI_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 2108
    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 2109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, -0x1

    const-string v10, "soundArea"

    if-nez v8, :cond_2

    .line 2110
    :try_start_1
    new-instance v8, Lcom/google/gson/JsonParser;

    invoke-direct {v8}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v8, p3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2111
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 2112
    invoke-virtual {p3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2113
    invoke-virtual {p3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2115
    :cond_0
    invoke-virtual {p3, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2116
    invoke-virtual {p3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2118
    :cond_1
    invoke-virtual {p3, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2119
    invoke-virtual {p3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p3

    goto :goto_0

    :cond_2
    move p3, v9

    .line 2124
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 2125
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p4

    if-eqz p4, :cond_c

    .line 2126
    invoke-virtual {p4}, Lcom/google/gson/JsonObject;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 2127
    invoke-virtual {p4, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2128
    invoke-virtual {p4, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2129
    invoke-virtual {p4, v6}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 2132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_1

    .line 2134
    :cond_4
    invoke-virtual {v7, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2137
    :goto_1
    invoke-virtual {p4, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2138
    invoke-virtual {p4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2139
    invoke-virtual {p4, v5}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2141
    :cond_5
    invoke-virtual {p4, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2142
    invoke-virtual {p4, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2143
    invoke-virtual {p4, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2145
    :cond_6
    invoke-virtual {p4, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2146
    invoke-virtual {p4, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setPageIndex(I)V

    .line 2147
    invoke-virtual {p4, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    :cond_7
    if-eq p3, v9, :cond_8

    .line 2150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, v10, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2152
    :cond_8
    invoke-virtual {v7, p4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    .line 2156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_2

    .line 2158
    :cond_a
    invoke-virtual {v7, v2}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    :goto_2
    if-eq p3, v9, :cond_c

    .line 2161
    invoke-virtual {v7}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_b

    .line 2163
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2165
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v10, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2166
    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2169
    :cond_c
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v7}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getTriggerApi()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2170
    new-instance p1, Lcom/google/gson/JsonParser;

    invoke-direct {p1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 2171
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 2172
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    .line 2173
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "syncPoiList:target"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "setHome"

    .line 2174
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p3, "custom_name"

    const-string p4, "NavigationSetCustomName"

    if-eqz p2, :cond_d

    .line 2175
    :try_start_2
    invoke-virtual {v7, p4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2176
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo p2, "\u5bb6"

    .line 2177
    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    goto :goto_4

    :cond_d
    const-string p2, "setCompany"

    .line 2179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 2180
    invoke-virtual {v7, p4}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2181
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo p2, "\u516c\u53f8"

    .line 2182
    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    goto :goto_4

    :cond_e
    const-string/jumbo p2, "wayPoint"

    .line 2184
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "NavigationSetDestination"

    .line 2185
    invoke-virtual {v7, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2189
    :cond_f
    :goto_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public parseRouteListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
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

    const-string v0, "dialogueInfo"

    const-string v1, "triggerApi"

    const-string v2, "pageSize"

    const-string v3, "totalPage"

    const-string v4, "totalSize"

    .line 2035
    :try_start_0
    new-instance v5, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;

    invoke-direct {v5}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;-><init>()V

    .line 2036
    sget-object v6, Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;->ROUTE_LIST:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V

    .line 2037
    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setContents(Ljava/util/List;)V

    .line 2039
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, -0x1

    const-string v8, "soundArea"

    if-nez v6, :cond_2

    .line 2040
    :try_start_1
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v6, p2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2041
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2042
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2043
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "NavigationAutoRoute"

    .line 2045
    invoke-virtual {v5, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTriggerApi(Ljava/lang/String;)V

    .line 2047
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2048
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setDialogueInfo(Lcom/google/gson/JsonObject;)V

    .line 2050
    :cond_1
    invoke-virtual {p2, v8}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2051
    invoke-virtual {p2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v7

    .line 2055
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2056
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 2057
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 2058
    invoke-virtual {p3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2059
    invoke-virtual {p3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2060
    invoke-virtual {p3, v4}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 2063
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_2

    .line 2065
    :cond_4
    invoke-virtual {v5, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    .line 2068
    :goto_2
    invoke-virtual {p3, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2069
    invoke-virtual {p3, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2070
    invoke-virtual {p3, v3}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 2072
    :cond_5
    invoke-virtual {p3, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2073
    invoke-virtual {p3, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalPage(I)V

    .line 2074
    invoke-virtual {p3, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    :cond_6
    if-eq p2, v7, :cond_7

    .line 2077
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v8, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2079
    :cond_7
    invoke-virtual {v5, p3}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    .line 2083
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    goto :goto_3

    .line 2085
    :cond_9
    invoke-virtual {v5, v1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setTotalSize(I)V

    :goto_3
    if-eq p2, v7, :cond_b

    .line 2088
    invoke-virtual {v5}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->getExtra()Lcom/google/gson/JsonObject;

    move-result-object p1

    if-nez p1, :cond_a

    .line 2090
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2092
    :cond_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2093
    invoke-virtual {v5, p1}, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->setExtra(Lcom/google/gson/JsonObject;)V

    .line 2096
    :cond_b
    :goto_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2098
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public postAddressGetResult(ZZLcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 1

    .line 660
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/TextWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/TextWidget;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    .line 661
    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->setText(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/TextWidget;

    if-eqz p2, :cond_1

    const-string p1, "true"

    goto :goto_1

    :cond_1
    const-string p1, "false"

    :goto_1
    const-string p2, "hasBigData"

    .line 662
    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p3, :cond_2

    :try_start_0
    const-string p1, "address"

    .line 666
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    const-string p1, "navi"

    .line 667
    invoke-virtual {p3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/TextWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 669
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 673
    :cond_2
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string p3, "native://navi.address.get"

    invoke-direct {p2, p3}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public postAddressPosResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "native://navi.poi.search"

    .line 568
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postNearbyResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "native://navi.nearby.search"

    .line 545
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postPoiResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "native://navi.poi.search"

    .line 533
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postSearchPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postPoiResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postSettingsInfo(Ljava/lang/String;)V
    .locals 3

    .line 1389
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ResultActor;

    const-string v2, "native://navi.settings.info"

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public postWaypointsFull(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 575
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public postWaypointsNotExitRoute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 582
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->postWaypointSearchResult(Ljava/lang/String;Ljava/util/List;ZZ)V

    return-void
.end method

.method public selectParking(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "\u505c\u8f66\u573a\u4e3b\u52a8\u8bed\u97f3"

    .line 1095
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 1098
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "isLocalSkill"

    const/4 v2, 0x1

    .line 1099
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    .line 1100
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "isAsrModeOffline"

    const/4 v2, 0x0

    .line 1101
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "command"

    const-string v2, "native://navi.select.parking.count#command://navi.parking.select#command://navi.confirm.cancel"

    .line 1102
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1103
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1105
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 1107
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u79bb\u7ebf\u547d\u4ee4\u8bcd"

    const-string/jumbo v3, "\u4e3b\u52a8\u8bed\u97f3"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectRoute(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "\u8def\u7ebf\u4e3b\u52a8\u8bed\u97f3"

    .line 1117
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 1120
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "isLocalSkill"

    const/4 v2, 0x1

    .line 1121
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    .line 1122
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "isAsrModeOffline"

    const/4 v2, 0x0

    .line 1123
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "command"

    const-string v2, "native://navi.select.route.count#command://navi.route.select#command://navi.confirm.cancel"

    .line 1124
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1125
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 1129
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u79bb\u7ebf\u547d\u4ee4\u8bcd"

    const-string/jumbo v3, "\u4e3b\u52a8\u8bed\u97f3"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selectRoute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1140
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 1141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1143
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "route_list"

    .line 1146
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1148
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1150
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list.route.upload"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSpeechDialog()V
    .locals 3

    .line 1229
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    const-string v2, "Navigation"

    .line 1230
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "scriptQuit"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

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

    return-void
.end method

.method public stopSpeechDialog(I)V
    .locals 2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDialog option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1215
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    goto :goto_0

    .line 1218
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "from"

    const-string v1, "Navigation"

    .line 1219
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    const-string v1, "scriptQuit"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1222
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public subscribeMultiTask(Ljava/lang/String;)V
    .locals 2

    .line 2232
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public syncPoiList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->parsePoiListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2029
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncPoiList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NaviNode"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p2

    const-string p3, "list.upload"

    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 4
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
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1271
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 1272
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
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "route_list"

    .line 1277
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "localStory"

    .line 1278
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1280
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz p3, :cond_1

    .line 1283
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "list.route.upload"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
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
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1298
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 1299
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
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "route_list"

    .line 1304
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "localStory"

    .line 1305
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiInfo"

    .line 1306
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 1308
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz p3, :cond_1

    .line 1311
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list.route.upload"

    invoke-virtual {p4, v1, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public syncRoute(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 4
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
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1327
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 1328
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
    invoke-virtual {v3}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "route_list"

    .line 1333
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "localStory"

    .line 1334
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "poiInfo"

    .line 1335
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "isChargeRoute"

    .line 1336
    invoke-virtual {v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    .line 1338
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz p3, :cond_1

    .line 1341
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "list.route.upload"

    invoke-virtual {p4, v0, p5}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public syncRouteList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    .line 2201
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->parseRouteListInfo(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncRouteList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NaviNode"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2203
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p2

    const-string p3, "list.upload"

    invoke-virtual {p2, p3, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncRouteToInfoFlow(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
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
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    const-string v1, "route"

    .line 1353
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "navi_route"

    .line 1354
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p3, :cond_0

    .line 1356
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-Route-1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    goto :goto_0

    .line 1358
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-Route-2"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    :goto_0
    if-eqz p1, :cond_1

    .line 1360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1362
    new-instance p3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {p3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1363
    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1364
    iget-object v2, p2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1366
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1368
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1370
    :goto_2
    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_1

    .line 1374
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syncRouteToInfoFlow:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NaviNode"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.widget.list"

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRouteSelect(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 1160
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;-><init>()V

    const-string v1, "route"

    .line 1161
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    const-string v1, "navi_route"

    .line 1162
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    if-eqz p1, :cond_0

    .line 1163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;

    .line 1165
    new-instance v3, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 1166
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->totalTimeLine1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1167
    iget-object v4, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->routeTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->setSubTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 1169
    :try_start_0
    invoke-virtual {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteSelectBean;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1171
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1173
    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    goto :goto_0

    .line 1177
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRouteSelect:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "updateRouteSelect"

    invoke-static {v1, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.widget.list"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
