.class Lcom/xiaopeng/musicradio/model/dui/e$9;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;)V
    .locals 8

    .line 314
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5faa\u73af"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSearchType()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSearchType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 318
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    .line 324
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    goto :goto_2

    .line 329
    :cond_3
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    move v2, v3

    .line 331
    :goto_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 332
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getQuery()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/dui/e$9;->a:Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v3, v5, v6}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 334
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 335
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 336
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayBy(I)V

    .line 337
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_4

    .line 339
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 340
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayBy(I)V

    goto :goto_3

    .line 342
    :cond_5
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$9;->a(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;)V

    return-void
.end method
