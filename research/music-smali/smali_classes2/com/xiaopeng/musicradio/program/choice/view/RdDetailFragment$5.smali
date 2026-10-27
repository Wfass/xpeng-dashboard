.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 653
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 656
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 657
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 658
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 659
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    goto :goto_0

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$5;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j()V

    :cond_2
    :goto_0
    return-void
.end method
