.class public final Lbkg;
.super Ljava/lang/Object;
.source "NetRadioStat_DataLog.java"


# direct methods
.method public static a()V
    .locals 9

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "music_netradio_local_play"

    const-string v3, "P00037"

    const-string v4, "B022"

    const/4 v7, 0x1

    const-string v8, ""

    .line 18
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(I)V
    .locals 9

    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_tab_click"

    const-string v3, "P10384"

    const-string v4, "B005"

    const/4 v7, 0x1

    const-string v8, ""

    .line 64
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .line 71
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 72
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_play"

    const-string v3, "P00037"

    const-string v4, "B022"

    const/4 v7, 0x1

    const-string v8, ""

    .line 74
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

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "music_netradio_more"

    const-string v3, "P00037"

    const-string v4, "B023"

    const/4 v7, 0x1

    const-string v8, ""

    .line 27
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 91
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_all_tab_click"

    const-string v3, "P00037"

    const-string v4, "B024"

    const/4 v7, 0x1

    const-string v8, ""

    .line 93
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

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "music_netradio_tab"

    const-string v3, "P00037"

    const-string v4, "B024"

    const/4 v7, 0x1

    const-string v8, ""

    .line 36
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 9

    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 101
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_category_click"

    const-string v3, "P10384"

    const-string v4, "B001"

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

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "music_netradio_category"

    const-string v3, "P00037"

    const-string v4, "B025"

    const/4 v7, 0x1

    const-string v8, ""

    .line 45
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 9

    .line 110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 111
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_category_play"

    const-string v3, "P00037"

    const-string v4, "B025"

    const/4 v7, 0x1

    const-string v8, ""

    .line 113
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static e()V
    .locals 9

    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "NetRadioStat"

    const-string v1, ""

    const-string v2, "radio_all_more"

    const-string v3, "P00037"

    const-string v4, "B023"

    const/4 v7, 0x1

    const-string v8, ""

    .line 83
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method
