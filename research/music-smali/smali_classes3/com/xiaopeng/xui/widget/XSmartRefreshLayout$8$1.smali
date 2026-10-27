.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;)V
    .locals 0

    .line 3390
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 3393
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mRefreshHeader:Lamh;

    if-eqz v0, :cond_0

    .line 3394
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8$1;->this$1:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mKernel:Laml;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Laml;->moveSpinner(IZ)Laml;

    :cond_0
    return-void
.end method
