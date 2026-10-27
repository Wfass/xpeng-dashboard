.class public final Lcom/blankj/utilcode/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 61
    return-void
.end method

.method public static addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 50
    return-void
.end method

.method public static finishActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1581
    if-eqz p0, :cond_0

    .line 1582
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1583
    return-void

    .line 1581
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivity(Landroid/app/Activity;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1607
    if-eqz p0, :cond_0

    .line 1610
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1611
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1612
    return-void

    .line 1607
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivity(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLoadAnim"    # Z

    .line 1591
    if-eqz p0, :cond_1

    .line 1592
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1593
    if-nez p1, :cond_0

    .line 1594
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1596
    :cond_0
    return-void

    .line 1591
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivity(Ljava/lang/Class;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1619
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 1620
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Ljava/lang/Class;Z)V

    .line 1621
    return-void

    .line 1619
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivity(Ljava/lang/Class;II)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 1651
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1654
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1655
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1656
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1657
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1658
    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1660
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1661
    :cond_1
    return-void

    .line 1651
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivity(Ljava/lang/Class;Z)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLoadAnim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 1629
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1631
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1632
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1633
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1634
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1635
    if-nez p1, :cond_0

    .line 1636
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1639
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1640
    :cond_1
    return-void

    .line 1629
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishAllActivities()V
    .locals 1

    .line 1835
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivities(Z)V

    .line 1836
    return-void
.end method

.method public static finishAllActivities(II)V
    .locals 3
    .param p0, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p1, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1864
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1865
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1867
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1868
    invoke-virtual {v2, p0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1869
    .end local v2    # "act":Landroid/app/Activity;
    goto :goto_0

    .line 1870
    :cond_0
    return-void
.end method

.method public static finishAllActivities(Z)V
    .locals 4
    .param p0, "isLoadAnim"    # Z

    .line 1844
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1845
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1847
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1848
    if-nez p0, :cond_0

    .line 1849
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1851
    .end local v2    # "act":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1852
    :cond_1
    return-void
.end method

.method public static finishAllActivitiesExceptNewest()V
    .locals 1

    .line 1876
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishAllActivitiesExceptNewest(Z)V

    .line 1877
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(II)V
    .locals 3
    .param p0, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p1, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1901
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1902
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1903
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1905
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static finishAllActivitiesExceptNewest(Z)V
    .locals 3
    .param p0, "isLoadAnim"    # Z

    .line 1885
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1886
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1887
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1889
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static finishOtherActivities(Ljava/lang/Class;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1790
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 1791
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishOtherActivities(Ljava/lang/Class;Z)V

    .line 1792
    return-void

    .line 1790
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishOtherActivities(Ljava/lang/Class;II)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 1820
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1823
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1824
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1825
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1826
    invoke-static {v2, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1828
    .end local v2    # "act":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1829
    :cond_1
    return-void

    .line 1820
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishOtherActivities(Ljava/lang/Class;Z)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isLoadAnim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 1801
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1803
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1804
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1805
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1806
    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1808
    .end local v2    # "act":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1809
    :cond_1
    return-void

    .line 1801
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Landroid/app/Activity;Z)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z

    .line 1669
    if-eqz p0, :cond_0

    .line 1671
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Landroid/app/Activity;ZZ)Z

    move-result v0

    return v0

    .line 1669
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZII)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1707
    if-eqz p0, :cond_3

    .line 1711
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1712
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1713
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1714
    if-eqz p1, :cond_0

    .line 1715
    invoke-static {v2, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1717
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1719
    :cond_1
    invoke-static {v2, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1720
    .end local v2    # "act":Landroid/app/Activity;
    goto :goto_0

    .line 1721
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1707
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Landroid/app/Activity;ZZ)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z
    .param p2, "isLoadAnim"    # Z

    .line 1681
    if-eqz p0, :cond_3

    .line 1684
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1685
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1686
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1687
    if-eqz p1, :cond_0

    .line 1688
    invoke-static {v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1690
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1692
    :cond_1
    invoke-static {v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1693
    .end local v2    # "act":Landroid/app/Activity;
    goto :goto_0

    .line 1694
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1681
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Ljava/lang/Class;Z)Z
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)Z"
        }
    .end annotation

    .line 1730
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 1732
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->finishToActivity(Ljava/lang/Class;ZZ)Z

    move-result v0

    return v0

    .line 1730
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZII)Z
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZII)Z"
        }
    .end annotation

    .line 1768
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_3

    .line 1772
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1773
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1774
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1775
    if-eqz p1, :cond_0

    .line 1776
    invoke-static {v2, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1778
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1780
    :cond_1
    invoke-static {v2, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;II)V

    .line 1781
    .end local v2    # "act":Landroid/app/Activity;
    goto :goto_0

    .line 1782
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1768
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishToActivity(Ljava/lang/Class;ZZ)Z
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isIncludeSelf"    # Z
    .param p2, "isLoadAnim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1742
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_3

    .line 1745
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1746
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1747
    .local v2, "act":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1748
    if-eqz p1, :cond_0

    .line 1749
    invoke-static {v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1751
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1753
    :cond_1
    invoke-static {v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->finishActivity(Landroid/app/Activity;Z)V

    .line 1754
    .end local v2    # "act":Landroid/app/Activity;
    goto :goto_0

    .line 1755
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 1742
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 99
    if-eqz p0, :cond_1

    .line 100
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_0
    return-object v0

    .line 99
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'context\' of type Context (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    :goto_0
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5

    .line 110
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 113
    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 114
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_2

    return-object v2

    .line 115
    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    move-object v3, p0

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 117
    if-nez p0, :cond_3

    .line 118
    return-object v0

    .line 120
    :cond_3
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    return-object v0

    .line 124
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_4
    goto :goto_0

    .line 125
    :cond_5
    return-object v0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivityContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 134
    .local v1, "mActivityContextField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 137
    .end local v1    # "mActivityContextField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 140
    :cond_1
    return-object v0
.end method

.method public static getActivityIcon(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1914
    if-eqz p0, :cond_0

    .line 1915
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1914
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "activityName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1936
    if-eqz p0, :cond_0

    .line 1937
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1939
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1940
    :catch_0
    move-exception v1

    .line 1941
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1942
    const/4 v2, 0x0

    return-object v2

    .line 1936
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activityName\' of type ComponentName (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityIcon(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1925
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 1926
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1925
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1451
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityLogo(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1953
    if-eqz p0, :cond_0

    .line 1954
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1953
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "activityName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1975
    if-eqz p0, :cond_0

    .line 1976
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1978
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1979
    :catch_0
    move-exception v1

    .line 1980
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1981
    const/4 v2, 0x0

    return-object v2

    .line 1975
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activityName\' of type ComponentName (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getActivityLogo(Ljava/lang/Class;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1964
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 1965
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1964
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLauncherActivity()Ljava/lang/String;
    .locals 1

    .line 1460
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1469
    if-eqz p0, :cond_3

    .line 1470
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1471
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1472
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1475
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1476
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1479
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v2

    .line 1477
    :cond_2
    :goto_0
    const-string v2, ""

    return-object v2

    .line 1469
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMainActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1488
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->getMainActivities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMainActivities(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1497
    if-eqz p0, :cond_3

    .line 1498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1500
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1502
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1503
    .local v4, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1504
    .local v5, "size":I
    if-nez v5, :cond_0

    return-object v0

    .line 1505
    :cond_0
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1506
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1507
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1508
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1511
    .end local v3    # "i":I
    :cond_2
    return-object v0

    .line 1497
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "size":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElements"    # [Landroid/view/View;

    .line 2119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2120
    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 2121
    :cond_1
    array-length v0, p1

    .line 2122
    .local v0, "len":I
    if-gtz v0, :cond_2

    return-object v1

    .line 2124
    :cond_2
    new-array v1, v0, [Landroidx/core/util/Pair;

    .line 2125
    .local v1, "pairs":[Landroidx/core/util/Pair;, "[Landroidx/core/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2126
    aget-object v3, p1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2128
    .end local v2    # "i":I
    :cond_3
    invoke-static {p0, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private static getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 2107
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 2099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2100
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2101
    :cond_0
    invoke-static {v0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "sharedElements"    # [Landroid/view/View;

    .line 2112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2113
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2114
    :cond_0
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 1520
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static getTopActivityOrApp()Landroid/content/Context;
    .locals 2

    .line 2132
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2134
    .local v0, "topActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 2136
    .end local v0    # "topActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1540
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1541
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1540
    :goto_0
    return v0
.end method

.method public static isActivityAlive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1530
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static isActivityExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    if-eqz p0, :cond_2

    .line 151
    if-eqz p1, :cond_1

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 155
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    .line 155
    :cond_0
    return v2

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isActivityExistsInStack(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1550
    if-eqz p0, :cond_2

    .line 1551
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1552
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1553
    .local v2, "aActivity":Landroid/app/Activity;
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1554
    const/4 v1, 0x1

    return v1

    .line 1556
    .end local v2    # "aActivity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1557
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1550
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isActivityExistsInStack(Ljava/lang/Class;)Z
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 1566
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1567
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 1568
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1569
    .local v2, "aActivity":Landroid/app/Activity;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1570
    const/4 v1, 0x1

    return v1

    .line 1572
    .end local v2    # "aActivity":Landroid/app/Activity;
    :cond_0
    goto :goto_0

    .line 1573
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1566
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2015
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 2016
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2017
    const/high16 v1, 0x10000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2018
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2015
    :goto_0
    return v0
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 90
    return-void
.end method

.method public static removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 0
    .param p0, "callbacks"    # Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 70
    return-void
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1379
    if-eqz p0, :cond_1

    .line 1380
    if-eqz p1, :cond_0

    .line 1381
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1382
    return-void

    .line 1380
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1407
    if-eqz p0, :cond_2

    .line 1408
    if-eqz p1, :cond_1

    .line 1411
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1413
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1415
    :cond_0
    return-void

    .line 1408
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1391
    if-eqz p0, :cond_1

    .line 1392
    if-eqz p1, :cond_0

    .line 1394
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1395
    return-void

    .line 1392
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivities([Landroid/content/Intent;)V
    .locals 2
    .param p0, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1339
    if-eqz p0, :cond_0

    .line 1340
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1341
    return-void

    .line 1339
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivities([Landroid/content/Intent;II)V
    .locals 3
    .param p0, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1363
    if-eqz p0, :cond_1

    .line 1366
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 1367
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1368
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1369
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1371
    :cond_0
    return-void

    .line 1363
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "intents"    # [Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2052
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2053
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2054
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2053
    .end local v2    # "intent":Landroid/content/Intent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2057
    :cond_0
    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2058
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2060
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 2062
    :goto_1
    return-void
.end method

.method public static startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "intents"    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1349
    if-eqz p0, :cond_0

    .line 1351
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivities([Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1352
    return-void

    .line 1349
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intents\' of type Intent[] (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 664
    if-eqz p0, :cond_1

    .line 665
    if-eqz p1, :cond_0

    .line 666
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 667
    return-void

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 706
    if-eqz p0, :cond_2

    .line 707
    if-eqz p1, :cond_1

    .line 710
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 711
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 712
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 714
    :cond_0
    return-void

    .line 707
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 676
    if-eqz p0, :cond_1

    .line 677
    if-eqz p1, :cond_0

    .line 679
    invoke-static {p1, p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 680
    return-void

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivity(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sharedElements"    # [Landroid/view/View;

    .line 690
    if-eqz p0, :cond_1

    .line 691
    if-eqz p1, :cond_0

    .line 693
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 694
    return-void

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;II)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 251
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 252
    if-eqz p1, :cond_1

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v3

    .line 255
    invoke-static {p0, v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 258
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 260
    :cond_0
    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 220
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 221
    if-eqz p1, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 234
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 235
    if-eqz p1, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v3

    .line 237
    invoke-static {p0, v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 430
    if-eqz p0, :cond_2

    .line 431
    if-eqz p1, :cond_1

    .line 432
    if-eqz p2, :cond_0

    .line 433
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 478
    if-eqz p0, :cond_3

    .line 479
    if-eqz p1, :cond_2

    .line 480
    if-eqz p2, :cond_1

    .line 483
    const/4 v0, 0x0

    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 485
    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 487
    :cond_0
    return-void

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    if-eqz p0, :cond_2

    .line 445
    if-eqz p1, :cond_1

    .line 446
    if-eqz p2, :cond_0

    .line 448
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 449
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sharedElements"    # [Landroid/view/View;

    .line 460
    if-eqz p0, :cond_2

    .line 461
    if-eqz p1, :cond_1

    .line 462
    if-eqz p2, :cond_0

    .line 464
    const/4 v0, 0x0

    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 465
    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1990
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1991
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1992
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1993
    invoke-static {v0, p0, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 1994
    return-void
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 318
    if-eqz p1, :cond_1

    .line 319
    if-eqz p2, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 321
    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;II)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 366
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_3

    .line 367
    if-eqz p1, :cond_2

    .line 368
    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {p1, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    .line 371
    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 373
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 374
    invoke-virtual {p1, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 376
    :cond_0
    return-void

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 331
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 332
    if-eqz p1, :cond_1

    .line 333
    if-eqz p2, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v0, v1, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 336
    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;[Landroid/view/View;)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 347
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 348
    if-eqz p1, :cond_1

    .line 349
    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {p1, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v2

    .line 351
    invoke-static {p1, p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 548
    if-eqz p0, :cond_3

    .line 549
    if-eqz p1, :cond_2

    .line 550
    if-eqz p2, :cond_1

    .line 551
    if-eqz p3, :cond_0

    .line 552
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 553
    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p5, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 601
    if-eqz p0, :cond_4

    .line 602
    if-eqz p1, :cond_3

    .line 603
    if-eqz p2, :cond_2

    .line 604
    if-eqz p3, :cond_1

    .line 607
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 609
    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 611
    :cond_0
    return-void

    .line 604
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 564
    if-eqz p0, :cond_3

    .line 565
    if-eqz p1, :cond_2

    .line 566
    if-eqz p2, :cond_1

    .line 567
    if-eqz p3, :cond_0

    .line 569
    invoke-static {p1, p0, p2, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 570
    return-void

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivity(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Landroid/view/View;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "sharedElements"    # [Landroid/view/View;

    .line 582
    if-eqz p0, :cond_3

    .line 583
    if-eqz p1, :cond_2

    .line 584
    if-eqz p2, :cond_1

    .line 585
    if-eqz p3, :cond_0

    .line 587
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 588
    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 4
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 268
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 271
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    return-void

    .line 269
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;II)V
    .locals 4
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 298
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 299
    if-eqz p1, :cond_1

    .line 302
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 303
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v3

    .line 303
    invoke-static {v0, p0, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 306
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 308
    :cond_0
    return-void

    .line 299
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 281
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 282
    if-eqz p1, :cond_0

    .line 284
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 285
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 286
    return-void

    .line 282
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    if-eqz p0, :cond_2

    .line 497
    if-eqz p1, :cond_1

    .line 498
    if-eqz p2, :cond_0

    .line 499
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 500
    return-void

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 528
    if-eqz p0, :cond_3

    .line 529
    if-eqz p1, :cond_2

    .line 530
    if-eqz p2, :cond_1

    .line 533
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 534
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, p0, p1, p2, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 535
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 536
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 538
    :cond_0
    return-void

    .line 530
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 510
    if-eqz p0, :cond_2

    .line 511
    if-eqz p1, :cond_1

    .line 512
    if-eqz p2, :cond_0

    .line 514
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 515
    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/Class;)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 166
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 168
    return-void

    .line 165
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/Class;II)V
    .locals 5
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;II)V"
        }
    .end annotation

    .line 191
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 194
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v4

    .line 195
    invoke-static {v0, v1, v2, v3, v4}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 198
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 200
    :cond_0
    return-void

    .line 191
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 176
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 178
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 180
    return-void

    .line 176
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 384
    if-eqz p0, :cond_1

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 387
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p3, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 412
    if-eqz p0, :cond_2

    .line 413
    if-eqz p1, :cond_1

    .line 416
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 417
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 418
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 419
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 421
    :cond_0
    return-void

    .line 413
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 396
    if-eqz p0, :cond_1

    .line 397
    if-eqz p1, :cond_0

    .line 399
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 400
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 619
    if-eqz p0, :cond_0

    .line 620
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivity(Landroid/content/Intent;II)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p2, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 645
    if-eqz p0, :cond_1

    .line 648
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    .line 650
    .local v1, "isSuccess":Z
    if-eqz v1, :cond_0

    .line 651
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 652
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 655
    :cond_0
    return v1

    .line 645
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "isSuccess":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1999
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2000
    const-string v0, "ActivityUtils"

    const-string v1, "intent is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    const/4 v0, 0x0

    return v0

    .line 2003
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 2004
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2006
    :cond_1
    if-eqz p2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 2007
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2009
    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2011
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static startActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 630
    if-eqz p0, :cond_0

    .line 632
    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#0 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .line 967
    if-eqz p0, :cond_1

    .line 968
    if-eqz p1, :cond_0

    .line 970
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    .line 971
    return-void

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;III)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1019
    if-eqz p0, :cond_2

    .line 1020
    if-eqz p1, :cond_1

    .line 1024
    nop

    .line 1025
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v0

    .line 1024
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1029
    :cond_0
    return-void

    .line 1020
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 982
    if-eqz p0, :cond_1

    .line 983
    if-eqz p1, :cond_0

    .line 986
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    .line 987
    return-void

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I[Landroid/view/View;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "sharedElements"    # [Landroid/view/View;

    .line 999
    if-eqz p0, :cond_1

    .line 1000
    if-eqz p1, :cond_0

    .line 1003
    nop

    .line 1004
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 1003
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    .line 1005
    return-void

    .line 1000
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 724
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 725
    if-eqz p1, :cond_0

    .line 727
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 729
    return-void

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;III)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 778
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 779
    if-eqz p1, :cond_1

    .line 783
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    .line 783
    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 786
    invoke-virtual {p0, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 788
    :cond_0
    return-void

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 740
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 741
    if-eqz p1, :cond_0

    .line 744
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 746
    return-void

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 758
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 759
    if-eqz p1, :cond_0

    .line 762
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 763
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    .line 762
    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 764
    return-void

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 799
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 800
    if-eqz p1, :cond_1

    .line 801
    if-eqz p2, :cond_0

    .line 803
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 805
    return-void

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;III)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p5, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 859
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_3

    .line 860
    if-eqz p1, :cond_2

    .line 861
    if-eqz p2, :cond_1

    .line 865
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    .line 865
    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 867
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 868
    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 870
    :cond_0
    return-void

    .line 861
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 817
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 818
    if-eqz p1, :cond_1

    .line 819
    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 824
    return-void

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 837
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 838
    if-eqz p1, :cond_1

    .line 839
    if-eqz p2, :cond_0

    .line 842
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 843
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    .line 842
    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 844
    return-void

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I

    .line 882
    if-eqz p0, :cond_3

    .line 883
    if-eqz p1, :cond_2

    .line 884
    if-eqz p2, :cond_1

    .line 885
    if-eqz p3, :cond_0

    .line 887
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 888
    return-void

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p6, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 945
    if-eqz p0, :cond_4

    .line 946
    if-eqz p1, :cond_3

    .line 947
    if-eqz p2, :cond_2

    .line 948
    if-eqz p3, :cond_1

    .line 952
    nop

    .line 953
    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object v5

    .line 952
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 954
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 955
    invoke-virtual {p1, p5, p6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 957
    :cond_0
    return-void

    .line 948
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 901
    if-eqz p0, :cond_3

    .line 902
    if-eqz p1, :cond_2

    .line 903
    if-eqz p2, :cond_1

    .line 904
    if-eqz p3, :cond_0

    .line 907
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 908
    return-void

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "sharedElements"    # [Landroid/view/View;

    .line 922
    if-eqz p0, :cond_3

    .line 923
    if-eqz p1, :cond_2

    .line 924
    if-eqz p2, :cond_1

    .line 925
    if-eqz p3, :cond_0

    .line 928
    nop

    .line 929
    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroid/app/Activity;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    .line 928
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 930
    return-void

    .line 925
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'activity\' of type Activity (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 1111
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1112
    if-eqz p1, :cond_1

    .line 1113
    if-eqz p2, :cond_0

    .line 1115
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1117
    return-void

    .line 1113
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p5, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 1171
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1172
    if-eqz p1, :cond_1

    .line 1173
    if-eqz p2, :cond_0

    .line 1177
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1178
    invoke-static {p1, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v6

    .line 1177
    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1179
    return-void

    .line 1173
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1129
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1130
    if-eqz p1, :cond_1

    .line 1131
    if-eqz p2, :cond_0

    .line 1134
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1136
    return-void

    .line 1131
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1129
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .param p4, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1149
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_2

    .line 1150
    if-eqz p1, :cond_1

    .line 1151
    if-eqz p2, :cond_0

    .line 1154
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-static {p1, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v6

    .line 1154
    move-object v1, p1

    move-object v2, p0

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1156
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I

    .line 1191
    if-eqz p0, :cond_3

    .line 1192
    if-eqz p1, :cond_2

    .line 1193
    if-eqz p2, :cond_1

    .line 1194
    if-eqz p3, :cond_0

    .line 1196
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1197
    return-void

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1193
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p6, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1254
    if-eqz p0, :cond_3

    .line 1255
    if-eqz p1, :cond_2

    .line 1256
    if-eqz p2, :cond_1

    .line 1257
    if-eqz p3, :cond_0

    .line 1261
    nop

    .line 1262
    invoke-static {p1, p5, p6}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    .line 1261
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1263
    return-void

    .line 1257
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 7, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1210
    if-eqz p0, :cond_3

    .line 1211
    if-eqz p1, :cond_2

    .line 1212
    if-eqz p2, :cond_1

    .line 1213
    if-eqz p3, :cond_0

    .line 1216
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1217
    return-void

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroid/os/Bundle;Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;I[Landroid/view/View;)V
    .locals 6
    .param p0, "extras"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cls"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "requestCode"    # I
    .param p5, "sharedElements"    # [Landroid/view/View;

    .line 1231
    if-eqz p0, :cond_3

    .line 1232
    if-eqz p1, :cond_2

    .line 1233
    if-eqz p2, :cond_1

    .line 1234
    if-eqz p3, :cond_0

    .line 1237
    nop

    .line 1238
    invoke-static {p1, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    .line 1237
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1239
    return-void

    .line 1234
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'cls\' of type String (#3 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#2 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#1 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'extras\' of type Bundle (#0 out of 6, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .line 1273
    if-eqz p0, :cond_1

    .line 1274
    if-eqz p1, :cond_0

    .line 1276
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    .line 1277
    return-void

    .line 1274
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;III)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param

    .line 1325
    if-eqz p0, :cond_1

    .line 1326
    if-eqz p1, :cond_0

    .line 1330
    nop

    .line 1331
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v0

    .line 1330
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    .line 1332
    return-void

    .line 1326
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1325
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1288
    if-eqz p0, :cond_1

    .line 1289
    if-eqz p1, :cond_0

    .line 1292
    invoke-static {p1, p0, p2, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    .line 1293
    return-void

    .line 1289
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I[Landroid/view/View;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "sharedElements"    # [Landroid/view/View;

    .line 1305
    if-eqz p0, :cond_1

    .line 1306
    if-eqz p1, :cond_0

    .line 1309
    nop

    .line 1310
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    .line 1309
    invoke-static {p1, p0, p2, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    .line 1311
    return-void

    .line 1306
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'intent\' of type Intent (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V
    .locals 6
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 1039
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 1040
    if-eqz p1, :cond_0

    .line 1042
    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1044
    return-void

    .line 1040
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;III)V
    .locals 6
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "enterAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .param p4, "exitAnim"    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;III)V"
        }
    .end annotation

    .line 1093
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 1094
    if-eqz p1, :cond_0

    .line 1098
    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1099
    invoke-static {p0, p3, p4}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;II)Landroid/os/Bundle;

    move-result-object v5

    .line 1098
    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1100
    return-void

    .line 1094
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 5, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 6
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1055
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 1056
    if-eqz p1, :cond_0

    .line 1059
    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1061
    return-void

    .line 1056
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs startActivityForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I[Landroid/view/View;)V
    .locals 6
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "sharedElements"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1073
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz p0, :cond_1

    .line 1074
    if-eqz p1, :cond_0

    .line 1077
    const/4 v1, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1078
    invoke-static {p0, p3}, Lcom/blankj/utilcode/util/ActivityUtils;->getOptionsBundle(Landroidx/fragment/app/Fragment;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    .line 1077
    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1079
    return-void

    .line 1074
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'clz\' of type Class<? extends Activity> (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'fragment\' of type Fragment (#0 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startActivityForResult(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2027
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2028
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2029
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2030
    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;ILandroid/os/Bundle;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2037
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    const-string v0, "ActivityUtils"

    const-string v1, "intent is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v0, 0x0

    return v0

    .line 2041
    :cond_0
    if-eqz p3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2042
    invoke-virtual {p1, p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2044
    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2046
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2080
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2081
    const-string v0, "ActivityUtils"

    const-string v2, "intent is unavailable"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return v1

    .line 2084
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2085
    const-string v0, "ActivityUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to Activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return v1

    .line 2088
    :cond_1
    if-eqz p3, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 2089
    invoke-virtual {p1, p0, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 2091
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2093
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "options"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2070
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2071
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2072
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2073
    invoke-static {v0, p0, p4, p5}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivityForResult(Landroid/content/Intent;Landroidx/fragment/app/Fragment;ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public static startHomeActivity()V
    .locals 2

    .line 1421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1424
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)Z

    .line 1425
    return-void
.end method

.method public static startLauncherActivity()V
    .locals 1

    .line 1431
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startLauncherActivity(Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method public static startLauncherActivity(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1439
    if-eqz p0, :cond_1

    .line 1440
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "launcherActivity":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1442
    :cond_0
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    return-void

    .line 1439
    .end local v0    # "launcherActivity":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pkg\' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
