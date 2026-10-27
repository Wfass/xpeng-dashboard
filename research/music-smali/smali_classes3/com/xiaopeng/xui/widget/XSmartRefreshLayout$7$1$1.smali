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

    .line 3212
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3215
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 3218
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mFooterLocked:Z

    .line 3219
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-boolean p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz p1, :cond_1

    .line 3220
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->setNoMoreData(Z)Lamm;

    .line 3222
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mState:Lamo;

    sget-object v0, Lamo;->LoadFinish:Lamo;

    if-ne p1, v0, :cond_2

    .line 3223
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1$1;->this$2:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$7;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->notifyStateChanged(Lamo;)V

    :cond_2
    return-void
.end method
