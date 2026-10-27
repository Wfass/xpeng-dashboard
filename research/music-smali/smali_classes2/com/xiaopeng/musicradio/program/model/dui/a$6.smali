.class Lcom/xiaopeng/musicradio/program/model/dui/a$6;
.super Ljava/lang/Object;
.source "DuiProgramMediaModel.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/model/dui/a;->a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;",
        "Lio/reactivex/ObservableSource<",
        "Landroid/util/Pair<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/model/dui/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/model/dui/a;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/model/dui/a$6;->a:Lcom/xiaopeng/musicradio/program/model/dui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Landroid/util/Pair<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;>;>;"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getMetadata()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;->getTracks()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const-class v1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 231
    new-instance v1, Lcom/xiaopeng/musicradio/program/model/dui/a$6$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/model/dui/a$6$1;-><init>(Lcom/xiaopeng/musicradio/program/model/dui/a$6;)V

    .line 233
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/model/dui/a$6$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 231
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, v2

    move-object v0, p1

    :goto_0
    if-eqz p1, :cond_8

    .line 236
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;

    move-result-object v2

    .line 244
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 246
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    sget-object v1, Lcom/xiaopeng/musicradio/common/f;->b:Ljava/lang/String;

    .line 250
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 252
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v5

    if-nez v5, :cond_6

    if-nez v2, :cond_5

    .line 254
    invoke-static {}, Lcom/xiaopeng/musicradio/program/model/dui/a;->n()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;)V

    goto :goto_3

    .line 256
    :cond_5
    new-instance v5, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;-><init>()V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;)V

    .line 257
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setId(J)V

    .line 258
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/XmArtistBean;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setLogo(Ljava/lang/String;)V

    .line 263
    :cond_6
    :goto_3
    invoke-static {v4, v1, v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 265
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 268
    :cond_7
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 237
    :cond_8
    :goto_4
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    check-cast p1, Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/model/dui/a$6;->a(Lcom/xiaopeng/musicradio/program/model/dui/ProgramListBean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
