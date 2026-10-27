.class Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;
.super Ljava/lang/Object;
.source "ReadHistoryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->d()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDatalist :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReadHistoryPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;Ljava/util/List;)Ljava/util/List;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;->a:Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_2
    new-instance v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
