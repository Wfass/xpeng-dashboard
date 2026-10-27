.class public Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "NewSongPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;",
        ">;",
        "Laxy$a;",
        "Laxy$b;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 2

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e:Z

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 141
    invoke-static {v0}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->getData(Ljava/util/ArrayList;)V

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->j()V

    goto :goto_1

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, v1, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->getData(Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->j()V

    :cond_3
    return-void

    .line 158
    :cond_4
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Laxy;->a(Laxy$a;Z)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->showNoDataView(Ljava/lang/String;)V

    .line 162
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "NewSongPresenter"

    const-string v0, "Daily--onDataFetch"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected c()V
    .locals 3

    .line 113
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lasp;->a(ILbkv;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e:Z

    .line 128
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->showErrorView(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "NewSongPresenter"

    const-string v1, "playDailyMusic"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->showLoadingView()V

    :cond_1
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e:Z

    .line 108
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "NewSongPresenter"

    const-string v1, "reloadDataplayDailyMusic"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 190
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "NewSongPresenter"

    const-string v1, "Daily--onErrorRetry"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 56
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "NewSongPresenter"

    const-string v0, "onDestroy"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "NewSongPresenter"

    const-string v0, "onMusicBinded: "

    .line 200
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_3

    const-string p1, "NewSongPresenter"

    const-string v0, "onResume"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->b()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "firstplayDailyMusic"

    .line 83
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->c:Ljava/lang/String;

    const-string v0, "uid changeplayDailyMusic"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void

    .line 85
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;->getData(Ljava/util/ArrayList;)V

    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->j()V

    return-void

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void
.end method
