.class public Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;
.super Landroid/widget/LinearLayout;
.source "RecyclerViewFastScroller.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:I

.field private d:Z

.field private e:Landroid/animation/ObjectAnimator;

.field private final f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->d:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->e:Landroid/animation/ObjectAnimator;

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;-><init>(Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->d:Z

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->e:Landroid/animation/ObjectAnimator;

    .line 28
    new-instance p2, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;-><init>(Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->d:Z

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->e:Landroid/animation/ObjectAnimator;

    .line 28
    new-instance p2, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller$1;-><init>(Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(III)I
    .locals 0

    .line 139
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    .line 149
    iget v2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->c:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    .line 150
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setBubbleAndHandlePosition(F)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a()V

    return-void
.end method

.method private setBubbleAndHandlePosition(F)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->c:I

    sub-int/2addr v2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(III)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->c:I

    add-int/lit8 v3, v2, -0x5

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    div-float v2, p1, v1

    :goto_0
    add-int/lit8 p1, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, v1, p1, v0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a(III)I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    .line 55
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->d:Z

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setOrientation(I)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setClipChildren(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 71
    iput p2, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->c:I

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    return v2

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-static {v4}, Lgj;->j(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->e:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setBubbleAndHandlePosition(F)V

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setRecyclerViewPosition(F)V

    return v2
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->f:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->a()V

    return-void
.end method
