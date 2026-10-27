.class public Lcom/xiaopeng/xui/widget/XLeftSlideView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XLeftSlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LeftSlideView"


# instance fields
.field private isReCompute:Z

.field private mAnimDuring:I

.field private mCardView:Landroidx/cardview/widget/CardView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDelLength:I

.field private mInitX:F

.field private mInitY:F

.field private mMenuView:Landroid/view/View;

.field private mRightCanSlide:I

.field private mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

.field private mTouchSlop:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVerticalScrollableView:Landroid/view/ViewGroup;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v0, 0xc8

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    .line 40
    const/16 v0, 0x4c

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private clearAnim()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 394
    return-void
.end method

.method private init()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->initView()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->setOrientation(I)V

    .line 83
    return-void
.end method

.method private initView()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    const-string v1, "contentView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    const-string v1, "menuView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :cond_0
    return-void
.end method

.method private upAnim()V
    .locals 6

    .line 401
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v0

    .line 402
    .local v0, "scrollX":I
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 410
    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    if-lt v0, v2, :cond_2

    .line 411
    new-array v2, v4, [I

    aput v0, v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 412
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 423
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v2, :cond_3

    .line 424
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    goto :goto_1

    .line 427
    :cond_2
    new-array v2, v4, [I

    aput v0, v2, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/widget/XLeftSlideView$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$2;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 439
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    invoke-interface {v1, v3}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    .line 443
    :cond_3
    :goto_1
    return-void

    .line 403
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v2, :cond_6

    .line 404
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    if-ne v0, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    invoke-interface {v2, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    .line 406
    :cond_6
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    const-string v1, "contentView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    const-string v0, "contentView"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method public addMenuView(Landroid/view/View;)V
    .locals 4
    .param p1, "menuView"    # Landroid/view/View;

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    const-string v1, "menuView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    const-string v0, "menuView"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "mv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->init()V

    .line 73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 181
    .local v0, "actionMasked":I
    const-string v1, "LeftSlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent: actiOnMasked= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 208
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 218
    :cond_2
    return v1

    .line 222
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 226
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 228
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 231
    :cond_4
    return v1

    .line 236
    :cond_5
    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_9

    .line 240
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v3, :cond_6

    .line 241
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 245
    :cond_6
    return v2

    .line 253
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    .line 254
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 255
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    goto :goto_2

    .line 185
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    goto :goto_1

    .line 188
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 190
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_8

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 197
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_9

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->requestDisallowInterceptTouchEvent(Z)V

    .line 262
    :cond_9
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 87
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    .line 91
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    .line 92
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 277
    .local v0, "actionMasked":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 298
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_2

    .line 305
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 306
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 311
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 322
    :cond_3
    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .line 326
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v3, :cond_4

    .line 327
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 328
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    :goto_1
    sub-float/2addr v3, v5

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    goto :goto_1

    .line 337
    .local v3, "translationX":F
    :goto_2
    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_7

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    goto :goto_3

    .line 341
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 346
    :cond_7
    :goto_3
    cmpg-float v5, v3, v4

    if-gez v5, :cond_8

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 350
    :cond_8
    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v5, v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 351
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 354
    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_c

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_c

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_9

    neg-float v4, v3

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    float-to-int v4, v4

    invoke-virtual {p0, v4, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->scrollTo(II)V

    .line 358
    return v2

    .line 366
    .end local v3    # "translationX":F
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_a

    .line 367
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 368
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 371
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->upAnim()V

    .line 373
    return v2

    .line 279
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    .line 281
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 283
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_b

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 287
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_c

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->requestDisallowInterceptTouchEvent(Z)V

    .line 379
    :cond_c
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetDelStatus()V
    .locals 4

    .line 450
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v0

    .line 452
    .local v0, "scrollX":I
    :goto_0
    if-nez v0, :cond_1

    .line 453
    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 458
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 459
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 469
    return-void
.end method

.method public setCardView(Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "cardView"    # Landroidx/cardview/widget/CardView;

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    .line 148
    return-void
.end method

.method public setStatusChangeLister(Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;)V
    .locals 0
    .param p1, "statusChangeLister"    # Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    .line 155
    return-void
.end method

.method public setVerticalScrollableView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/view/ViewGroup;

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    .line 141
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 134
    return-void
.end method
