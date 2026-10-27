.class public Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "ReadHistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/history/view/a;",
        ">;"
    }
.end annotation


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

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;I)V
    .locals 2

    .line 94
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbmn;->a(J)V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 2

    .line 81
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/az;->b(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    return-void
.end method

.method public dealDownloadProgram(Lblv$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/history/view/a;->refreshAllItems()V

    :cond_0
    return-void
.end method

.method public dealReadLove(Lasj$x;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 119
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {p1}, Lasj$x;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/a;->refreshItem(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "ReadHistoryPresenter"

    const-string v1, "loadData"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 41
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadProgramEvent(Lblv$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgramEvent event.isSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lblv$a;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReadHistoryPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->f()V

    return-void
.end method

.method public onHistoryChanged(Lasj$v;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->f()V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/presenter/ReadHistoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/history/view/a;->refreshAllItems()V

    :cond_0
    return-void
.end method
