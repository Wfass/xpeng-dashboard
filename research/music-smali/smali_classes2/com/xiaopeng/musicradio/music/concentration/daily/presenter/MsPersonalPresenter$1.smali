.class Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;
.super Lbkv;
.source "MsPersonalPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z

    .line 175
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->showErrorView(Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 142
    invoke-static {v2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->getData(Ljava/util/ArrayList;)V

    .line 149
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lbfm;->b(Ljava/util/List;I)V

    .line 150
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->b(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)I

    move-result v2

    invoke-virtual {v0, v2}, Lbfm;->e(I)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->j()V

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_6

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;Z)Z

    goto :goto_1

    .line 157
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ltz p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->getData(Ljava/util/ArrayList;)V

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->j()V

    :cond_4
    return-void

    .line 164
    :cond_5
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1, v0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;->showNoDataView(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
