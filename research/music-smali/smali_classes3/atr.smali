.class public final Latr;
.super Ljava/lang/Object;
.source "CollectStat_DataLog.java"


# direct methods
.method public static a()V
    .locals 9

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect"

    const-string v3, "P00031"

    const-string v4, "B001"

    const/4 v7, 0x0

    const-string v8, ""

    .line 18
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(I)V
    .locals 9

    .line 71
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_tab_click"

    const-string v3, "P10359"

    const-string v4, "B005"

    const/4 v7, 0x0

    const-string v8, ""

    .line 74
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 9

    .line 121
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 122
    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_collect_play"

    const-string v3, "P10363"

    const-string v4, "B002"

    const/4 v7, 0x0

    const-string v8, ""

    .line 125
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 9

    .line 34
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_album"

    const-string v3, "P00031"

    const-string v4, "B003"

    const/4 v7, 0x0

    const-string v8, ""

    .line 36
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(I)V
    .locals 9

    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_play"

    const-string v3, "P10363"

    const-string v4, "B001"

    const/4 v7, 0x0

    const-string v8, ""

    .line 84
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 9

    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_program"

    const-string v3, "P00031"

    const-string v4, "B004"

    const/4 v7, 0x0

    const-string v8, ""

    .line 45
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c(I)V
    .locals 9

    .line 91
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_playll"

    const-string v3, "P10363"

    const-string v4, "B009"

    const/4 v7, 0x0

    const-string v8, ""

    .line 94
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 9

    .line 52
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_netradio"

    const-string v3, "P00031"

    const-string v4, "B005"

    const/4 v7, 0x0

    const-string v8, ""

    .line 54
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d(I)V
    .locals 9

    .line 101
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_more"

    const-string v3, "P00031"

    const-string v4, "B002"

    const/4 v7, 0x0

    const-string v8, ""

    .line 104
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static e(I)V
    .locals 9

    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_detail_manager"

    const-string v3, "P10363"

    const-string v4, "B010"

    const/4 v7, 0x0

    const-string v8, ""

    .line 114
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static f(I)V
    .locals 9

    .line 132
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_collect_more"

    const-string v3, "P00031"

    const-string v4, "B003"

    const/4 v7, 0x0

    const-string v8, ""

    .line 135
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static g(I)V
    .locals 9

    .line 142
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "MineStat"

    const-string v1, ""

    const-string v2, "music_mine_collect_collect_detail_manager"

    const-string v3, "P10363"

    const-string v4, "B011"

    const/4 v7, 0x0

    const-string v8, ""

    .line 145
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method
