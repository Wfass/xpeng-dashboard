.class public Laib;
.super Ljava/lang/Object;
.source "MediaBrowserViewModelImpl.java"


# direct methods
.method public static a(ZLjava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 53
    sget-object p0, L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;->INSTANCE:L-$$Lambda$6xenZEbg5_-zdAVCRDxGUYpi_ck;

    goto :goto_0

    :cond_1
    sget-object p0, L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;->INSTANCE:L-$$Lambda$aib$kLuUG7PnOJyWkaGcAnBrGsC2XhM;

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic a(Lcom/android/car/media/common/MediaItemMetadata;)Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$kLuUG7PnOJyWkaGcAnBrGsC2XhM(Lcom/android/car/media/common/MediaItemMetadata;)Z
    .locals 0

    invoke-static {p0}, Laib;->a(Lcom/android/car/media/common/MediaItemMetadata;)Z

    move-result p0

    return p0
.end method
