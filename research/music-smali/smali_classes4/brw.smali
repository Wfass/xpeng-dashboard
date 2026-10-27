.class public Lbrw;
.super Ljava/lang/Object;
.source "ReportClickStatUtil.java"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 397
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lbrw;->a:Landroid/util/SparseArray;

    .line 399
    sget-object v0, Lbrw;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lbrw;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "fm"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lbrw;->a:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "reading"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Lbrw;->a:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "news"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a()V
    .locals 3

    const-string v0, "P0016"

    const-string v1, "B0039"

    const-string v2, "music_play_power_on"

    .line 322
    invoke-static {v0, v1, v2}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 666
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "P00029"

    const-string v1, "B001"

    const-string v2, "music_song_quality_type"

    .line 667
    invoke-static {p0, v1, v2, v0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P0017"

    const-string v1, "B0043"

    const-string v2, "music_audio_file_flow"

    .line 330
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b()V
    .locals 3

    const-string v0, "P0016"

    const-string v1, "B0040"

    const-string v2, "music_play_power_off"

    .line 326
    invoke-static {v0, v1, v2}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00001"

    const-string v1, "B002"

    const-string v2, "speech_search"

    .line 352
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c()V
    .locals 3

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "music"

    .line 387
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "click"

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {v0}, Lbrw;->d(Ljava/util/Map;)V

    return-void
.end method

.method public static c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00002"

    const-string v1, "B001"

    const-string v2, "music_love"

    .line 368
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d()V
    .locals 3

    const-string v0, "P00019"

    const-string v1, "B001"

    const-string v2, "reading_recent_click"

    .line 615
    invoke-static {v0, v1, v2}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    .line 381
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v0, "P00003"

    const-string v1, "B001"

    const-string v2, "music_play"

    .line 382
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e()V
    .locals 3

    const-string v0, "P00028"

    const-string v1, "B004"

    const-string v2, "music_auth_fail"

    .line 701
    invoke-static {v0, v1, v2}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00006"

    const-string v1, "B001"

    const-string v2, "music_end"

    .line 457
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00015"

    const-string v1, "B001"

    const-string v2, "reading_play_end"

    .line 576
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00017"

    const-string v1, "B001"

    const-string v2, "reading_category_click"

    .line 589
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "P00018"

    const-string v1, "B001"

    const-string v2, "reading_detail"

    .line 604
    invoke-static {v0, v1, v2, p0}, Lbsa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
