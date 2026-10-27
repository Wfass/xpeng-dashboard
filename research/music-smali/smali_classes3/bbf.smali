.class public Lbbf;
.super Lbbk;
.source "CollectHandler.java"


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lbbk;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIII)Lio/reactivex/Observable;
    .locals 6
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

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getIsUserCollect()I

    move-result v3

    const-string v5, "CollectHandler"

    move v1, p3

    move v2, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lbet;->a(Ljava/lang/String;IIIILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
