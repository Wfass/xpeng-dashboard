.class public Lcom/xiaopeng/musicradio/commonui/navigation/b;
.super Ljava/lang/Object;
.source "MusicNavigation.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/navigation/c;
    .locals 5

    .line 19
    instance-of v0, p0, Landroid/app/Activity;

    const-string v1, "findNavController: "

    const-string v2, "MusicNavigation"

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Landroid/app/Activity;

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    const-string v3, "context should not a activity"

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    sget v0, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/commonui/navigation/c;

    return-object p0

    .line 23
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_3

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->b()Landroid/view/ViewGroup;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 26
    sget v3, Laqv$d;->tag_frag_nav_id:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 28
    check-cast v3, Lcom/xiaopeng/musicradio/commonui/navigation/c;

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parentView = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " context = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 32
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
