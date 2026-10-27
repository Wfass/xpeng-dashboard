.class public Lcom/xiaopeng/musicradio/service/MusicMineService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "MusicMineService.java"

# interfaces
.implements Lbfc;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicMineService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p7}, Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lbff;)V
    .locals 0

    .line 643
    invoke-static {p1, p3, p2}, Lcom/xiaopeng/musicradio/utils/bd;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbij;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lbff;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p2

    move/from16 v9, p4

    move-object/from16 v2, p5

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playInternal:listSign="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",page="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",pageSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",totalPage = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",target = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MusicMineService"

    invoke-static {v5, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v6, 0x2

    const-string v7, ",playState="

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_4

    .line 564
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 567
    invoke-virtual {v12, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 568
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v12

    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "playCurrent:playing:target="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v12, v11, :cond_1

    if-ne v12, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v12, v1, :cond_2

    move v10, v11

    goto :goto_1

    .line 571
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    return-void

    .line 578
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v10, :cond_3

    .line 579
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto/16 :goto_4

    .line 581
    :cond_3
    new-instance v10, Lcom/xiaopeng/musicradio/service/MusicMineService$4;

    invoke-interface/range {p1 .. p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/musicradio/service/MusicMineService$4;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/String;IILjava/util/List;ILbff;)V

    .line 593
    invoke-virtual {v10, v9}, Laxz;->b(I)V

    .line 594
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    goto/16 :goto_4

    .line 598
    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 599
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 600
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "play:played:listSign="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v0, v11, :cond_6

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_7

    .line 605
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_3

    .line 602
    :cond_6
    :goto_2
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_3

    :cond_7
    move v10, v11

    :goto_3
    if-eqz v10, :cond_9

    if-eqz p7, :cond_8

    .line 611
    new-instance v10, Lcom/xiaopeng/musicradio/service/MusicMineService$5;

    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/musicradio/utils/bl;->a(Ljava/util/Collection;)I

    move-result v6

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p3

    move/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/musicradio/service/MusicMineService$5;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/String;IILjava/util/List;ILbff;)V

    .line 623
    invoke-virtual {v10, v9}, Laxz;->b(I)V

    .line 624
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    goto :goto_4

    .line 626
    :cond_8
    new-instance v6, Laxz;

    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/musicradio/utils/bl;->a(Ljava/util/Collection;)I

    move-result v5

    move-object v0, v6

    move-object/from16 v1, p5

    move/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Ljava/lang/String;IILjava/util/List;I)V

    .line 627
    invoke-virtual {v6, v9}, Laxz;->b(I)V

    .line 628
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public addDetailPlayList(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public addPlayList(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public checkoutDataBlue()V
    .locals 0

    return-void
.end method

.method public checkoutDataCollect()V
    .locals 0

    return-void
.end method

.method public deleteDetailPlayList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public deletePlayList(JI)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JI)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public editPlayList(JLjava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public fetchCollectedAlbum()V
    .locals 2

    .line 740
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 741
    invoke-static {}, Layp;->a()Layp;

    move-result-object v1

    invoke-virtual {v1, v0}, Layp;->a(I)Layo;

    move-result-object v0

    invoke-virtual {v0}, Layo;->g()V

    return-void
.end method

.method public fetchCollectedAlbum(I)V
    .locals 2

    .line 746
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 747
    invoke-static {}, Layp;->a()Layp;

    move-result-object v1

    invoke-virtual {v1, v0}, Layp;->a(I)Layo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Layo;->a(IZ)V

    return-void
.end method

.method public fetchCustomAlbum()V
    .locals 3

    .line 752
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 753
    invoke-static {}, Layp;->a()Layp;

    move-result-object v1

    invoke-virtual {v1, v0}, Layp;->a(I)Layo;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Layo;->a(IZ)V

    return-void
.end method

.method public fetchCustomAlbumIfRequire()V
    .locals 0

    .line 758
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/service/MusicMineService;->fetchCustomAlbum()V

    return-void
.end method

.method public getAlbumMusicHashList(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlueMusicList(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 287
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getCollectedAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 179
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 180
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 181
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->c()Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getCollectedAlbumList"

    .line 182
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 185
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$8;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getCollectedMusicList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService;->getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollectedMusicList(Ljava/lang/Object;ZI)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ZI)TT;"
        }
    .end annotation

    .line 90
    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/musicradio/datalist/f;

    .line 91
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    .line 92
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    const-string v1, "getCollectedMusicList"

    if-nez v0, :cond_0

    .line 93
    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v0, 0x4

    const/4 v3, 0x1

    if-ne p3, v0, :cond_1

    .line 97
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object p2

    invoke-virtual {p2, p3}, Lbaf;->a(I)Lbae;

    move-result-object p2

    const/16 p3, 0x32

    invoke-virtual {p2, p3, v3}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    const/4 p2, 0x1

    const/4 v3, 0x1

    const-string v5, "getCollectedMusicList"

    move-object v0, v2

    move v2, p2

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1

    .line 105
    :cond_1
    iget v0, v2, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    if-ne v0, v3, :cond_2

    .line 106
    new-instance p2, Lcom/xiaopeng/musicradio/service/MusicMineService$1;

    invoke-direct {p2, p0, p3, v2, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$1;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;ILcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {p2}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p2, "MusicMineService"

    const-string p3, "getCollectedMusicList:Network"

    .line 122
    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string p3, ""

    .line 123
    invoke-static {v2, p2, p3, v1}, Lcom/xiaopeng/musicradio/datalist/e;->a(Lcom/xiaopeng/musicradio/datalist/f;ILjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_3
    iget v6, v2, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    iget v7, v2, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    new-instance v8, Lcom/xiaopeng/musicradio/service/MusicMineService$7;

    move-object v0, v8

    move-object v1, p0

    move v3, p3

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/service/MusicMineService$7;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;IZLandroidx/lifecycle/r;)V

    invoke-static {v6, v7, p3, v8}, Layx;->a(IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    :goto_0
    return-object p1
.end method

.method public getDetailPlayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 763
    check-cast p2, Lcom/xiaopeng/musicradio/datalist/f;

    .line 764
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 765
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->c()Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "getCollectedMusicList"

    .line 766
    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 769
    :cond_0
    iget v1, p2, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    iget v2, p2, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    new-instance v3, Lcom/xiaopeng/musicradio/service/MusicMineService$6;

    invoke-direct {v3, p0, p2, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$6;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {p1, v1, v2, v3}, Layx;->a(Ljava/lang/String;IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-object v0
.end method

.method public getHistoryAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 231
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 232
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 233
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->c()Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getHistoryAlbumList"

    .line 234
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$10;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getHistoryMusicList(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 208
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    .line 209
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1

    .line 213
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/service/MusicMineService$9;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/service/MusicMineService$9;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Landroidx/lifecycle/r;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public getListSign(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 650
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_0

    .line 651
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bd;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 652
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 653
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;

    if-eqz v0, :cond_1

    .line 654
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;

    .line 655
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MinePlayListBean$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bd;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 657
    :cond_1
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    if-eqz v0, :cond_2

    .line 658
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 659
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumType;->revertType(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/utils/bd;->c(Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 660
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 661
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 662
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMobileAlbumList(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 252
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPlayState()I
    .locals 1

    .line 674
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    return v0
.end method

.method public getPlayingMusic()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 669
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserAlbumList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 260
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 261
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 262
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->c()Lbeg;

    move-result-object v1

    invoke-interface {v1}, Lbeg;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getUserAlbumList"

    .line 263
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 266
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$11;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public isCollectedAlbum(Ljava/lang/Object;)Z
    .locals 1

    .line 841
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_0

    .line 842
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    invoke-virtual {v0}, Lazz;->b()Lazy;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lazy;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 843
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 844
    invoke-static {}, Lazz;->a()Lazz;

    move-result-object v0

    invoke-virtual {v0}, Lazz;->b()Lazy;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lazy;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isCollectedMusic(Ljava/lang/Object;)Z
    .locals 1

    .line 294
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_0

    .line 295
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 296
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isListSignPlayed(Ljava/lang/String;)Z
    .locals 2

    .line 488
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNewMatchedBlue(Ljava/lang/Object;)Z
    .locals 4

    .line 826
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 827
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 828
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 829
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    .line 830
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 832
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Ljava/lang/String;)V

    return v3

    :cond_1
    return v1
.end method

.method public pause()V
    .locals 1

    .line 414
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 409
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    return-void
.end method

.method public play(Ljava/lang/Object;Lbff;)V
    .locals 9

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play(callback):target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "play(callback):play skipped"

    .line 500
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->E()V

    return-void

    .line 504
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_3

    .line 505
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 506
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "listsign_local_rm_music"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    sget p1, Lbub$a;->dudition_title:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "2000"

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/bd;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object p1

    .line 508
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    goto/16 :goto_0

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getVersion()I

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/service/MusicMineService$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/service/MusicMineService$3;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Lbff;)V

    invoke-virtual {v0, v1, v2}, Lbev;->e(Ljava/lang/String;Lbkv;)V

    goto :goto_0

    .line 541
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bd;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 542
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V

    .line 543
    invoke-static {}, Lbak;->a()Lbak;

    move-result-object p2

    invoke-virtual {p2}, Lbak;->b()Lbaj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    goto :goto_0

    .line 546
    :cond_3
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    if-eqz v0, :cond_4

    .line 547
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    .line 548
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumType;->revertType(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lbff;)V

    goto :goto_0

    .line 549
    :cond_4
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    if-eqz v0, :cond_5

    .line 550
    check-cast p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;

    .line 551
    iget-object v1, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->targetList:Ljava/util/List;

    iget-object v2, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->target:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget v3, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->page:I

    iget v4, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->totalPage:I

    iget-object v5, p1, Lcom/xiaopeng/musicradio/bean/MusicListPlayReq;->listSign:Ljava/lang/String;

    const/16 v6, 0x32

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/musicradio/service/MusicMineService;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IILjava/lang/String;ILbff;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public play(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play(targetList):target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",listSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "play:play skipped"

    .line 426
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_0
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/service/MusicMineService;->playCurrentInternal(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    return-void
.end method

.method public play(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 419
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public playCurrentInternal(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 433
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playCurrent:playing:target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",playState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MusicMineService"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 440
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 447
    :goto_1
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 448
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_2

    .line 450
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public playMusicInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 458
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 463
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 475
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    goto :goto_0

    .line 478
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 483
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 466
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/service/MusicMineService;->isListSignPlayed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->pause()V

    goto :goto_2

    .line 469
    :cond_5
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    :goto_3
    const-string p1, "play:play skipped"

    .line 459
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeBlueMusic(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeHistoryAlbum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeHistoryAlbum:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 379
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$2;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public removeHistoryMusic(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeHistoryMusic:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 358
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$14;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public removeImportAlbum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeImportAlbum:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMineService"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    new-instance p1, Landroidx/lifecycle/r;

    invoke-direct {p1}, Landroidx/lifecycle/r;-><init>()V

    const/4 v0, 0x0

    .line 403
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public setCollectedAlbum(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCollectedAlbum:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",collect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 332
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$13;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$13;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public setCollectedMusic(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCollectedMusic:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",collect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 305
    new-instance v1, Lcom/xiaopeng/musicradio/service/MusicMineService$12;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/service/MusicMineService$12;-><init>(Lcom/xiaopeng/musicradio/service/MusicMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public startDetail(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDetail:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fromSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    instance-of v0, p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_4

    .line 681
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 682
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_rank_music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankType()I

    move-result v5

    const/4 v6, 0x2

    move-object v1, p1

    .line 684
    invoke-static/range {v1 .. v6}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 686
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listsign_recommend_music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 687
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-static {p1}, Lbjp;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    const-string v1, "history"

    .line 693
    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :cond_2
    move v7, v0

    .line 696
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getVersion()I

    move-result v8

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0

    :cond_3
    const-wide/16 p2, 0x0

    :goto_0
    move-wide v10, p2

    move-object v1, p1

    .line 696
    invoke-static/range {v1 .. v11}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;J)V

    :cond_4
    :goto_1
    return-void
.end method
