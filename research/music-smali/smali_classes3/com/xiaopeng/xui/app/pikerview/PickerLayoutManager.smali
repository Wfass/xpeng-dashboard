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

.field private mHasExecutedPostDrawLogic:Z

.field private mHighLineColor:I

.field private mIsAlpha:Z

.field private mLastPosition:I

.field private mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

.field private mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 30
    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLastPosition:I

    .line 32
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHasExecutedPostDrawLogic:Z

    .line 36
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 37
    iput-boolean p3, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mIsAlpha:Z

    .line 38
    iput p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mScale:F

    .line 39
    sget p2, Lbyg$e;->x_color_text_3:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    .line 40
    sget p2, Lbyg$e;->x_color_primary:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)Landroidx/recyclerview/widget/LinearSnapHelper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLastPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLastPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->playScrollSound()V

    return-void
.end method

.method private playScrollSound()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->isSoundEffectsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 160
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playSoundEffectByDisplay(II)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->play(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scaleVerticalChildView()V
    .locals 8

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 114
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 115
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    const/high16 v5, -0x40800000    # -1.0f

    .line 116
    iget v6, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float/2addr v6, v5

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v6, v4

    div-float/2addr v6, v0

    add-float/2addr v6, v7

    .line 117
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 118
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 119
    iget-boolean v4, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mIsAlpha:Z

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 122
    :cond_0
    sget v4, Lbyg$h;->tv_item1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    sget v5, Lbyg$h;->tv_item2:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x3f6147ae    # 0.88f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    .line 126
    iget v5, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget v4, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 129
    :cond_1
    iget v5, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget v4, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHasExecutedPostDrawLogic:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getDefLocation()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLastPosition:I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getItemCount()I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 56
    iget-boolean p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHasExecutedPostDrawLogic:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHasExecutedPostDrawLogic:Z

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mRecyclerView:Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    new-instance v0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;-><init>(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mLinearSnapHelper:Landroidx/recyclerview/widget/LinearSnapHelper;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;->onSelectedView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onThemeChanged(Landroid/content/Context;)V
    .locals 1

    .line 106
    sget v0, Lbyg$e;->x_color_text_3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mDefColor:I

    .line 107
    sget v0, Lbyg$e;->x_color_primary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mHighLineColor:I

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 90
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 96
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setOnSelectedViewListener(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->mOnSelectedViewListener:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$OnSelectedViewListener;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->scaleVerticalChildView()V

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method
