.class public Laso;
.super Ljava/lang/Object;
.source "MsPlayOptHelper.java"


# direct methods
.method public static a(Ljava/lang/String;IIZLjava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;II)V"
        }
    .end annotation

    .line 12
    :try_start_0
    invoke-static {}, Lbij;->a()Lbij;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lbij;->a(Ljava/lang/String;IIZLjava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
