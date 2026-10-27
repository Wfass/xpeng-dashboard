.class public Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "ListItemClickEvent.java"


# instance fields
.field private params:Lcom/xiaopeng/vui/commons/model/VuiElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    return-void
.end method

.method private getListView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 65
    instance-of v0, p1, Landroid/widget/ListView;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    .line 69
    return-object p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 66
    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getPositionByViewId(ILcom/xiaopeng/vui/commons/model/VuiElement;)Ljava/lang/String;
    .locals 3
    .param p1, "vId"    # I
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 77
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 81
    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 82
    aget-object v1, v0, v1

    return-object v1

    .line 84
    :cond_0
    const-string v1, "0"

    return-object v1

    .line 89
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    return-object v0
.end method

.method public performClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 35
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 38
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v1, v3, :cond_2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performClick() View isClickable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";isFocusable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";isEnabled:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";hasOnClickListeners:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v1

    .line 46
    .local v1, "issucc":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClickEvent run :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 47
    instance-of v3, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v3, :cond_3

    .line 48
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 50
    :cond_3
    if-eqz v1, :cond_4

    .line 51
    return v2

    .line 53
    :cond_4
    instance-of v2, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v2, :cond_5

    .line 54
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewRootImpl;

    if-eqz v2, :cond_6

    .line 57
    return v0

    .line 59
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->performClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 3
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

    .line 19
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->params:Lcom/xiaopeng/vui/commons/model/VuiElement;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->params:Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->performClick(Landroid/view/View;)Z

    move-result v0

    .line 21
    .local v0, "issucc":Z
    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 23
    .local v1, "listView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    .line 27
    .end local v1    # "listView":Landroid/view/View;
    :cond_0
    return-object p1
.end method
