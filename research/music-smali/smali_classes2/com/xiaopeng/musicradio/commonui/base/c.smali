.class public Lcom/xiaopeng/musicradio/commonui/base/c;
.super Ljava/lang/Object;
.source "LifecycleHelper.java"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 2

    .line 16
    instance-of v0, p0, Landroidx/lifecycle/m;

    if-eqz v0, :cond_4

    .line 17
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/m;

    :goto_0
    if-eqz p0, :cond_3

    .line 19
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/lifecycle/j;

    if-eqz v1, :cond_0

    .line 21
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j;

    .line 22
    invoke-virtual {p0, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    goto :goto_1

    .line 23
    :cond_0
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/lifecycle/n;

    if-eqz v1, :cond_1

    .line 24
    sget v1, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n;

    .line 25
    invoke-interface {p0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    :cond_1
    :goto_1
    return-void

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerLifecycleObserver: has no lifecycle=========: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LifecycleHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 4

    .line 40
    instance-of v0, p0, Landroidx/lifecycle/m;

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    if-eqz v0, :cond_4

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/m;

    .line 42
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;

    :goto_0
    if-eqz p0, :cond_4

    .line 44
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 46
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/lifecycle/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 47
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j;

    goto :goto_1

    .line 48
    :cond_0
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/lifecycle/n;

    if-eqz v2, :cond_1

    .line 49
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n;

    .line 50
    invoke-interface {p0}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/m;)V

    .line 55
    invoke-virtual {p0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-eq p0, v0, :cond_2

    .line 56
    invoke-interface {v1, v3}, Lcom/xiaopeng/musicradio/commonui/lifecycle/a;->onDestroy(Landroidx/lifecycle/n;)V

    :cond_2
    return-void

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    return-void
.end method
