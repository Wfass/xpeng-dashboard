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
    .locals 4
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;
    .param p2, "velocity"    # F
    .param p3, "smoothDistance"    # I

    .line 1476
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1470
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrame:I

    .line 1471
    const/16 v0, 0xa

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    .line 1474
    const/4 v0, 0x0

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
    iget-object v1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1482
    iget-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1484
    :cond_0
    iget-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1486
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1489
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFinishing:Z

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
    .local v0, "now":J
    iget-wide v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 1501
    .local v2, "t":F
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mVelocity:F

    mul-float/2addr v4, v2

    .line 1502
    .local v4, "velocity":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_2

    .line 1503
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mLastTime:J

    .line 1504
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    .line 1505
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mOffset:F

    invoke-virtual {v3, v5}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1506
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v5, v5

    invoke-virtual {v3, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1508
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v3, :cond_3

    .line 1509
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1510
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v3, :cond_4

    .line 1511
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v3, v5}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 1513
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1514
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 1517
    const/16 v3, 0xa

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v5, v5, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->px2dp(I)F

    move-result v5

    float-to-int v5, v5

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v3, v5

    .line 1518
    .local v3, "duration":I
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$BounceRunnable;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v8, v8, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 1522
    .end local v0    # "now":J
    .end local v2    # "t":F
    .end local v3    # "duration":I
    .end local v4    # "velocity":F
    :cond_5
    :goto_2
    return-void
.end method
