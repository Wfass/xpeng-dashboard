.class Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->autoLoadMore(IIFZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

.field final synthetic val$animationOnly:Z

.field final synthetic val$dragRate:F

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;IFZ)V
    .locals 0

    .line 3428
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$duration:I

    iput p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$dragRate:F

    iput-boolean p4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$animationOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3431
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    return-void

    .line 3432
    :cond_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3433
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3434
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3435
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3438
    :cond_1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 3439
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mLastTouchX:F

    .line 3440
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3442
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$duration:I

    iget v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$dragRate:F

    iget-boolean v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$animationOnly:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->autoOpen(IFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3449
    :cond_2
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v0, v0

    .line 3450
    :goto_0
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$dragRate:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    mul-float/2addr v1, v0

    .line 3451
    :cond_4
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    aput v4, v2, v3

    const/4 v3, 0x1

    float-to-int v1, v1

    neg-int v1, v1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3452
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->val$duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3453
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    sget v2, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v1, v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3454
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$1;

    invoke-direct {v1, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$1;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3462
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;

    invoke-direct {v1, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9$2;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3468
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
