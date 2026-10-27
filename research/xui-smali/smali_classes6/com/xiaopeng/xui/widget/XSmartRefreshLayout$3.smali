.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    .line 1545
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1548
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 1550
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1554
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1560
    return-void

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1563
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_2

    .line 1571
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 1573
    :cond_2
    :goto_0
    return-void
.end method
