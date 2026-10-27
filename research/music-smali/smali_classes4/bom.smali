.class public final Lbom;
.super Ljava/lang/Object;
.source "SearchStat_DataLog.java"


# direct methods
.method public static a()V
    .locals 9

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_mix"

    const-string v3, "P00039"

    const-string v4, "B026"

    const/4 v7, 0x1

    const-string v8, ""

    .line 18
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(I)V
    .locals 9

    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_from"

    const-string v3, "P10352"

    const-string v4, "B001"

    const/4 v7, 0x1

    const-string v8, ""

    .line 73
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 9

    .line 140
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 141
    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_collect_click"

    const-string v3, "P10377"

    const-string v4, "B001"

    const/4 v7, 0x1

    const-string v8, ""

    .line 144
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .line 161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 162
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_program_play"

    const-string v3, "P00040"

    const-string v4, "B005"

    const/4 v7, 0x1

    const-string v8, ""

    .line 164
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 9

    .line 25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_song"

    const-string v3, "P00039"

    const-string v4, "B027"

    const/4 v7, 0x1

    const-string v8, ""

    .line 27
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(I)V
    .locals 9

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_history"

    const-string v3, "P10362"

    const-string v4, "B001"

    const/4 v7, 0x1

    const-string v8, ""

    .line 83
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 9

    .line 191
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 192
    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_singer_click"

    const-string v3, "P10352"

    const-string v4, "B008"

    const/4 v7, 0x1

    const-string v8, ""

    .line 195
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .line 171
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 172
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_radio_play"

    const-string v3, "P10352"

    const-string v4, "B007"

    const/4 v7, 0x1

    const-string v8, ""

    .line 174
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 9

    .line 34
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_collection"

    const-string v3, "P00039"

    const-string v4, "B028"

    const/4 v7, 0x1

    const-string v8, ""

    .line 36
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c(I)V
    .locals 9

    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_tab_click"

    const-string v3, "P10352"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 103
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 9

    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_songlist"

    const-string v3, "P00039"

    const-string v4, "B029"

    const/4 v7, 0x1

    const-string v8, ""

    .line 45
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d(I)V
    .locals 9

    .line 110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_music_playall"

    const-string v3, "P10352"

    const-string v4, "B003"

    const/4 v7, 0x1

    const-string v8, ""

    .line 113
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 9

    .line 52
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 53
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_program"

    const-string v3, "P00039"

    const-string v4, "B030"

    const/4 v7, 0x1

    const-string v8, ""

    .line 54
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static e(I)V
    .locals 9

    .line 120
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_musiclist_play"

    const-string v3, "P10352"

    const-string v4, "B004"

    const/4 v7, 0x1

    const-string v8, ""

    .line 123
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 9

    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_netradio"

    const-string v3, "P00039"

    const-string v4, "B031"

    const/4 v7, 0x1

    const-string v8, ""

    .line 63
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static f(I)V
    .locals 9

    .line 130
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_music_more"

    const-string v3, "P10352"

    const-string v4, "B005"

    const/4 v7, 0x1

    const-string v8, ""

    .line 133
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static g(I)V
    .locals 9

    .line 151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_collect_more"

    const-string v3, "P00036"

    const-string v4, "B015"

    const/4 v7, 0x1

    const-string v8, ""

    .line 154
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static h(I)V
    .locals 9

    .line 181
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_collect_play"

    const-string v3, "P10377"

    const-string v4, "B004"

    const/4 v7, 0x1

    const-string v8, ""

    .line 184
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static i(I)V
    .locals 9

    .line 202
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_singer_more"

    const-string v3, "P10352"

    const-string v4, "B010"

    const/4 v7, 0x1

    const-string v8, ""

    .line 205
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static j(I)V
    .locals 9

    .line 212
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "source"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SearchStat"

    const-string v1, ""

    const-string v2, "search_singer_play"

    const-string v3, "P10352"

    const-string v4, "B009"

    const/4 v7, 0x1

    const-string v8, ""

    .line 215
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method
