.class public Lbms;
.super Lass;
.source "ReadingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbms$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass<",
        "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lbms$a;)V
    .locals 11

    .line 70
    iget-object v1, p1, Lbms$a;->a:Ljava/lang/String;

    iget v2, p1, Lbms$a;->j:I

    iget v3, p1, Lbms$a;->c:I

    iget v4, p1, Lbms$a;->d:I

    iget v5, p1, Lbms$a;->b:I

    iget-object v6, p1, Lbms$a;->e:Ljava/lang/String;

    iget-object v7, p1, Lbms$a;->i:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    iget-boolean v8, p1, Lbms$a;->h:Z

    iget-object v9, p1, Lbms$a;->f:Ljava/util/List;

    iget v10, p1, Lbms$a;->g:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    .line 59
    invoke-direct/range {v0 .. v9}, Lass;-><init>(Ljava/lang/String;IIIILjava/lang/String;ZLjava/util/List;I)V

    move-object/from16 v1, p7

    .line 60
    iput-object v1, v0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;IZLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    .line 65
    invoke-direct/range {v0 .. v11}, Lass;-><init>(Ljava/lang/String;IIIILjava/lang/String;ZLjava/util/List;IZLjava/lang/String;)V

    move-object/from16 v1, p7

    .line 66
    iput-object v1, v0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method

