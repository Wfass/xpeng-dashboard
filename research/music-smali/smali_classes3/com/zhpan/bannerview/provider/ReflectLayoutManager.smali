.class public Lcom/zhpan/bannerview/provider/ReflectLayoutManager;
.super Ljava/lang/Object;
.source "ReflectLayoutManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reflectLayoutManager(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 5

    const-string v0, "mLayoutManager"

    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v2, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v3, Lcom/zhpan/bannerview/provider/ScrollDurationManger;

    invoke-direct {v3, p0, p1, v2}, Lcom/zhpan/bannerview/provider/ScrollDurationManger;-><init>(Landroidx/viewpager2/widget/ViewPager2;ILandroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 42
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    const-class p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v4, "mRecyclerView"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v4, 0x1

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {p1, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    const-class p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 48
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    const-class p1, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "mPageTransformerAdapter"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :cond_1
    const-class p1, Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "mScrollEventAdapter"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
