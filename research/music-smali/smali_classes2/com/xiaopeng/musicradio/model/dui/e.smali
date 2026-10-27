.class public Lcom/xiaopeng/musicradio/model/dui/e;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/g$a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "DuiMusicMediaModel"

    .line 91
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/model/dui/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/model/dui/MusicListBean;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;-><init>()V

    .line 387
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->setParams(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;)V

    .line 388
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->setListSign(Ljava/lang/String;)V

    .line 392
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->getListSign()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    sget-object v2, Lcom/xiaopeng/musicradio/model/dui/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->setListSign(Ljava/lang/String;)V

    .line 396
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 397
    new-instance v2, Lcom/xiaopeng/musicradio/model/dui/e$12;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/model/dui/e$12;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    .line 398
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/dui/e$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 397
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 403
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isCanPlay()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 405
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_3
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->setTracks(Ljava/util/List;)V

    .line 411
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V

    .line 413
    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/Observable;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;)Ljava/lang/String;
    .locals 4

    .line 418
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->getCategory()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->getKeyword()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1eb91e88

    if-eq v2, v3, :cond_2

    const v3, 0x255a7a48

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\u4eca\u65e5\u5934\u6761"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    const-string v2, "\u6bcf\u65e5\u4e09\u5341\u9996"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    :goto_2
    const-string p1, "DuiMusicMediaModel"

    goto :goto_3

    :cond_4
    const-string p1, "headspeech"

    goto :goto_3

    :cond_5
    const-string p1, "find_music_dayli"

    :goto_3
    return-object p1
.end method

