.class public Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "ScrollByXEvent.java"


# instance fields
.field private mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 29
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 30
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "direction"

    .line 31
    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "offset"

    .line 32
    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-nez v0, :cond_0

    return-object p1

    .line 35
    :cond_0
    instance-of v3, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 36
    move-object v5, p1

    check-cast v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v5, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    :cond_1
    const-string v5, "left"

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    if-eqz v6, :cond_2

    neg-int v1, v1

    .line 39
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScrollByXEvent run direction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 40
    iget-object v6, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 42
    instance-of v1, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_3

    .line 43
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_3
    move-object v1, p1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    :goto_0
    if-eqz v1, :cond_10

    const/4 v6, -0x1

    .line 48
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v7

    .line 49
    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v8

    .line 50
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v9

    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int/2addr v9, v4

    if-eqz v7, :cond_4

    .line 54
    invoke-virtual {v1, v9, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_3

    :cond_4
    if-eqz v8, :cond_10

    .line 56
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result p2

    if-eq p2, v6, :cond_10

    .line 58
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    sub-int/2addr v0, p2

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_3

    :cond_5
    add-int/2addr v9, v4

    if-eqz v8, :cond_6

    .line 64
    invoke-virtual {v1, v9, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_3

    :cond_6
    if-eqz v7, :cond_10

    .line 66
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result p2

    if-eq p2, v6, :cond_10

    .line 68
    invoke-virtual {v1, p2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_3

    .line 73
    :cond_7
    iget-object v0, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    const/16 v7, 0x64

    if-eqz v0, :cond_b

    if-eq v1, v7, :cond_8

    int-to-double v0, v1

    mul-double/2addr v0, v5

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v0, v4

    double-to-int p2, v0

    goto :goto_1

    :cond_8
    move p2, v7

    :goto_1
    if-nez p2, :cond_9

    .line 76
    move-object p2, p1

    check-cast p2, Landroid/widget/ScrollView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_3

    :cond_9
    if-ne p2, v7, :cond_a

    .line 78
    move-object p2, p1

    check-cast p2, Landroid/widget/ScrollView;

    const/16 v0, 0x42

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_3

    .line 80
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, p2, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_3

    .line 82
    :cond_b
    iget-object p2, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-eq v1, v7, :cond_c

    int-to-double v0, v1

    mul-double/2addr v0, v5

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v5, p2

    mul-double/2addr v0, v5

    double-to-int p2, v0

    goto :goto_2

    :cond_c
    move p2, v7

    :goto_2
    if-nez p2, :cond_d

    .line 85
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_3

    :cond_d
    if-ne p2, v7, :cond_f

    .line 87
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_e

    return-object p1

    .line 91
    :cond_e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_3

    .line 93
    :cond_f
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_10
    :goto_3
    if-eqz v3, :cond_11

    .line 97
    move-object p2, p1

    check-cast p2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {p2, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    :cond_11
    return-object p1
.end method

.method public smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smoothMoveToPosition: ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollByYEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;->setTargetPosition(I)V

    .line 111
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    return-void
.end method
