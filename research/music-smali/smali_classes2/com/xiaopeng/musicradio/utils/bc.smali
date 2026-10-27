.class public Lcom/xiaopeng/musicradio/utils/bc;
.super Ljava/lang/Object;
.source "ProgramPlayUtil.java"


# direct methods
.method public static a()V
    .locals 3

    .line 40
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 41
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->play()V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 44
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Lass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 30
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbmt;->a(Lass;)V

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 62
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v2, v1

    .line 66
    :goto_1
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    move-object/from16 v9, p7

    .line 67
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 69
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    const/4 v0, 0x1

    move v8, v0

    move v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    move v8, v1

    move v10, v8

    .line 82
    :goto_3
    new-instance v11, Lbms;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 83
    invoke-static {v11}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    return-void
.end method

.method public static a(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 49
    new-instance v11, Lbms;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 50
    invoke-static {v11}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    return-void
.end method
