.class public Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PickerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;
    }
.end annotation


# static fields
.field public static final CRITICAL_SCALE:F = 0.88f

.field public static final DEF_SCALE:F = 0.65f


# instance fields
.field private mDefColor:I

.field private mHighLineColor:I

.field private mIsAlpha:Z

.field private mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scale"    # F
    .param p3, "isAlpha"    # Z

    .line 25
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 26
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 27
    iput-boolean p3, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mIsAlpha:Z

    .line 28
    iput p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mScale:F

    .line 29
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_color_text_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    .line 30
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_color_primary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    .line 31
    return-void
.end method

.method private scaleVerticalChildView()V
    .locals 9

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 77
    .local v0, "mid":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 80
    .local v4, "childMid":F
    const/high16 v5, -0x40800000    # -1.0f

    iget v6, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    sub-float v6, v0, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v7, v5

    .line 81
    .local v7, "scale":F
    invoke-virtual {v3, v7}, Landroid/view/View;->setScaleX(F)V

    .line 82
    invoke-virtual {v3, v7}, Landroid/view/View;->setScaleY(F)V

    .line 83
    iget-boolean v5, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mIsAlpha:Z

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 86
    :cond_0
    sget v5, Lcom/xiaopeng/xpui/R$id;->tv_item1:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 87
    .local v5, "item1TV":Landroid/widget/TextView;
    sget v6, Lcom/xiaopeng/xpui/R$id;->tv_item2:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 89
    .local v6, "item2TV":Landroid/widget/TextView;
    const v8, 0x3f6147ae    # 0.88f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1

    .line 90
    iget v8, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget v8, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 93
    :cond_1
    iget v8, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget v8, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childMid":F
    .end local v5    # "item1TV":Landroid/widget/TextView;
    .end local v6    # "item2TV":Landroid/widget/TextView;
    .end local v7    # "scale":F
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 37
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getItemCount()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 49
    return-void

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 42
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 101
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onScrollStateChanged(I)V

    .line 102
    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 106
    .local v1, "position":I
    iget-object v2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;->onSelectedView(Landroid/view/View;I)V

    .line 109
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "position":I
    :cond_0
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 60
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 61
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 67
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    .line 114
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 55
    return-void
.end method
