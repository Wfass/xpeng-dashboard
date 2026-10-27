.class public Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;Landroid/content/Context;Ljava/util/Map;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/alibaba/sdk/android/man/crashreporter/global/a;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 42
    nop

    .line 43
    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    if-eqz p3, :cond_c

    .line 44
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    .line 45
    const-string p1, "start build crash file"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 47
    :try_start_0
    sget-object p1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->I:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->H:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    nop

    .line 50
    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->G:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    sget-object v2, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->v:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    nop

    .line 53
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-string v5, "BACKGROUND:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    nop

    .line 61
    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->a(Landroid/content/Context;)Z

    move-result v2

    .line 61
    :goto_1
    sget-object v5, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->w:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 62
    if-nez v5, :cond_3

    .line 63
    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 67
    :cond_3
    const-string v6, "start buildSysMessage"

    invoke-static {v6}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 68
    iget-object v6, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v6, v6, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v7, "build"

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v6, v6, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v7, "imei"

    if-nez v0, :cond_4

    const-string v8, ""

    goto :goto_2

    :cond_4
    move-object v8, v0

    :goto_2
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v6, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v6, v6, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v7, "imsi"

    if-nez p1, :cond_5

    const-string p1, ""

    :cond_5
    invoke-interface {v6, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v6, "deviceId"

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "utdid"

    if-nez v1, :cond_7

    const-string v1, ""

    :cond_7
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "deviceModel"

    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->m:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "cpuModel"

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "resolution"

    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->s:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "os"

    const-string v1, "ANDROID"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "displayName"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "firmwareName"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "firmwareVersion"

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "firmwareBuild"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "memorySizes"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->a(Landroid/content/Context;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "memoryUsed"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Landroid/content/Context;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->a(Z)[J

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "internalStorageTotal"

    aget-wide v6, p1, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "internalStorageFree"

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "internalStorageAvailable"

    const/4 v6, 0x2

    aget-wide v7, p1, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "externalStorageState"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 97
    invoke-static {v4}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->a(Z)[J

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "externalStorageTotal"

    aget-wide v7, p1, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "externalStorageFree"

    aget-wide v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v1, "externalStorageAvailable"

    aget-wide v3, p1, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_8
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "isInstallOnSDCard"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "country"

    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->t:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "language"

    sget-object v1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->u:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string p1, "start buildOtherMessage"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "parentProcessName"

    const-string v1, "launchd [1]"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "processName"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "isRoot"

    invoke-static {}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "isBackground"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "clientIp"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "carrier"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->z:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "access"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->A:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "accessSubtype"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->B:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "view"

    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "bundle"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->y:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "operations"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string p1, "start buildCrashMessage"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    sget-object p1, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->d:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 136
    if-eqz p1, :cond_b

    .line 137
    const-string p2, "I/CrashReport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "D/CrashReport"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    .line 140
    :cond_9
    iget-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p2, p2, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string v0, "sysLog"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 138
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "sysLog"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_b
    :goto_4
    goto :goto_5

    .line 143
    :catch_0
    move-exception p1

    .line 145
    :goto_5
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "eventLog"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->e:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    iget-object p1, p1, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->c:Ljava/util/Map;

    const-string p2, "radioLog"

    sget-object v0, Lcom/alibaba/sdk/android/man/crashreporter/global/a;->f:Lcom/alibaba/sdk/android/man/crashreporter/global/a;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/c/b;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/c/a/a;->a()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    goto :goto_6

    .line 152
    :catch_1
    move-exception p1

    .line 153
    const-string p2, "Build data error."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_c
    const/4 p1, 0x0

    :goto_6
    const-string p2, "end build crash file"

    invoke-static {p2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 159
    return-object p1
.end method
