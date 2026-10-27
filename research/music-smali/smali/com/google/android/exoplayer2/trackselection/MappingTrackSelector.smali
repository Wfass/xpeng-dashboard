.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;,
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 359
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 360
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    return-void
.end method

.method private determineEnabledRenderers([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Z
    .locals 5

    .line 621
    array-length v0, p2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    .line 622
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 623
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 624
    aget-object v3, p1, v2

    .line 625
    invoke-interface {v3}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    aget-object v3, p2, v2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 7

    .line 674
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v3, v0

    .line 676
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 677
    aget-object v4, p0, v0

    move v5, v3

    move v3, v2

    move v2, v1

    .line 678
    :goto_1
    iget v6, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v6, :cond_2

    .line 679
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v5, :cond_1

    const/4 v3, 0x4

    if-ne v6, v3, :cond_0

    return v0

    :cond_0
    move v3, v0

    move v5, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v3, v5

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3

    .line 706
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 707
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 708
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 3

    .line 724
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 725
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 726
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V
    .locals 10

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 760
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 761
    aget-object v5, p0, v2

    invoke-interface {v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v5

    .line 762
    aget-object v7, p4, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 765
    aget-object v8, p2, v2

    aget-object v9, p1, v2

    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    if-eq v3, v1, :cond_4

    :goto_1
    move p0, v0

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move p0, v6

    :goto_3
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    move v0, v6

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 787
    new-instance p0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {p0, p5}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 789
    aput-object p0, p3, v4

    .line 790
    aput-object p0, p3, v3

    :cond_8
    return-void
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 808
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    move v1, v0

    .line 809
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 810
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 467
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 473
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 485
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 456
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 444
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 633
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 530
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 531
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 532
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [[[I

    const/4 v5, 0x0

    move v6, v5

    .line 533
    :goto_0
    array-length v8, v3

    if-ge v6, v8, :cond_0

    .line 534
    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v8, v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v8, v3, v6

    .line 535
    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v8, v8, [[I

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 539
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v12

    move v6, v5

    .line 543
    :goto_1
    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v6, v8, :cond_2

    .line 544
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 546
    invoke-static {v1, v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v9

    .line 548
    array-length v10, v1

    if-ne v9, v10, :cond_1

    iget v10, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v10, v10, [I

    goto :goto_2

    :cond_1
    aget-object v10, v1, v9

    .line 549
    invoke-static {v10, v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v10

    .line 551
    :goto_2
    aget v11, v2, v9

    .line 552
    aget-object v13, v3, v9

    aput-object v8, v13, v11

    .line 553
    aget-object v8, v4, v9

    aput-object v10, v8, v11

    .line 554
    aget v8, v2, v9

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 558
    :cond_2
    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 559
    array-length v8, v1

    new-array v9, v8, [Ljava/lang/String;

    .line 560
    array-length v8, v1

    new-array v10, v8, [I

    move v8, v5

    .line 561
    :goto_3
    array-length v11, v1

    if-ge v8, v11, :cond_3

    .line 562
    aget v11, v2, v8

    .line 563
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v14, v3, v8

    .line 564
    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v13, v6, v8

    .line 565
    aget-object v13, v4, v8

    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    aput-object v11, v4, v8

    .line 566
    aget-object v11, v1, v8

    invoke-interface {v11}, Lcom/google/android/exoplayer2/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    .line 567
    aget-object v11, v1, v8

    invoke-interface {v11}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 571
    :cond_3
    array-length v8, v1

    aget v2, v2, v8

    .line 572
    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v8, v1

    aget-object v3, v3, v8

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v14, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 575
    invoke-virtual {v0, v1, v6, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v15

    move v2, v5

    .line 579
    :goto_4
    array-length v3, v1

    const/16 v16, 0x0

    if-ge v2, v3, :cond_7

    .line 580
    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 581
    aput-object v16, v15, v2

    goto :goto_6

    .line 583
    :cond_4
    aget-object v3, v6, v2

    .line 584
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 585
    iget-object v8, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    if-nez v8, :cond_5

    goto :goto_5

    .line 587
    :cond_5
    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v16

    :goto_5
    aput-object v16, v15, v2

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 594
    :cond_7
    invoke-direct {v0, v1, v15}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->determineEnabledRenderers([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Z

    move-result-object v17

    .line 597
    new-instance v18, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object/from16 v8, v18

    move-object v11, v6

    move-object v13, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 603
    array-length v2, v1

    new-array v8, v2, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 605
    :goto_7
    array-length v2, v1

    if-ge v5, v2, :cond_9

    .line 606
    aget-boolean v2, v17, v5

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_8

    :cond_8
    move-object/from16 v2, v16

    :goto_8
    aput-object v2, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 609
    :cond_9
    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v4

    move-object v4, v8

    move-object v5, v15

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V

    .line 615
    new-instance v9, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v4, v15}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[ZLcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lcom/google/android/exoplayer2/RendererConfiguration;)V

    return-object v9
.end method

.method protected abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 385
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 431
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1

    .line 516
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_0

    .line 517
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 518
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    :cond_0
    return-void
.end method
