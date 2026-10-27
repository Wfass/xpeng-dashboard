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

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xc8

    .line 38
    iput p2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    const/16 p2, 0x4c

    .line 40
    iput p2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    const/4 p2, 0x1

    .line 48
    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private clearAnim()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

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

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->setOrientation(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    const-string v1, "contentView"

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    const-string v1, "menuView"

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

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

    div-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    if-lt v0, v4, :cond_2

    new-array v4, v5, [I

    aput v0, v4, v3

    aput v2, v4, v1

    .line 411
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 412
    new-instance v2, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$1;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v0, :cond_3

    .line 424
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    goto :goto_1

    :cond_2
    new-array v2, v5, [I

    aput v0, v2, v3

    aput v3, v2, v1

    .line 427
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 428
    new-instance v1, Lcom/xiaopeng/xui/widget/XLeftSlideView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$2;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v0, :cond_3

    .line 440
    invoke-interface {v0, v3}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    :cond_3
    :goto_1
    return-void

    .line 403
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    if-eqz v4, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    .line 404
    :goto_3
    invoke-interface {v4, v1}, Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;->onStatusChange(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    const-string v0, "contentView"

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addMenuView(Landroid/view/View;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    const-string v0, "menuView"

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent: actiOnMasked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LeftSlideView"

    invoke-static {v2, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    goto/16 :goto_2

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 208
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_3

    .line 215
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return v2

    .line 222
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 228
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    :cond_5
    return v2

    .line 236
    :cond_6
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_c

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_c

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    :cond_7
    return v1

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 255
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    goto :goto_2

    .line 185
    :cond_9
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    goto :goto_1

    .line 188
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 190
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    .line 191
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_b

    .line 194
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_c

    .line 198
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->requestDisallowInterceptTouchEvent(Z)V

    .line 262
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 87
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onLayout(ZIIII)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mMenuView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    .line 91
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mDelLength:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_b

    goto/16 :goto_3

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 306
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 311
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_4

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v4, :cond_4

    .line 316
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 322
    :cond_4
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_5

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    if-eqz v4, :cond_5

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 328
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 334
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    :goto_1
    sub-float/2addr v0, v4

    .line 337
    iget v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_8

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v1, :cond_7

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    goto :goto_2

    .line 341
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    :cond_8
    :goto_2
    cmpg-float v4, v0, v3

    if-gez v4, :cond_9

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 350
    :cond_9
    iget p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 351
    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 354
    iget v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mRightCanSlide:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_f

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_f

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_a

    neg-float p1, p1

    :cond_a
    float-to-int p1, p1

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->scrollTo(II)V

    return v1

    .line 366
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    .line 367
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 368
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->isReCompute:Z

    .line 371
    :cond_c
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->upAnim()V

    return v1

    .line 279
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitX:F

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mInitY:F

    .line 281
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    .line 283
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_e

    .line 284
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 287
    :cond_e
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_f

    .line 288
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    :goto_3
    return v1
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

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView;->clearAnim()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v3, v2, v1

    .line 458
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 459
    new-instance v1, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XLeftSlideView$3;-><init>(Lcom/xiaopeng/xui/widget/XLeftSlideView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mAnimDuring:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setCardView(Landroidx/cardview/widget/CardView;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mCardView:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method public setStatusChangeLister(Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mStatusChangeLister:Lcom/xiaopeng/xui/widget/XLeftSlideView$OnDelViewStatusChangeLister;

    return-void
.end method

.method public setVerticalScrollableView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mVerticalScrollableView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XLeftSlideView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
