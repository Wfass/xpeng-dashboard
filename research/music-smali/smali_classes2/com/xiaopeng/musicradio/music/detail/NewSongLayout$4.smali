.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/common/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/a;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$4;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->access$300(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