.method static synthetic a(Lbms;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lbms;->c:J

    return-wide v0
.end method

.method static synthetic a(Lbms;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lbms;->c:J

    return-wide p1
.end method

.method static synthetic a(Lbms;ZIILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->c(ZIILjava/lang/String;)V

    return-void
.end method

.method private a(ZIILjava/lang/String;)V
    .locals 10

    const-string v0, "ReadingMediaSource"

    const-string v1, "onOtherPageNewHeadTracksReqList:--------"

    .line 236
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-wide v3, p0, Lbms;->d:J

    new-instance v8, Lbms$1;

    invoke-direct {v8, p0, p1}, Lbms$1;-><init>(Lbms;Z)V

    const/4 v9, 0x0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method static synthetic b(Lbms;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lbms;->d:J

    return-wide v0
.end method

.method static synthetic b(Lbms;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lbms;->d:J

    return-wide p1
.end method

.method private b(ZIILjava/lang/String;)V
    .locals 0

    const-string p3, "ReadingMediaSource"

    const-string p4, "onNewHeadSpeechReqList: ==========="

    .line 267
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lbms;->z()Z

    .line 275
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object p3

    new-instance p4, Lbms$2;

    invoke-direct {p4, p0, p1, p2}, Lbms$2;-><init>(Lbms;ZI)V

    const/4 p1, 0x0

    invoke-virtual {p3, p4, p1}, Lbmv;->a(Lbkv;Z)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method static synthetic c(Lbms;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 0

    .line 42
    iget-object p0, p0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object p0
.end method

.method private c(ZIILjava/lang/String;)V
    .locals 10

    const/4 p4, 0x0

    .line 325
    invoke-virtual {p0, p4}, Lbms;->c(Z)V

    const-string v0, "ReadingMediaSource"

    const-string v1, "onSimpleHeadSpeechReqlist"

    .line 326
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v1

    invoke-virtual {v1}, Lbmr;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    new-instance v9, Lbms$3;

    invoke-direct {v9, p0, p1}, Lbms$3;-><init>(Lbms;Z)V

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JJIILbkv;)Lcom/lzy/okgo/adapter/Call;

    goto :goto_0

    :cond_0
    const-string p2, "onSimpleHeadSpeechReqlist HeadSpeechMgr.getInstance().getListData() not empty, use it!"

    .line 352
    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object p2

    invoke-virtual {p2}, Lbmr;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {v6, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 355
    invoke-virtual {p0, v6}, Lbms;->a(Ljava/util/List;)V

    .line 356
    invoke-virtual {p0, p4}, Lbms;->a(I)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 358
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lbms;->a(ZIIILjava/util/List;)V

    :goto_0
    return-void
.end method

.method private d(ZIILjava/lang/String;)V
    .locals 7

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeadSpeechReqList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadingMediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lbms;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lbms$4;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbms$4;-><init>(Lbms;IIZLjava/lang/String;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 477
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->c(ZIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private e(ZIILjava/lang/String;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move-object/from16 v7, p4

    .line 484
    invoke-virtual {p0}, Lbms;->z()Z

    move-result v2

    .line 485
    invoke-virtual {p0}, Lbms;->l()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    goto :goto_1

    .line 487
    :cond_1
    :goto_0
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v2

    iget-object v3, v0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v2

    .line 489
    :goto_1
    invoke-virtual {p0}, Lbms;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "reading_album_onkey_"

    .line 490
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    invoke-static {}, Larg;->a()Larg;

    move-result-object v3

    const-string v4, "key_cache_one_album_record"

    invoke-virtual {v3, v4}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    const-class v4, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    :cond_2
    const-string v3, "ReadingMediaSource"

    if-nez v2, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 543
    invoke-virtual {p0, v2}, Lbms;->c(Z)V

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReandingTracksReqList2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object v3, v0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    new-instance v8, Lbms$6;

    move v5, p2

    invoke-direct {v8, p0, p1, p2}, Lbms$6;-><init>(Lbms;ZI)V

    .line 564
    invoke-virtual {p0}, Lbms;->m()Ljava/lang/String;

    move-result-object v9

    move-object v1, v2

    move-wide v2, v3

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move-object v8, v9

    .line 546
    invoke-virtual/range {v1 .. v8}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    goto :goto_4

    :cond_4
    :goto_2
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_5

    .line 499
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v5

    :cond_5
    if-eqz v4, :cond_6

    .line 502
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getTrackId()J

    move-result-wide v4

    goto :goto_3

    :cond_6
    move-wide v4, v5

    .line 505
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReandingTracksReqList1: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object v3, v0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v8

    new-instance v10, Lbms$5;

    invoke-direct {v10, p0, v4, v5, p1}, Lbms$5;-><init>(Lbms;JZ)V

    .line 540
    invoke-virtual {p0}, Lbms;->m()Ljava/lang/String;

    move-result-object v11

    move-object v1, v2

    move-wide v2, v8

    move v6, p3

    move-object/from16 v7, p4

    move-object v8, v10

    move-object v9, v11

    .line 506
    invoke-virtual/range {v1 .. v9}, Lbmv;->a(JJILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    :goto_4
    return-void
.end method


# virtual methods
.method public J()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lbms;->c:J

    return-wide v0
.end method

.method public K()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lbms;->d:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lbms;->c:J

    return-void
.end method

.method public a(Lass;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lass;->a(Lass;)V

    if-eqz p1, :cond_0

    .line 103
    instance-of v0, p1, Lbms;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lbms;

    iget-object v0, p1, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    iput-object v0, p0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 105
    iget-object p1, p1, Lbms;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    iput-object p1, p0, Lbms;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    :cond_0
    return-void
.end method

.method public a(ZIILjava/lang/String;Z)V
    .locals 3

    .line 214
    invoke-virtual {p0}, Lbms;->b()Ljava/lang/String;

    move-result-object p5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReqList page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pagesize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadingMediaSource"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headspeech"

    .line 216
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->d(ZIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "reading_album_"

    .line 218
    invoke-virtual {p5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object p5, p0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-nez p5, :cond_1

    const/4 p2, -0x1

    const-string p3, ""

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lbms;->a(ZILjava/lang/String;)V

    const-string p1, "error, mAlbumBean == null"

    .line 221
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->e(ZIILjava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_4

    const/4 p5, 0x1

    if-ne p2, p5, :cond_3

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->b(ZIILjava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lbms;->a(ZIILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lbms;->d:J

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadingMediaSource{mAlbumBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbms;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbms;->b:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbms;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRelativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbms;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-super {p0}, Lass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 2

    .line 81
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbue$a;->program_mediasource_error_hint:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
