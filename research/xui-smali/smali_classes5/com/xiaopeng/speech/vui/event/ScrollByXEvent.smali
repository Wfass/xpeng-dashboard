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

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 11
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

    .line 29
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

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

    if-eqz v0, :cond_13

    .line 31
    const-string v0, "direction"

    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "direction":Ljava/lang/String;
    const-string v1, "offset"

    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 34
    .local v1, "offset":Ljava/lang/Double;
    if-nez v0, :cond_0

    return-object p1

    .line 35
    :cond_0
    instance-of v3, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 36
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 38
    :cond_1
    const-string v3, "left"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 39
    .local v3, "value":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScrollByXEvent run direction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 40
    iget-object v5, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "viewPager":Landroidx/viewpager/widget/ViewPager;
    instance-of v6, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v6, :cond_3

    .line 43
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v5

    goto :goto_1

    .line 45
    :cond_3
    move-object v5, p1

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    .line 47
    :goto_1
    if-eqz v5, :cond_8

    .line 48
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v7

    .line 49
    .local v7, "canLeft":Z
    invoke-virtual {v5, v4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v8

    .line 50
    .local v8, "canRight":Z
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v9

    .line 51
    .local v9, "nextItem":I
    const-string v10, "left"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 52
    sub-int/2addr v9, v4

    .line 53
    if-eqz v7, :cond_4

    .line 54
    invoke-virtual {v5, v9, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 55
    :cond_4
    if-eqz v8, :cond_8

    .line 56
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v10

    .line 57
    .local v10, "extraPage":I
    if-eq v10, v6, :cond_5

    .line 58
    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v10

    invoke-virtual {v5, v6, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 60
    .end local v10    # "extraPage":I
    :cond_5
    goto :goto_2

    .line 62
    :cond_6
    add-int/2addr v9, v4

    .line 63
    if-eqz v8, :cond_7

    .line 64
    invoke-virtual {v5, v9, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 65
    :cond_7
    if-eqz v7, :cond_8

    .line 66
    invoke-static {p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I

    move-result v4

    .line 67
    .local v4, "extraPage":I
    if-eq v4, v6, :cond_8

    .line 68
    invoke-virtual {v5, v4, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 73
    .end local v4    # "extraPage":I
    .end local v5    # "viewPager":Landroidx/viewpager/widget/ViewPager;
    .end local v7    # "canLeft":Z
    .end local v8    # "canRight":Z
    .end local v9    # "nextItem":I
    :cond_8
    :goto_2
    goto/16 :goto_5

    :cond_9
    iget-object v5, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const/16 v8, 0x64

    if-eqz v5, :cond_d

    .line 74
    if-eq v3, v8, :cond_a

    int-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    goto :goto_3

    :cond_a
    move v4, v8

    :goto_3
    move v3, v4

    .line 75
    if-nez v3, :cond_b

    .line 76
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_5

    .line 77
    :cond_b
    if-ne v3, v8, :cond_c

    .line 78
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_5

    .line 80
    :cond_c
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_5

    .line 82
    :cond_d
    iget-object v5, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    sget-object v9, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v9}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 83
    if-eq v3, v8, :cond_e

    int-to-double v9, v3

    mul-double/2addr v9, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v9, v5

    double-to-int v5, v9

    goto :goto_4

    :cond_e
    move v5, v8

    :goto_4
    move v3, v5

    .line 84
    if-nez v3, :cond_f

    .line 85
    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_5

    .line 86
    :cond_f
    if-ne v3, v8, :cond_11

    .line 87
    move-object v5, p1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .local v5, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    if-nez v6, :cond_10

    .line 89
    return-object p1

    .line 91
    :cond_10
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 92
    .end local v5    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    goto :goto_5

    .line 93
    :cond_11
    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 96
    :cond_12
    :goto_5
    instance-of v4, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_13

    .line 97
    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 101
    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "offset":Ljava/lang/Double;
    .end local v3    # "value":I
    :cond_13
    return-object p1
.end method

.method public smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "position"    # I

    .line 105
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "ScrollByYEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothMoveToPosition: ===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/event/ScrollByXEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 113
    :cond_1
    return-void
.end method
