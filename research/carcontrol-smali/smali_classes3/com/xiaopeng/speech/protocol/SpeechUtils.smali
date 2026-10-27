.class public Lcom/xiaopeng/speech/protocol/SpeechUtils;
.super Ljava/lang/Object;
.source "SpeechUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/NodeManager;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object p0

    return-object p0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/QueryManager;->getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object p0

    return-object p0
.end method

.method public static isJson(Ljava/lang/String;)Z
    .locals 2

    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static replyData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/DataActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/DataActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/DataActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actorapi/DataActor;->setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static replyData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/DataActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/DataActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/DataActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/actorapi/DataActor;->setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static replySupport(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    .line 29
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 41
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 42
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 43
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {p2, p0}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static replyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ValueActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/ValueActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ValueActor;->setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static sendActor(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/SpeechClient;->sendActor(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public static speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/NodeManager;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    return-void
.end method

.method public static subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;",
            "Lcom/xiaopeng/speech/IQueryCaller;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/QueryManager;->inject(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    return-void
.end method

.method public static triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsubscribe(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/QueryManager;->unInject(Ljava/lang/Class;)V

    return-void
.end method

.method public static unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/NodeManager;->unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    return-void
.end method
