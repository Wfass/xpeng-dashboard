.class public Lcom/xiaopeng/speech/vui/model/VuiEventImpl;
.super Lcom/xiaopeng/vui/commons/model/VuiEvent;
.source "VuiEventImpl.java"


# instance fields
.field private data:Lcom/xiaopeng/vui/commons/model/VuiElement;

.field private eventName:Ljava/lang/String;

.field private props:Ljava/lang/String;

.field private userQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 1
    .param p1, "data"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/vui/commons/model/VuiEvent;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->userQuery:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->eventName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->props:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 21
    return-void
.end method

.method private isLeafNode(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z
    .locals 2
    .param p1, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 161
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    return v0

    .line 169
    :cond_1
    return v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;
    .locals 6
    .param p1, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiEvent;",
            ")TT;"
        }
    .end annotation

    .line 31
    const-string v0, "getEventValue"

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 33
    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 37
    .local v1, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v1, :cond_1

    .line 38
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v3, :cond_6

    .line 50
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 51
    .local v3, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_6

    .line 52
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v4, :cond_5

    .line 53
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 54
    .local v4, "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_4

    .line 55
    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 57
    const-string v0, "value"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_3
    const-string v5, "index"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 60
    const-string v5, "index"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 61
    const-string v0, "index"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 65
    .end local v4    # "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    goto :goto_0

    .line 66
    :cond_5
    invoke-interface {v3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 67
    const-string v0, "value"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 74
    .end local v3    # "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :goto_0
    return-object v0

    .line 42
    .end local v2    # "key":Ljava/lang/String;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->getHitVuiElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v1

    .line 99
    .end local v0    # "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitVuiElements(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 136
    .local p1, "vuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->isLeafNode(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    return-object p1

    .line 143
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 144
    .local v1, "vui":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v1, :cond_2

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->getHitVuiElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 137
    .end local v1    # "vui":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_3
    :goto_0
    return-object p1
.end method

.method public getMetaData()Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0
.end method

.method public getProps()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->props:Ljava/lang/String;

    return-object v0
.end method

.method public getUserQuery()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->userQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 0
    .param p1, "data"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 124
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->eventName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setProps(Ljava/lang/String;)V
    .locals 0
    .param p1, "props"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->props:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setUserQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "userQuery"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->userQuery:Ljava/lang/String;

    .line 116
    return-void
.end method
