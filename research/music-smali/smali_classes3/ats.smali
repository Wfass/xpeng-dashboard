.class public final Lats;
.super Ljava/lang/Object;
.source "CustomStat_DataLog.java"


# direct methods
.method public static a()V
    .locals 9

    .line 98
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 99
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_custom_album_import"

    const-string v3, "P00038"

    const-string v4, "B010"

    const/4 v7, 0x1

    const-string v8, ""

    .line 100
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "text"

    .line 62
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_custom_music_play"

    const-string v3, "P00038"

    const-string v4, "B006"

    const/4 v7, 0x1

    const-string v8, ""

    .line 64
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method
