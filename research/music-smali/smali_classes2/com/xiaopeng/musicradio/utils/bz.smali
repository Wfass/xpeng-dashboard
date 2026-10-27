.class public Lcom/xiaopeng/musicradio/utils/bz;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public static a(Landroid/view/View;)Z
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    :goto_0
    if-eqz v0, :cond_2

    if-eq p0, v0, :cond_2

    .line 38
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 39
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    :goto_0
    if-eqz v0, :cond_1

    if-eq p0, v0, :cond_1

    .line 52
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    sget v2, Lasn$a;->tag_dialog:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 57
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
