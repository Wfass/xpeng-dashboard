.class Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;
.super Ljava/lang/Object;
.source "XSmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->moveSpinnerInfinitely(F)V
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

    .line 1780
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lamv;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mLoadMoreListener:Lamv;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {v0, v1}, Lamv;->a(Lamm;)V

    goto :goto_0

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-nez v0, :cond_1

    .line 1786
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->finishLoadMore(I)Lamm;

    .line 1788
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;->mOnMultiListener:Lamw;

    if-eqz v0, :cond_2

    .line 1790
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSmartRefreshLayout$5;->this$0:Lcom/xiaopeng/xui/widget/XSmartRefreshLayout;

    invoke-interface {v0, v1}, Lamv;->a(Lamm;)V

    :cond_2
    return-void
.end method
