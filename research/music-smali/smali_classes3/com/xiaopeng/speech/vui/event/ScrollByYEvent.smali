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

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;Lbye;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lbye;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 27
    invoke-virtual {p2}, Lbye;->getResultActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Lbye;->getResultActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 28
    sget-object v0, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lbye;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "direction"

    .line 29
    invoke-static {p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lbye;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "offset"

    .line 30
    invoke-static {p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getValueByName(Lbye;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz v0, :cond_18

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 32
    :cond_0
    instance-of v1, p1, Lbxq;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 33
    move-object v4, p1

    check-cast v4, Lbxq;

    invoke-interface {v4, v3}, Lbxq;->setPerformVuiAction(Z)V

    :cond_1
    const-string v4, "up"

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    neg-int p2, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScrollByYEvent run value:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",view:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScrollByYEvent"

    invoke-static {v4, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    const/16 v6, 0x64

    if-eqz v0, :cond_7

    if-eq p2, v6, :cond_3

    int-to-double v7, p2

    mul-double/2addr v7, v4

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v7, v4

    double-to-int p2, v7

    goto :goto_1

    :cond_3
    move p2, v6

    :goto_1
    if-nez p2, :cond_4

    .line 41
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto/16 :goto_5

    :cond_4
    if-ne p2, v6, :cond_6

    .line 43
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_5

    return-object p1

    .line 47
    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto/16 :goto_5

    .line 49
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 51
    :cond_7
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/16 v3, 0x82

    const/16 v7, 0x21

    if-eqz v0, :cond_b

    if-eq p2, v6, :cond_8

    int-to-double v8, p2

    mul-double/2addr v8, v4

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v8, v4

    double-to-int p2, v8

    goto :goto_2

    :cond_8
    move p2, v6

    :goto_2
    if-nez p2, :cond_9

    .line 54
    move-object p2, p1

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p2, v7}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto/16 :goto_5

    :cond_9
    if-ne p2, v6, :cond_a

    .line 56
    move-object p2, p1

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p2, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto/16 :goto_5

    .line 58
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, p2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 60
    :cond_b
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_f

    if-eq p2, v6, :cond_c

    int-to-double v8, p2

    mul-double/2addr v8, v4

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v4, p2

    mul-double/2addr v8, v4

    double-to-int p2, v8

    goto :goto_3

    :cond_c
    move p2, v6

    :goto_3
    if-nez p2, :cond_d

    .line 63
    move-object p2, p1

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v7}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    goto/16 :goto_5

    :cond_d
    if-ne p2, v6, :cond_e

    .line 65
    move-object p2, p1

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v3}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    goto/16 :goto_5

    .line 67
    :cond_e
    move-object v0, p1

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2, p2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    goto/16 :goto_5

    .line 69
    :cond_f
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_13

    if-eq p2, v6, :cond_10

    int-to-double v7, p2

    mul-double/2addr v7, v4

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v3, p2

    mul-double/2addr v7, v3

    double-to-int p2, v7

    goto :goto_4

    :cond_10
    move p2, v6

    .line 71
    :goto_4
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    if-nez p2, :cond_11

    .line 73
    invoke-virtual {v0}, Landroid/widget/ListView;->getTop()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_5

    :cond_11
    if-ne p2, v6, :cond_12

    .line 75
    invoke-virtual {v0}, Landroid/widget/ListView;->getBottom()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_5

    .line 77
    :cond_12
    invoke-virtual {v0, v2, p2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_5

    .line 80
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-nez p2, :cond_14

    .line 83
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    :cond_14
    if-ne p2, v6, :cond_15

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_5

    :cond_15
    int-to-double v6, p2

    mul-double/2addr v6, v4

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-double v3, p2

    mul-double/2addr v6, v3

    double-to-int p2, v6

    if-lez p2, :cond_16

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_17

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->scrollTo(II)V

    return-object p1

    .line 94
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v3, v0

    if-gez v3, :cond_17

    .line 95
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    return-object p1

    .line 99
    :cond_17
    invoke-virtual {p1, v2, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_5
    if-eqz v1, :cond_18

    .line 103
    move-object p2, p1

    check-cast p2, Lbxq;

    invoke-interface {p2, v2}, Lbxq;->setPerformVuiAction(Z)V

    nop

    :cond_18
    :goto_6
    return-object p1
.end method

.method public smoothMoveToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smoothMoveToPosition: ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollByYEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/event/ScrollByYEvent;->mScroller:Lcom/xiaopeng/speech/vui/event/EndSmoothScroller;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    return-void
.end method
