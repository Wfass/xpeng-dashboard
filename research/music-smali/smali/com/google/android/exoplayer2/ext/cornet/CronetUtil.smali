.class public final Lcom/google/android/exoplayer2/ext/cornet/CronetUtil;
.super Ljava/lang/Object;
.source "CronetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CronetUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCronetEngine(Landroid/content/Context;Ljava/lang/String;Z)Lorg/chromium/net/d;
    .locals 4

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/chromium/net/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 64
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/f;

    invoke-virtual {v2}, Lorg/chromium/net/f;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/f;

    invoke-virtual {v2}, Lorg/chromium/net/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fallback-Cronet-Provider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 70
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;-><init>(Z)V

    .line 72
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const-string v2, "CronetUtil"

    if-ge p0, p2, :cond_4

    .line 74
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/net/f;

    invoke-virtual {p2}, Lorg/chromium/net/f;->b()Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/net/f;

    invoke-virtual {p2}, Lorg/chromium/net/f;->a()Lorg/chromium/net/d$a;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p2, p1}, Lorg/chromium/net/d$a;->a(Ljava/lang/String;)Lorg/chromium/net/d$a;

    .line 80
    :cond_3
    invoke-virtual {p2, v1}, Lorg/chromium/net/d$a;->b(Z)Lorg/chromium/net/d$a;

    .line 81
    invoke-virtual {p2, v1}, Lorg/chromium/net/d$a;->a(Z)Lorg/chromium/net/d$a;

    .line 82
    invoke-virtual {p2}, Lorg/chromium/net/d$a;->a()Lorg/chromium/net/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p2, "Failed to link Cronet binaries. Please check that native Cronet binaries arebundled into your app."

    .line 90
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/ext/cornet/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    const-string p2, "Failed to build CronetEngine. Please check that the process has android.permission.ACCESS_NETWORK_STATE."

    .line 85
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/ext/cornet/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    const-string p0, "CronetEngine could not be built."

    .line 96
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
