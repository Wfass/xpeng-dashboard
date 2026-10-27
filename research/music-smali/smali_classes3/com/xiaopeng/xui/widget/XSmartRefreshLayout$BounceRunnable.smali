.class public Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BounceRunnable"
.end annotation


# instance fields
.field mFrame:I

.field mFrameDelay:I

.field mLastTime:J

.field mOffset:F

.field mSmoothDistance:I

.field mVelocity:F

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;FI)V
    .locals 3

    .line 1476
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1470
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    const/16 v0, 0xa

    .line 1471
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    const/4 v0, 0x0

    .line 1474
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    .line 1477
    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    .line 1478
    iput p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    .line 1479
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mLastTime:J

    .line 1480
    iget-object p3, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {p3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 1482
    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object p2, Lamo;->PullDownToRefresh:Lamo;

    invoke-interface {p1, p2}, Laml;->setState(Lamo;)Laml;

    goto :goto_0

    .line 1484
    :cond_0
    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object p2, Lamo;->PullUpToLoad:Lamo;

    invoke-interface {p1, p2}, Laml;->setState(Lamo;)Laml;

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1489
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    iget-boolean v0, v0, Lamo;->isFinishing:Z

    if-nez v0, :cond_5

    .line 1490
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1491
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    if-eqz v0, :cond_0

    .line 1492
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    .line 1494
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    .line 1497
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    .line 1499
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1500
    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 1501
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    mul-float/2addr v4, v2

    .line 1502
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1503
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mLastTime:J

    .line 1504
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    .line 1505
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1506
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1508
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v0, v0, Lamo;->isDragging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v0, v0, Lamo;->isHeader:Z

    if-eqz v0, :cond_3

    .line 1509
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v1, Lamo;->PullDownCanceled:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto :goto_1

    .line 1510
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v0, v0, Lamo;->isDragging:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lamo;

    iget-boolean v0, v0, Lamo;->isFooter:Z

    if-eqz v0, :cond_4

    .line 1511
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    sget-object v1, Lamo;->PullUpCanceled:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    .line 1513
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1514
    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 1517
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Lane;->a(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 1518
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    :cond_5
    :goto_2
    return-void
.end method
