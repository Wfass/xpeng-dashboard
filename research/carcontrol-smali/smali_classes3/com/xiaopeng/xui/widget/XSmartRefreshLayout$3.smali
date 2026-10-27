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

    .line 1545
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1548
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1554
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1562
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1563
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez p1, :cond_1

    .line 1564
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 1565
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_2

    .line 1571
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$3;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-void
.end method
