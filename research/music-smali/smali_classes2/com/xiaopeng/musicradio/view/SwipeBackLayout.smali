.class public Lcom/xiaopeng/musicradio/view/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;,
        Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipeBackLayout"


# instance fields
.field private mCatchMoveEvent:Z

.field private mDownY:F

.field private mDragScrollableChildEnable:Z

.field private mListener:Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

.field private mScroll:Landroid/widget/OverScroller;

.field mVdhYOffset:I

.field private mViewDragHelper:Lhi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mListener:Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lhi;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Landroid/widget/OverScroller;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mScroll:Landroid/widget/OverScroller;

    return-object p0
.end method

.method private hasTouchClickableChild()Z
    .locals 5

    const-string v0, "mFirstTouchTarget"

    .line 105
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "child"

    .line 107
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 109
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 115
    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    goto :goto_0

    .line 116
    :cond_2
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 117
    check-cast v3, Landroid/view/View;

    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "view_touch_top"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasTouchScrollableChild()Z
    .locals 7

    const-string v0, "mFirstTouchTarget"

    .line 129
    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "child"

    .line 131
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "view_touch_scroll"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    return v5

    .line 136
    :cond_1
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    invoke-static {v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 141
    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 142
    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    goto :goto_0

    .line 143
    :cond_3
    instance-of v6, v3, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 144
    check-cast v3, Landroid/view/View;

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v5

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private init()V
    .locals 3

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;-><init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;)V

    invoke-static {p0, v0}, Lhi;->a(Landroid/view/ViewGroup;Lhi$a;)Lhi;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    const-string v1, "sInterpolator"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    .line 58
    new-instance v1, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;-><init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mScroll:Landroid/widget/OverScroller;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mScroll:Landroid/widget/OverScroller;

    const-string v2, "mScroller"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhi;->a(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->invalidate()V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    :goto_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->hasTouchClickableChild()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mCatchMoveEvent:Z

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 94
    iget v1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDownY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    invoke-virtual {v1}, Lhi;->e()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->hasTouchScrollableChild()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 88
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDownY:F

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    invoke-virtual {v0, p1}, Lhi;->b(Landroid/view/MotionEvent;)V

    .line 99
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    invoke-virtual {v0, p1}, Lhi;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mViewDragHelper:Lhi;

    invoke-virtual {v0, p1}, Lhi;->b(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDragScrollableChildEnable(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mDragScrollableChildEnable:Z

    return-void
.end method

.method public setOnSwipeBackListener(Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mListener:Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    return-void
.end method
