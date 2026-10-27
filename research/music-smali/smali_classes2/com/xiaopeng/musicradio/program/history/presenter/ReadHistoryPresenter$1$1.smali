.class Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;
.super Ljava/lang/Object;
.source "ReadHistoryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/history/view/a;->showLoading()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/history/view/a;->refreshList(Ljava/util/List;)V

    :cond_1
    return-void
.end method
