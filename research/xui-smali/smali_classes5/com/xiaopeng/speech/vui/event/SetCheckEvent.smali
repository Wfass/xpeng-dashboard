.class public Lcom/xiaopeng/speech/vui/event/SetCheckEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "SetCheckEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    return-void
.end method

.method private getSetCheck(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/Object;
    .locals 5
    .param p1, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 48
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v2, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 62
    .local v2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_6

    .line 63
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v3, :cond_4

    .line 64
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 65
    .local v3, "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    .line 66
    const-string v4, "value"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 67
    const-string v0, "value"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_2
    return-object v0

    .line 72
    :cond_3
    return-object v0

    .line 76
    .end local v3    # "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 77
    const-string v0, "value"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_5
    return-object v0

    .line 83
    :cond_6
    return-object v0

    .line 87
    .end local v2    # "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    return-object v0

    .line 52
    .end local v1    # "key":Ljava/lang/String;
    :cond_8
    :goto_0
    return-object v0
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 4
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    .line 20
    .local p1, "view":Landroid/view/View;, "TT;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/vui/event/SetCheckEvent;->getSetCheck(Lcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .local v0, "isCheck":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 24
    instance-of v1, p1, Landroid/widget/Checkable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    move-object v3, p1

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    if-eq v1, v3, :cond_1

    .line 26
    return-object p1

    .line 30
    :cond_1
    const-string v1, "SetCheckEvent run on setSelected view"

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 31
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_2

    .line 32
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 34
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 37
    instance-of v2, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v2, :cond_3

    .line 38
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 42
    .end local v0    # "isCheck":Ljava/lang/Boolean;
    :cond_3
    return-object p1
.end method
