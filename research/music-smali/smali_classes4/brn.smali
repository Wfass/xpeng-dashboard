.class public final Lbrn;
.super Ljava/lang/Object;
.source "UsbStat_DataLog.java"


# direct methods
.method public static a()V
    .locals 9

    .line 35
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_song_play"

    const-string v3, "P11118"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 37
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(I)V
    .locals 9

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_tab_click"

    const-string v3, "P11126"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 19
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 54
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_singer_play"

    const-string v3, "P11120"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 56
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 9

    .line 44
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 45
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_song_playall"

    const-string v3, "P11118"

    const-string v4, "B003"

    const/4 v7, 0x1

    const-string v8, ""

    .line 46
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 64
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_singer_playall"

    const-string v3, "P11119"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 66
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 9

    .line 122
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_dir_playall"

    const-string v3, "P11123"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 124
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 9

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 74
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_singer_open"

    const-string v3, "P11119"

    const-string v4, "B003"

    const/4 v7, 0x1

    const-string v8, ""

    .line 76
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 9

    .line 83
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 84
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_album_play"

    const-string v3, "P11122"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 86
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 9

    .line 93
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 94
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_album_playall"

    const-string v3, "P11121"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 96
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 9

    .line 103
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 104
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_album_open"

    const-string v3, "P11121"

    const-string v4, "B003"

    const/4 v7, 0x1

    const-string v8, ""

    .line 106
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 9

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 132
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_dir_open"

    const-string v3, "P11123"

    const-string v4, "B003"

    const/4 v7, 0x1

    const-string v8, ""

    .line 134
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 9

    .line 141
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 142
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_dir_second_play"

    const-string v3, "P11124"

    const-string v4, "B001"

    const/4 v7, 0x1

    const-string v8, ""

    .line 144
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 9

    .line 151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "name"

    .line 152
    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "UsbStat"

    const-string v1, ""

    const-string v2, "usb_dir_second_playall"

    const-string v3, "P11124"

    const-string v4, "B002"

    const/4 v7, 0x1

    const-string v8, ""

    .line 154
    invoke-static/range {v0 .. v8}, Laoc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILjava/lang/String;)V

    return-void
.end method
