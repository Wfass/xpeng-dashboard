.class public Lcom/xiaopeng/speech/overall/OverallUtils;
.super Ljava/lang/Object;
.source "OverallUtils.java"


# static fields
.field public static sEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sPackageEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sPackageQueryEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sQueryEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    const-string v1, "com.youku.iot"

    const-string v2, "command://video.control.play"

    const-string v3, "command://video.control.resume"

    const-string v4, "command://video.control.pause"

    const-string v5, "command://video.control.stop"

    const-string v6, "command://video.forward"

    const-string v7, "command://video.backward"

    const-string v8, "command://video.settime"

    const-string v9, "command://video.control.collect"

    const-string v10, "command://video.control.collect.cancel"

    const-string v11, "command://video.control.prev"

    const-string v12, "command://video.control.next"

    const-string v13, "command://video.fullscreen"

    const-string v14, "command://video.fullscreen.exit"

    const-string v15, "command://video.definition.set"

    const-string v16, "command://video.play.page.exit"

    const-string v17, "command://video.play.select"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    const-string v1, "com.youku.iot"

    const-string v2, "native://com.youku.iot.video.info.query"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageEvents:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageEvents:Ljava/util/Map;

    const-string v1, "com.youku.iot"

    const-string v2, "isPlaying:false|play"

    const-string v3, "isPlaying:false|continue"

    const-string v4, "isPlaying:true|pause"

    const-string v5, "isPlaying:true|stop"

    const-string v6, "isInPlayPage:true|fastforward"

    const-string v7, "isInPlayPage:true|backforward"

    const-string v8, "isInPlayPage:true|settime"

    const-string v9, "isInPlayPage:true|favor"

    const-string v10, "isInPlayPage:true|unfavor"

    const-string v11, "isInPlayPage:true|previous"

    const-string v12, "isInPlayPage:true|next"

    const-string v13, "isFullScreen:false|fullscreen"

    const-string v14, "isFullScreen:true|unfullscreen"

    const-string v15, "isInPlayPage:true|definition"

    const-string v16, "isInPlayPage:true|back"

    const-string v17, "isInPlayPage:true|select"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageQueryEvents:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageQueryEvents:Ljava/util/Map;

    const-string v1, "com.youku.iot"

    const-string v2, "isInPlayPage|isFullScreen|isPlaying|videoDuration|definitions|isLogin"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getObserverEvent(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 74
    .local v0, "events":[Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 75
    .local v1, "querys":[Ljava/lang/String;
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 76
    .local v2, "returnEvents":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-object v2

    .line 79
    .end local v0    # "events":[Ljava/lang/String;
    .end local v1    # "querys":[Ljava/lang/String;
    .end local v2    # "returnEvents":[Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 81
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPackageEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPackageQueryEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sPackageQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQueryEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/xiaopeng/speech/overall/OverallUtils;->sQueryEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