.method private a(ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    .line 596
    invoke-direct {p0, p2, p1, p3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;ILio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 23

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchListPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DuiMusicMediaModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-ne v0, v2, :cond_1

    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 794
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-object/from16 v7, p0

    invoke-direct {v7, v5, v6, v3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v7, p0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v7, p0

    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 797
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v3

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v5

    .line 803
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 799
    invoke-static {v4, v3, v4, v5, v6}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getCollectList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getCollectList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v5

    .line 812
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 808
    invoke-static {v4, v3, v4, v5, v6}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    .line 815
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getRadioList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 816
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    .line 817
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v8

    .line 821
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getReadingAlbumList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v10

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getQuery()Ljava/lang/String;

    move-result-object v13

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v14

    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v12, ""

    .line 819
    invoke-static/range {v8 .. v15}, Lbry;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 828
    :cond_6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?voice_search_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 829
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 830
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getQQListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v4, "qqversion"

    .line 833
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&voice_list_version="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 835
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&voice_list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/search/fragment/home/search_result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getKeyword()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v19

    .line 841
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v2

    :cond_9
    move/from16 v21, v2

    const/16 v22, 0x1

    move-object/from16 v17, v0

    .line 840
    invoke-static/range {v16 .. v22}, Lbjp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;ILio/reactivex/disposables/CompositeDisposable;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 602
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getQQListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 604
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getNeteasListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 606
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getKugouListResult()Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "DuiMusicMediaModel"

    if-eqz v0, :cond_3

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQQPlayList() called with: data = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p3}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 612
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 613
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 614
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/xiaopeng/musicradio/model/dui/e$2;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean$SearchMusicListResult;I)V

    new-instance p2, Lcom/xiaopeng/musicradio/model/dui/e$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/model/dui/e$3;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    .line 615
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 612
    invoke-virtual {p3, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 708
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 709
    invoke-direct {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;I)V

    goto :goto_1

    :cond_4
    const-string p1, "no onPlayListOnly for qq"

    .line 711
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;I)V
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTtsPlayList() called with: data = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 718
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 719
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 720
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$4;

    invoke-direct {v0, p0, p3}, Lcom/xiaopeng/musicradio/model/dui/e$4;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;I)V

    new-instance p3, Lcom/xiaopeng/musicradio/model/dui/e$5;

    invoke-direct {p3, p0}, Lcom/xiaopeng/musicradio/model/dui/e$5;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    .line 721
    invoke-virtual {p1, v0, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 718
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/e;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/e;ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object p3

    .line 364
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 361
    invoke-static {v0, p3, p1, v1, p2}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, "0"

    .line 377
    :goto_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getIntentName()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;->getIntents()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;->getSlots()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-static {v0, p3, p1, v1, p2}, Lbry;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlay accountType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onPlay: not auth===="

    .line 104
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->e(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 110
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->playSub(I)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 114
    invoke-static {}, Layg;->a()Layg;

    move-result-object p1

    invoke-virtual {p1}, Layg;->c()V

    .line 115
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->d(I)V

    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 8

    .line 125
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "listsign_recommend_music"

    .line 126
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setCollectId(Ljava/lang/String;)V

    const-string v1, "new_music_radio"

    .line 128
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setTag(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$1;

    const/16 v5, 0x32

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/musicradio/model/dui/e$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;III)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/f;->a(Lass;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 97
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 98
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e;->c(I)V

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 160
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$7;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;I)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayMusic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicMediaModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "netease"

    .line 188
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 189
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->c(I)V

    goto :goto_0

    :cond_0
    const-string v0, "kugou"

    .line 190
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 191
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->c(I)V

    goto :goto_0

    :cond_1
    const-string v0, "qq"

    .line 192
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 193
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 152
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e;->a(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playMusicCollected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicMediaModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$8;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 5

    .line 242
    const-class v0, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;

    .line 243
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DuiMusicMediaModel"

    if-nez p1, :cond_1

    const-string p1, "onMusicListPlay: data is null"

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicListPlay() called with: data = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "speech"

    const-string v3, "search"

    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "click"

    .line 257
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "music"

    const-string v3, "voice"

    .line 259
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSearchType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "keyword"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {v0}, Lbrw;->b(Ljava/util/Map;)V

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    .line 265
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {v0}, Lbrw;->d(Ljava/util/Map;)V

    .line 268
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getListed()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 271
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 284
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 285
    invoke-static {}, Lbdk;->a()Lbdk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getKeyWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getExtData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lbdk;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    const-string p2, "?voice_search_type=1"

    .line 289
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&voice_list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 296
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getTracks()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    .line 298
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/search/fragment/home/search_result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/MusicListBean;->getKeyWord()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lbjp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_5
    invoke-virtual {p2}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 302
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$11;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/dui/e$11;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    .line 303
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 309
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 310
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$9;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/model/dui/e$9;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/model/dui/MusicListBean;)V

    new-instance p1, Lcom/xiaopeng/musicradio/model/dui/e$10;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/model/dui/e$10;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    .line 311
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 302
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 227
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DuiMusicMediaModel"

    const-string v1, "onPlayCollect: ========== "

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e;->b(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 6

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchListPlay, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuiMusicMediaModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    const-class v0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    if-nez v0, :cond_0

    const-string p1, "onSearchListPlay, duiSearchResultBean=null"

    .line 541
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 544
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->setListed(I)V

    const-string v2, "complexSearchRespV4"

    .line 546
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const-string v2, "complexSearchRespV3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v4

    .line 547
    :goto_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v2

    invoke-interface {v2}, Lbeg;->g()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getRadioList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getRadioList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 548
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSearchListPlay:onMusicAuthFail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 552
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 553
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_7

    .line 554
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSearchType()I

    move-result v2

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 582
    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getListed()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 583
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V

    goto :goto_2

    .line 585
    :cond_6
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/model/dui/e;->a(ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V

    goto :goto_2

    .line 555
    :cond_7
    :goto_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/model/dui/e$14;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/xiaopeng/musicradio/model/dui/e$14;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;ILio/reactivex/disposables/CompositeDisposable;)V

    invoke-interface {v2, v3}, Lbeg;->a(Lbdm$b;)V

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchListPlay accountType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbdm;->a(I)Lbeg;

    move-result-object v2

    invoke-interface {v2}, Lbeg;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 575
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getListed()I

    move-result v1

    if-nez v1, :cond_9

    .line 576
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/model/dui/e;->a(ILcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;Lio/reactivex/disposables/CompositeDisposable;)V

    goto :goto_2

    :cond_8
    const-string p1, "onSearchListPlay isMusicBinded false: "

    .line 579
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 436
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    const-string v1, "DuiMusicMediaModel"

    if-eqz v0, :cond_0

    const-string v0, "bt_isconnect"

    .line 437
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 439
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t()V

    .line 440
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->play()V

    goto :goto_0

    :cond_0
    const-string v0, "open_bt"

    .line 442
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 444
    invoke-static {}, Lbsd;->a()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 474
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 480
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-virtual {v1}, Layr;->b()Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 450
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 456
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 457
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    invoke-static {}, Layq;->a()Layq;

    move-result-object v1

    invoke-virtual {v1, v0}, Layq;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 4

    .line 516
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DuiMusicMediaModel"

    const-string v1, "onPlayDailySong: =========="

    .line 519
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bd;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/model/dui/e$13;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v0, v3}, Lcom/xiaopeng/musicradio/model/dui/e$13;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 762
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DuiMusicMediaModel"

    const-string v1, "onPersonalSong: =========="

    .line 765
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/e$6;-><init>(Lcom/xiaopeng/musicradio/model/dui/e;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
