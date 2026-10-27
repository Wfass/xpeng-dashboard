.class public abstract Lbbk;
.super Lbbc;
.source "MusicCollectPreloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbc<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Laxz;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lbbc;-><init>(Laxz;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIII)Lio/reactivex/Observable;
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
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIIIZI)V
    .locals 17

    move-object/from16 v8, p0

    .line 34
    new-instance v0, Lbbo;

    invoke-direct {v0}, Lbbo;-><init>()V

    iput-object v0, v8, Lbbk;->b:Lbbo;

    const-string v0, "AbsFindHandler"

    const-string v1, "onHandle: "

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v9, v8, Lbbk;->b:Lbbo;

    new-instance v16, Lbbk$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lbbk$1;-><init>(Lbbk;Lcom/xiaopeng/musicradio/bean/ListSignBean;ZIIII)V

    const/16 v13, 0xa

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p5

    move/from16 v15, p7

    invoke-virtual/range {v9 .. v16}, Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZLjava/util/List;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;III)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lbbk;->a:Laxz;

    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/ListSignBean;ZLjava/util/List;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "Z",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;IIII)V"
        }
    .end annotation

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "responseFirstPageData: size = "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p7

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " totalPage = "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p7, "AbsFindHandler"

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lbbk;->a:Laxz;

    move v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Laxz;->a(ZIIILjava/util/List;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
