.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;
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

    .line 447
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "RdDetailFragment"

    const-string v0, "onClick: playall click"

    .line 450
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 452
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$11;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->playAll()V

    :goto_0
    return-void
.end method
