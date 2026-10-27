.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->autoRefresh(IIFZ)Z
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

    .line 3364
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$duration:I

    iput p3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$dragRate:F

    iput-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$animationOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3367
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    return-void

    .line 3368
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 3369
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3370
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3371
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3374
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 3375
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLastTouchX:F

    .line 3376
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    .line 3378
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshComponent;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$duration:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$dragRate:F

    iget-boolean v3, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$animationOnly:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/scwang/smart/refresh/layout/api/RefreshComponent;->autoOpen(IFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3385
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderTriggerRate:F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mHeaderHeight:I

    int-to-float v0, v0

    .line 3386
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$dragRate:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    mul-float/2addr v1, v0

    .line 3387
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    aput v4, v2, v3

    const/4 v3, 0x1

    float-to-int v1, v1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3388
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->val$duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3389
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smart/refresh/layout/util/SmartUtil;

    sget v2, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v1, v2}, Lcom/scwang/smart/refresh/layout/util/SmartUtil;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3390
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3398
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$2;-><init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3404
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
