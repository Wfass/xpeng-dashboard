.class public Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;
.super Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;
.source "MultiDeleteHistoryPresenter.java"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c()V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/history/view/a;->refreshAllItems()V

    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
