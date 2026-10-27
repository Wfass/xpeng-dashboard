.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    .line 3212
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3216
    return-void

    .line 3218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 3219
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-boolean v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v0, :cond_1

    .line 3220
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smart/refresh/layout/api/RefreshLayout;

    .line 3222
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_2

    .line 3223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 3225
    :cond_2
    return-void
.end method
