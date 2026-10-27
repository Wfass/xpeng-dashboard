.class public Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ScrollConstraintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollConstraintView"


# instance fields
.field private isPressed:Z

.field private mContext:Landroid/content/Context;

.field private mIsScroll:Z

.field private mMaxScrollY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedIntercept:Z

.field private mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

.field private mPageVisibleHeight:I

.field private mScaleTouchSlop:I

.field private mScrollYSlop:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTouchDownY:F

.field private mTouchY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    .line 55
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScaleTouchSlop:I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScrollYSlop:I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mContext:Landroid/content/Context;

    const/16 v1, 0x320

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/UIUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    .line 58
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    .line 59
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMinimumVelocity:I

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMaximumVelocity:I

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scrollTo(II)V

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->invalidate()V

    goto :goto_0

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->isPressed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollConstraintView"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mNeedIntercept:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScaleTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 89
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mIsScroll:Z

    .line 90
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->isPressed:Z

    .line 92
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mIsScroll:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollStart()V

    .line 95
    :cond_2
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mIsScroll:Z

    return p1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchDownY:F

    .line 82
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchY:F

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mIsScroll:Z

    .line 84
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 85
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mNeedIntercept:Z

    .line 99
    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 67
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMaxScrollY:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getScrollY()I

    move-result v3

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto/16 :goto_1

    .line 116
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchY:F

    sub-float/2addr v1, v0

    .line 117
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchY:F

    int-to-float v0, v3

    add-float v2, v0, v1

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    neg-int v1, v3

    int-to-float v1, v1

    :cond_1
    add-float/2addr v0, v1

    .line 121
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMaxScrollY:I

    int-to-float v4, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    :cond_2
    float-to-int v0, v1

    .line 124
    invoke-virtual {p0, v5, v0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scrollBy(II)V

    goto/16 :goto_1

    .line 128
    :cond_3
    iput-boolean v5, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->isPressed:Z

    .line 129
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mTouchDownY:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    .line 130
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    if-ge v3, v0, :cond_9

    .line 131
    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScrollYSlop:I

    sub-int/2addr v0, v1

    if-ge v3, v0, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Top()V

    goto/16 :goto_1

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Setting()V

    goto :goto_1

    :cond_5
    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 139
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    if-ge v3, v0, :cond_9

    .line 140
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScrollYSlop:I

    if-ge v3, v0, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Top()V

    goto :goto_1

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Setting()V

    goto :goto_1

    :cond_7
    if-lez v3, :cond_9

    .line 147
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    if-ge v3, v0, :cond_9

    .line 148
    div-int/2addr v0, v4

    if-ge v3, v0, :cond_8

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Top()V

    goto :goto_0

    .line 151
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->scroll2Setting()V

    .line 154
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 155
    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 156
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yVelocity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollConstraintView"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMinimumVelocity:I

    if-le v1, v2, :cond_a

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    iget v9, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mMaxScrollY:I

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->invalidate()V

    goto :goto_1

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz v0, :cond_b

    .line 164
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollFinish()V

    .line 171
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 109
    :cond_c
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->isPressed:Z

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz p1, :cond_d

    .line 111
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollStart()V

    :cond_d
    return v2
.end method

.method public scroll2Setting()V
    .locals 7

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollStart()V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mPageVisibleHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getScrollY()I

    move-result v5

    sub-int v5, v0, v5

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->postInvalidate()V

    return-void
.end method

.method public scroll2Top()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;->onScrollStart()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->postInvalidate()V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->getScrollY()I

    move-result v0

    neg-int v5, v0

    const/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public setNeedIntercept(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needIntercept"
        }
    .end annotation

    .line 72
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mNeedIntercept:Z

    return-void
.end method

.method public setOnScrollStateListener(Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScrollStateListener"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView;->mOnScrollStateListener:Lcom/xiaopeng/carcontrol/view/widget/ScrollConstraintView$OnScrollStateListener;

    return-void
.end method
