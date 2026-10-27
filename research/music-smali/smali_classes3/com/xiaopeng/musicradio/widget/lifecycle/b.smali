.class public Lcom/xiaopeng/musicradio/widget/lifecycle/b;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# direct methods
.method public static a(Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
    .locals 4

    .line 37
    invoke-static {p0}, Landroidx/fragment/app/t;->d(Landroidx/fragment/app/FragmentManager;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 42
    instance-of v3, v2, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    if-eqz v3, :cond_1

    .line 43
    check-cast v2, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    .line 44
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;->isSupportVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroidx/fragment/app/FragmentManager;)Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;"
        }
    .end annotation

    const-string v0, "FragmentUtil"

    if-eqz p0, :cond_1

    .line 21
    invoke-static {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;

    if-nez p1, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
