.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoLoadMore(IIFZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

.field final synthetic val$animationOnly:Z

.field final synthetic val$dragRate:F

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;IFZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3465
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$duration:I

    iput p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$dragRate:F

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$animationOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3468
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    return-void

    .line 3469
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3470
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3471
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3472
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3475
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3476
    .local v0, "thisView":Landroid/view/View;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    .line 3477
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v1, v2}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3479
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$duration:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$dragRate:F

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$animationOnly:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->autoOpen(IFZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3483
    return-void

    .line 3486
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterTriggerRate:F

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    .line 3487
    .local v1, "height":F
    :goto_0
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$dragRate:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$dragRate:F

    mul-float/2addr v2, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$dragRate:F

    .line 3488
    .local v2, "dragHeight":F
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v6, v6, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    aput v6, v4, v5

    const/4 v5, 0x1

    float-to-int v6, v2

    neg-int v6, v6

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3489
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->val$duration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3490
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    sget v5, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v4, v5}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3491
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3499
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9$2;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9$2;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3505
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$9;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v3, v3, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 3506
    return-void
.end method
