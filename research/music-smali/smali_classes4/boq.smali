.class public Lboq;
.super Ljava/lang/Object;
.source "SongListUtils.java"


# direct methods
.method public static a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    new-instance p0, Lboq$1;

    invoke-direct {p0, p1}, Lboq$1;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
