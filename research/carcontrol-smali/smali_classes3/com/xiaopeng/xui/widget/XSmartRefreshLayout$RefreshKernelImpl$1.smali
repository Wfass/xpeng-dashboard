.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->startTwoLevel(Z)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;)V
    .locals 0

    .line 3704
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3707
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 3710
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smart/refresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lcom/scwang/smart/refresh/layout/api/RefreshKernel;

    return-void
.end method
