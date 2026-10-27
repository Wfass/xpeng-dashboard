.class public Lbet;
.super Ljava/lang/Object;
.source "RxMusicModel.java"


# direct methods
.method public static a(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lbet$8;

    invoke-direct {v0, p0}, Lbet$8;-><init>(I)V

    return-object v0
.end method

.method public static a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Lbet$6;

    invoke-direct {v0, p0, p1}, Lbet$6;-><init>(II)V

    return-object v0
.end method

.method public static a(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Lbet$5;

    invoke-direct {v0, p0, p1, p2}, Lbet$5;-><init>(III)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lbet$14;

    invoke-direct {v0, p0, p1}, Lbet$14;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Lbet$4;

    invoke-direct {v0, p0, p1, p2}, Lbet$4;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lbet$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lbet$13;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;IIII)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v6, Lbet$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbet$1;-><init>(Ljava/lang/String;IIII)V

    return-object v6
.end method

.method public static a(Ljava/lang/String;IIIILjava/lang/String;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance p3, Lbet$12;

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbet$12;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object p3
.end method

.method public static b(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lbet$9;

    invoke-direct {v0, p0}, Lbet$9;-><init>(I)V

    return-object v0
.end method

.method public static b(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Lbet$7;

    invoke-direct {v0, p0, p1}, Lbet$7;-><init>(II)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Lbet$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lbet$2;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;IIII)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v6, Lbet$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbet$3;-><init>(Ljava/lang/String;IIII)V

    return-object v6
.end method

.method public static c(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lbet$10;

    invoke-direct {v0, p0}, Lbet$10;-><init>(I)V

    return-object v0
.end method

.method public static d(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lbet$11;

    invoke-direct {v0, p0}, Lbet$11;-><init>(I)V

    return-object v0
.end method
