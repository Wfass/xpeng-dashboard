.class Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;
.super Ljava/lang/Object;
.source "CronetUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cornet/CronetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CronetProviderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/chromium/net/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOOGLE_PLAY_SERVICES_PROVIDER_NAME:Ljava/lang/String; = "Google-Play-Services-Cronet-Provider"


# instance fields
.field private final preferGooglePlayServices:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->preferGooglePlayServices:Z

    return-void
.end method

.method private static compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\\."

    .line 148
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 150
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 152
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :try_start_0
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 155
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p0, p1

    return p0

    :catch_0
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getPriority(Lorg/chromium/net/f;)I
    .locals 1

    .line 132
    invoke-virtual {p1}, Lorg/chromium/net/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "App-Packaged-Cronet-Provider"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "Google-Play-Services-Cronet-Provider"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->preferGooglePlayServices:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Lorg/chromium/net/f;

    check-cast p2, Lorg/chromium/net/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->compare(Lorg/chromium/net/f;Lorg/chromium/net/f;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/chromium/net/f;Lorg/chromium/net/f;)I
    .locals 2

    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->getPriority(Lorg/chromium/net/f;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->getPriority(Lorg/chromium/net/f;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/f;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/chromium/net/f;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ext/cornet/CronetUtil$CronetProviderComparator;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
