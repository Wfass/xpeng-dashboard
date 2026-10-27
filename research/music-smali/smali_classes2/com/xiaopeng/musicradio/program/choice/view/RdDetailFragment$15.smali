.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;
.super Lcom/lcodecore/tkrefreshlayout/g;
.source "RdDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 502
    invoke-super {p0, p1}, Lcom/lcodecore/tkrefreshlayout/g;->onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Z)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$15;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    :goto_0
    return-void
.end method
