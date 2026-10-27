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
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/NodeManager;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    return-object v0
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
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/QueryManager;->getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object v0

    return-object v0
.end method

.method public static isJson(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 173
    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v0, 0x1

    .line 179
    :cond_1
    :goto_0
    return v0
.end method

.method public static replyData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/DataActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/DataActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/DataActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actorapi/DataActor;->setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 54
    return-void
.end method

.method public static replyData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z

    .line 64
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/DataActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/DataActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/DataActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/speech/actorapi/DataActor;->setSupport(Z)Lcom/xiaopeng/speech/actorapi/DataActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 65
    return-void
.end method

.method public static replySupport(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "isSupport"    # Z

    .line 29
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    .line 30
    return-void
.end method

.method public static replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "isSupport"    # Z
    .param p2, "text"    # Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    .line 41
    .local v0, "supportWidget":Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setSupport(Z)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 42
    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->setTTS(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 43
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/actorapi/SupportActor;

    invoke-direct {v2, p0}, Lcom/xiaopeng/speech/actorapi/SupportActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 44
    return-void
.end method

.method public static replyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getActorBridge()Lcom/xiaopeng/speech/actor/ActorBridge;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/actorapi/ValueActor;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/actorapi/ValueActor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/speech/actorapi/ValueActor;->setValue(Ljava/lang/Object;)Lcom/xiaopeng/speech/actorapi/ValueActor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/actor/ActorBridge;->send(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 75
    return-void
.end method

.method public static sendActor(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 1
    .param p0, "actor"    # Lcom/xiaopeng/speech/actor/Actor;

    .line 132
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/SpeechClient;->sendActor(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 133
    return-void
.end method

.method public static speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/speech/INodeListener;
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
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/NodeManager;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 95
    return-void
.end method

.method public static subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 1
    .param p1, "caller"    # Lcom/xiaopeng/speech/IQueryCaller;
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
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/QueryManager;->inject(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 105
    return-void
.end method

.method public static triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "skill"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "slots"    # Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
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
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getQueryManager()Lcom/xiaopeng/speech/QueryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/QueryManager;->unInject(Ljava/lang/Class;)V

    .line 124
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/speech/INodeListener;
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
    .local p0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/speech/NodeManager;->unSubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 115
    return-void
.end method
