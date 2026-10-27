.class public Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;
.super Lcom/xiaopeng/speech/vui/event/BaseEvent;
.source "ScrollByYEvent.java"


# instance fields
.field private mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/event/BaseEvent;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)Landroid/view/View;
    .locals 12
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

    .line 27
    .local p1, "view":Landroid/view/View;, "TT;"
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 28
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 29
    const-string v0, "direction"

    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    .local v0, "direction":Ljava/lang/String;
    const-string v1, "offset"

    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 31
    .local v1, "offset":Ljava/lang/Double;
    if-eqz v0, :cond_18

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 32
    :cond_0
    instance-of v3, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 33
    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v3, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .line 35
    :cond_1
    const-string v3, "up"

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

    .line 37
    .local v3, "value":I
    :goto_0
    const-string v5, "ScrollByYEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScrollByYEvent run value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",view:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v5, p1, Landroidx/recyclerview/widget/RecyclerView;

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const/16 v8, 0x64

    if-eqz v5, :cond_7

    .line 39
    if-eq v3, v8, :cond_3

    int-to-double v9, v3

    mul-double/2addr v9, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v9, v5

    double-to-int v5, v9

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    move v3, v5

    .line 40
    if-nez v3, :cond_4

    .line 41
    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto/16 :goto_6

    .line 42
    :cond_4
    if-ne v3, v8, :cond_6

    .line 43
    move-object v5, p1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .local v5, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    if-nez v6, :cond_5

    .line 45
    return-object p1

    .line 47
    :cond_5
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 48
    .end local v5    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    goto/16 :goto_6

    .line 49
    :cond_6
    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto/16 :goto_6

    .line 51
    :cond_7
    instance-of v4, p1, Landroid/widget/ScrollView;

    const/16 v5, 0x82

    const/16 v9, 0x21

    if-eqz v4, :cond_b

    .line 52
    if-eq v3, v8, :cond_8

    int-to-double v10, v3

    mul-double/2addr v10, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v6, v4

    mul-double/2addr v10, v6

    double-to-int v4, v10

    goto :goto_2

    :cond_8
    move v4, v8

    :goto_2
    move v3, v4

    .line 53
    if-nez v3, :cond_9

    .line 54
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v9}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto/16 :goto_6

    .line 55
    :cond_9
    if-ne v3, v8, :cond_a

    .line 56
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto/16 :goto_6

    .line 58
    :cond_a
    move-object v4, p1

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v2, v3}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto/16 :goto_6

    .line 60
    :cond_b
    instance-of v4, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_f

    .line 61
    if-eq v3, v8, :cond_c

    int-to-double v10, v3

    mul-double/2addr v10, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v6, v4

    mul-double/2addr v10, v6

    double-to-int v4, v10

    goto :goto_3

    :cond_c
    move v4, v8

    :goto_3
    move v3, v4

    .line 62
    if-nez v3, :cond_d

    .line 63
    move-object v4, p1

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v9}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    goto/16 :goto_6

    .line 64
    :cond_d
    if-ne v3, v8, :cond_e

    .line 65
    move-object v4, p1

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    goto/16 :goto_6

    .line 67
    :cond_e
    move-object v4, p1

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_6

    .line 69
    :cond_f
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_13

    .line 70
    if-eq v3, v8, :cond_10

    int-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    goto :goto_4

    :cond_10
    move v4, v8

    :goto_4
    move v3, v4

    .line 71
    move-object v4, p1

    check-cast v4, Landroid/widget/ListView;

    .line 72
    .local v4, "listView":Landroid/widget/ListView;
    if-nez v3, :cond_11

    .line 73
    invoke-virtual {v4}, Landroid/widget/ListView;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_5

    .line 74
    :cond_11
    if-ne v3, v8, :cond_12

    .line 75
    invoke-virtual {v4}, Landroid/widget/ListView;->getBottom()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_5

    .line 77
    :cond_12
    invoke-virtual {v4, v2, v3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 79
    .end local v4    # "listView":Landroid/widget/ListView;
    :goto_5
    goto :goto_6

    .line 80
    :cond_13
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 82
    if-nez v3, :cond_14

    .line 83
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_6

    .line 84
    :cond_14
    if-ne v3, v8, :cond_15

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->scrollTo(II)V

    goto :goto_6

    .line 87
    :cond_15
    int-to-double v8, v3

    mul-double/2addr v8, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v8, v5

    double-to-int v3, v8

    .line 88
    if-lez v3, :cond_16

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_17

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->scrollTo(II)V

    .line 91
    return-object p1

    .line 94
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    if-gez v5, :cond_17

    .line 95
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 96
    return-object p1

    .line 99
    :cond_17
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->scrollBy(II)V

    .line 102
    .end local v4    # "rect":Landroid/graphics/Rect;
    :goto_6
    instance-of v4, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_19

    .line 103
    move-object v4, p1

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "offset":Ljava/lang/Double;
    .end local v3    # "value":I
    goto :goto_8

    .line 31
    .restart local v0    # "direction":Ljava/lang/String;
    .restart local v1    # "offset":Ljava/lang/Double;
    :cond_18
    :goto_7
    return-object p1

    .line 107
    .end local v0    # "direction":Ljava/lang/String;
    .end local v1    # "offset":Ljava/lang/Double;
    :cond_19
    :goto_8
    return-object p1
.end method

.method public smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "position"    # I

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "ScrollByYEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothMoveToPosition: ===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;->setTargetPosition(I)V

    .line 137
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 139
    :cond_1
    return-void
.end method
