.class public Lcom/zhpan/bannerview/provider/ScrollDurationManger;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScrollDurationManger.java"


# instance fields
.field private final mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final scrollDuration:I


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;ILandroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 47
    iput p2, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->scrollDuration:I

    .line 48
    iput-object p3, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$000(Lcom/zhpan/bannerview/provider/ScrollDurationManger;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->scrollDuration:I

    return p0
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 7

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "calculateExtraLayoutSpace"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 82
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 85
    iget-object v1, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zhpan/bannerview/utils/BannerUtils;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lgu;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lgu;)V

    return-void
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->mParent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 54
    new-instance p2, Lcom/zhpan/bannerview/provider/ScrollDurationManger$1;

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zhpan/bannerview/provider/ScrollDurationManger$1;-><init>(Lcom/zhpan/bannerview/provider/ScrollDurationManger;Landroid/content/Context;)V

    .line 61
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/zhpan/bannerview/provider/ScrollDurationManger;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
