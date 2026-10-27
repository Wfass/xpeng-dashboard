.class public Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "ListItemClickEvent.java"


# instance fields
.field private params:Lbye;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    return-void
.end method

.method private getListView(Landroid/view/View;)Landroid/view/View;
    .locals 1

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

    return-object p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getPositionByViewId(ILbye;)Ljava/lang/String;
    .locals 2

    const-string p1, "0"

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p2}, Lbye;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 80
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 81
    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 82
    aget-object p1, p2, v0

    :cond_0
    return-object p1
.end method

.method public performClick(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lbxq;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 35
    move-object v3, p1

    check-cast v3, Lbxq;

    invoke-interface {v3, v2}, Lbxq;->setPerformVuiAction(Z)V

    .line 38
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "performClick() View isClickable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";isFocusable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";isEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";hasOnClickListeners:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClickEvent run :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 48
    move-object v4, p1

    check-cast v4, Lbxq;

    invoke-interface {v4, v0}, Lbxq;->setPerformVuiAction(Z)V

    :cond_3
    if-eqz v3, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    .line 54
    move-object v1, p1

    check-cast v1, Lbxq;

    invoke-interface {v1, v0}, Lbxq;->setPerformVuiAction(Z)V

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_6

    return v0

    .line 59
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->performClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public run(Landroid/view/View;Lbye;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lbye;",
            ")TT;"
        }
    .end annotation

    .line 19
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->params:Lbye;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->params:Lbye;

    .line 20
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->performClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/event/ListItemClickEvent;->getListView(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 23
    instance-of p2, p2, Landroid/widget/ListView;

    :cond_0
    return-object p1
.end method
