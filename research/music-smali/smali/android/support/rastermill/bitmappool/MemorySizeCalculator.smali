.class public Landroid/support/rastermill/bitmappool/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/bitmappool/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I = 0x4

.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final bitmapPoolSize:I

.field private final context:Landroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "activity"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    .line 35
    invoke-direct {p0, p1, v0, v1}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;)I

    move-result p1

    .line 45
    invoke-interface {p3}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v0

    invoke-interface {p3}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result p3

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 p3, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    add-int v1, v0, p3

    if-gt v1, p1, :cond_0

    .line 52
    iput v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    iput p3, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_0

    :cond_0
    int-to-float p3, p1

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p3, v0

    .line 55
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-int/lit8 v0, p3, 0x2

    .line 56
    iput v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    mul-int/lit8 p3, p3, 0x4

    .line 57
    iput p3, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    .line 60
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated memory cache size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pool size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " memory class limited? "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " max size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p0, p1}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " memoryClass: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isLowMemoryDevice: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p2}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MemorySizeCalculator"

    .line 60
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 82
    invoke-static {p0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p0

    int-to-float v0, v0

    if-eqz p0, :cond_0

    const p0, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr v0, p0

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    .line 96
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .locals 1

    .line 77
    iget v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
