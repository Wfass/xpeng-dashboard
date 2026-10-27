.class public Lbbd;
.super Lbbk;
.source "AlbumHandlerV2.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lbbk;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIII)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "ZIII)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3, p5}, Lbet;->a(Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected b()I
    .locals 1

    .line 24
    invoke-super {p0}, Lbbk;->b()I

    move-result v0

    return v0
.end method
