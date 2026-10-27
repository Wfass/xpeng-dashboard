.class public Lbmu;
.super Ljava/lang/Object;
.source "RxReadingModel.java"


# direct methods
.method public static a(JZII)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZII)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/CategoryAlbumListBean;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v6, Lbmu$1;

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbmu$1;-><init>(JZII)V

    return-object v6
.end method
