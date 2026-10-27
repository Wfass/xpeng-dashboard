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

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/vui/commons/model/VuiEvent;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->userQuery:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->eventName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 17
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->props:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-void
.end method

.method private isLeafNode(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
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
    .locals 4
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
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEventValue"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v2, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 52
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v3, "value"

    if-eqz v2, :cond_4

    .line 53
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 55
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 57
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "index"

    .line 59
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 61
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 66
    :cond_4
    invoke-interface {p1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 67
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-eqz v0, :cond_1

    .line 91
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

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-object v0

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

    if-eqz p1, :cond_3

    .line 136
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->isLeafNode(Lcom/xiaopeng/vui/commons/model/VuiElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 143
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->getHitVuiElements(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

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

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->data:Lcom/xiaopeng/vui/commons/model/VuiElement;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->eventName:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->props:Ljava/lang/String;

    return-void
.end method

.method public setUserQuery(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;->userQuery:Ljava/lang/String;

    return-void
.end method
