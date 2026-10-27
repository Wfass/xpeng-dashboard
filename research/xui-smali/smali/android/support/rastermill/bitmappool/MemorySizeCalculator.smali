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
    .param p1, "context"    # Landroid/content/Context;

    .line 35
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

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/ActivityManager;
    .param p3, "screenDimensions"    # Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->context:Landroid/content/Context;

    .line 43
    invoke-static {p2}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->getMaxSize(Landroid/app/ActivityManager;)I

    move-result v0

    .line 45
    .local v0, "maxSize":I
    invoke-interface {p3}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v1

    invoke-interface {p3}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 48
    .local v1, "screenSize":I
    mul-int/lit8 v2, v1, 0x4

    .line 49
    .local v2, "targetPoolSize":I
    mul-int/lit8 v3, v1, 0x2

    .line 51
    .local v3, "targetMemoryCacheSize":I
    add-int v4, v3, v2

    if-gt v4, v0, :cond_0

    .line 52
    iput v3, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    iput v2, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_0

    .line 55
    :cond_0
    int-to-float v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 56
    .local v4, "part":I
    mul-int/lit8 v5, v4, 0x2

    iput v5, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    .line 57
    mul-int/lit8 v5, v4, 0x4

    iput v5, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    .line 60
    .end local v4    # "part":I
    :goto_0
    const-string v4, "MemorySizeCalculator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated memory cache size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {p0, v6}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pool size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {p0, v6}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " memory class limited? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v3, v2

    if-le v6, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " max size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {p0, v0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " memoryClass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isLowMemoryDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p2}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private static getMaxSize(Landroid/app/ActivityManager;)I
    .locals 4
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .line 81
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 82
    .local v0, "memoryClassBytes":I
    invoke-static {p0}, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result v1

    .line 83
    .local v1, "isLowMemoryDevice":Z
    int-to-float v2, v0

    if-eqz v1, :cond_0

    const v3, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private static isLowMemoryDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 96
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # I

    .line 88
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/MemorySizeCalculator;->context:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
