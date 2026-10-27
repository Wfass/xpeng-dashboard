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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

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
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 63
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    const-string v3, "value"

    if-eqz v2, :cond_3

    .line 64
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 66
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    .line 76
    :cond_3
    invoke-interface {p1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 77
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_3

    .line 21
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

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    .line 24
    instance-of v0, p1, Landroid/widget/Checkable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eq p2, v0, :cond_1

    return-object p1

    :cond_1
    const-string p2, "SetCheckEvent run on setSelected view"

    .line 30
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 31
    instance-of p2, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz p2, :cond_2

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 34
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    if-eqz p2, :cond_3

    .line 38
    move-object p2, p1

    check-cast p2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {p2, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    :cond_3
    return-object p1
.end method
