.class public Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;
.super Ljava/lang/Object;
.source "IconNormalizer.java"


# static fields
.field private static final BOUND_RATIO_MARGIN:F = 0.05f

.field private static final CIRCLE_AREA_BY_RECT:F = 0.92f

.field private static final DEBUG:Z = false

.field public static final ICON_VISIBLE_AREA_FACTOR:F = 0.92f

.field private static final LINEAR_SCALE_SLOPE:F = 0.10850655f

.field private static final MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final MIN_VISIBLE_ALPHA:I = 0x41

.field private static final PIXEL_DIFF_PERCENTAGE_THRESHOLD:F = 0.004f

.field private static final SCALE_NOT_INITIALIZED:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "IconNormalizer"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;


# instance fields
.field private final mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private mAdaptiveIconScale:F

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mLeftBorder:[F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxSize:I

.field private final mPaintMaskShape:Landroid/graphics/Paint;

.field private final mPaintMaskShapeOutline:Landroid/graphics/Paint;

.field private final mPixels:[B

.field private final mRightBorder:[F

.field private final mShapePath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x110

    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    .line 85
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 87
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    .line 88
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    .line 89
    iget v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    sget-object v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    .line 107
    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .locals 12
    .param p0, "xCoordinates"    # [F
    .param p1, "direction"    # I
    .param p2, "topY"    # I
    .param p3, "bottomY"    # I

    .line 451
    array-length v0, p0

    .line 453
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 455
    .local v1, "angles":[F
    move v2, p2

    .line 456
    .local v2, "first":I
    const/4 v3, -0x1

    .line 457
    .local v3, "last":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 459
    .local v4, "lastAngle":F
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_6

    .line 460
    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 461
    goto :goto_3

    .line 465
    :cond_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_1

    .line 466
    move v6, v2

    .local v6, "start":I
    goto :goto_1

    .line 468
    .end local v6    # "start":I
    :cond_1
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 469
    .local v6, "currentAngle":F
    move v7, v3

    .line 472
    .local v7, "start":I
    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 473
    move v11, v7

    move v7, v6

    move v6, v11

    .local v6, "start":I
    .local v7, "currentAngle":F
    :cond_2
    if-le v6, v2, :cond_4

    .line 474
    add-int/lit8 v6, v6, -0x1

    .line 475
    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    .line 476
    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 477
    goto :goto_1

    .line 484
    .end local v6    # "start":I
    .local v7, "start":I
    :cond_3
    move v6, v7

    .end local v7    # "start":I
    .restart local v6    # "start":I
    :cond_4
    :goto_1
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 486
    .end local v4    # "lastAngle":F
    .local v7, "lastAngle":F
    move v4, v6

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 487
    aput v7, v1, v4

    .line 488
    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 490
    .end local v4    # "j":I
    :cond_5
    move v3, v5

    .line 459
    .end local v6    # "start":I
    move v4, v7

    .end local v7    # "lastAngle":F
    .local v4, "lastAngle":F
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 492
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;
    .locals 2

    .line 69
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->sInstance:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    return-object v0
.end method

.method public static getNormalizedCircleSize(I)I
    .locals 5
    .param p0, "size"    # I

    .line 498
    mul-int v0, p0, p0

    int-to-float v0, v0

    const v1, 0x3f28e38e

    mul-float/2addr v0, v1

    .line 499
    .local v0, "area":F
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private isShape(Landroid/graphics/Path;)Z
    .locals 4
    .param p1, "maskPath"    # Landroid/graphics/Path;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 118
    .local v0, "iconRatio":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    return v1

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->isTransparentBitmap()Z

    move-result v1

    return v1
.end method

.method private isTransparentBitmap()Z
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 155
    .local v1, "y":I
    iget v2, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v2, v1

    .line 157
    .local v2, "index":I
    iget v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 159
    .local v3, "rowSizeDiff":I
    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    move v1, v4

    .line 160
    .local v1, "sum":I
    .local v2, "y":I
    .local v5, "index":I
    :goto_0
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v6, :cond_2

    .line 161
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 162
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .local v6, "x":I
    :goto_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_1

    .line 163
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x41

    if-le v7, v8, :cond_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 168
    .end local v6    # "x":I
    :cond_1
    add-int/2addr v5, v3

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    int-to-float v6, v1

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 172
    .local v6, "percentageDiffPixels":F
    const v7, 0x3b83126f    # 0.004f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    const/4 v4, 0x1

    nop

    :cond_3
    return v4
.end method


# virtual methods
.method public declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F
    .locals 26
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "outMaskShape"    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 317
    :try_start_0
    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 318
    iget v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 319
    if-eqz v2, :cond_0

    .line 320
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 322
    :cond_0
    iget v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    .line 325
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 326
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 327
    .local v6, "height":I
    if-lez v4, :cond_4

    if-gtz v6, :cond_2

    goto :goto_0

    .line 330
    :cond_2
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-gt v4, v7, :cond_3

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_9

    .line 331
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 332
    .local v7, "max":I
    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v4

    div-int/2addr v8, v7

    move v4, v8

    .line 333
    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v6

    div-int/2addr v8, v7

    move v6, v8

    .end local v7    # "max":I
    goto :goto_5

    .line 328
    :cond_4
    :goto_0
    if-lez v4, :cond_6

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v4, v7, :cond_5

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_2

    :cond_6
    :goto_1
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    :goto_2
    move v4, v7

    .line 329
    if-lez v6, :cond_8

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_7

    goto :goto_3

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    :goto_3
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    :goto_4
    move v6, v7

    .line 336
    :cond_9
    :goto_5
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 337
    invoke-virtual {v0, v8, v8, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 341
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 342
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 345
    const/4 v9, -0x1

    .line 346
    .local v9, "topY":I
    const/4 v10, -0x1

    .line 347
    .local v10, "bottomY":I
    iget v11, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 348
    .local v11, "leftX":I
    const/4 v13, -0x1

    .line 354
    .local v13, "rightX":I
    const/4 v14, 0x0

    .line 356
    .local v14, "index":I
    iget v15, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    sub-int/2addr v15, v4

    .line 360
    .local v15, "rowSizeDiff":I
    move/from16 v16, v14

    move v14, v11

    move v11, v10

    move v10, v9

    move v9, v8

    .local v9, "y":I
    .local v10, "topY":I
    .local v11, "bottomY":I
    .local v14, "leftX":I
    .local v16, "index":I
    :goto_6
    const/4 v5, -0x1

    if-ge v9, v6, :cond_f

    .line 361
    move/from16 v17, v5

    .local v17, "lastX":I
    move/from16 v18, v5

    .line 362
    .local v18, "firstX":I
    move/from16 v12, v17

    move/from16 v17, v16

    move/from16 v16, v8

    move/from16 v8, v18

    .end local v18    # "firstX":I
    .local v8, "firstX":I
    .local v12, "lastX":I
    .local v16, "x":I
    .local v17, "index":I
    :goto_7
    move/from16 v19, v16

    .end local v16    # "x":I
    .local v19, "x":I
    move/from16 v5, v19

    if-ge v5, v4, :cond_c

    .line 363
    .end local v19    # "x":I
    .local v5, "x":I
    move-object/from16 v20, v7

    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .local v20, "buffer":Ljava/nio/ByteBuffer;
    aget-byte v7, v7, v17

    and-int/lit16 v7, v7, 0xff

    const/16 v0, 0x41

    if-le v7, v0, :cond_b

    .line 364
    const/4 v0, -0x1

    if-ne v8, v0, :cond_a

    .line 365
    move v8, v5

    .line 367
    :cond_a
    move v0, v5

    .line 369
    .end local v12    # "lastX":I
    .local v0, "lastX":I
    move v12, v0

    .end local v0    # "lastX":I
    .restart local v12    # "lastX":I
    :cond_b
    add-int/lit8 v17, v17, 0x1

    .line 362
    add-int/lit8 v16, v5, 0x1

    .end local v5    # "x":I
    .restart local v16    # "x":I
    move-object/from16 v7, v20

    move-object/from16 v0, p1

    const/4 v5, -0x1

    goto :goto_7

    .line 371
    .end local v16    # "x":I
    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_c
    move-object/from16 v20, v7

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "buffer":Ljava/nio/ByteBuffer;
    add-int v16, v17, v15

    .line 373
    .end local v17    # "index":I
    .local v16, "index":I
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    int-to-float v5, v8

    aput v5, v0, v9

    .line 374
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    int-to-float v5, v12

    aput v5, v0, v9

    .line 377
    const/4 v0, -0x1

    if-eq v8, v0, :cond_e

    .line 378
    move v5, v9

    .line 379
    .end local v11    # "bottomY":I
    .local v5, "bottomY":I
    if-ne v10, v0, :cond_d

    .line 380
    move v10, v9

    .line 383
    :cond_d
    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 384
    .end local v14    # "leftX":I
    .local v0, "leftX":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 360
    .end local v13    # "rightX":I
    .local v7, "rightX":I
    move v14, v0

    move v11, v5

    move v13, v7

    .end local v0    # "leftX":I
    .end local v5    # "bottomY":I
    .end local v7    # "rightX":I
    .restart local v11    # "bottomY":I
    .restart local v13    # "rightX":I
    .restart local v14    # "leftX":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v20

    move-object/from16 v0, p1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    goto :goto_6

    .line 388
    .end local v8    # "firstX":I
    .end local v9    # "y":I
    .end local v12    # "lastX":I
    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    move-object/from16 v20, v7

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "buffer":Ljava/nio/ByteBuffer;
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    if-eq v10, v5, :cond_18

    if-ne v13, v5, :cond_10

    .line 390
    move-object/from16 v0, p3

    move/from16 v24, v10

    move-object/from16 v3, p1

    goto/16 :goto_e

    .line 393
    :cond_10
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    const/4 v7, 0x1

    invoke-static {v5, v7, v10, v11}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->convertToConvexArray([FIII)V

    .line 394
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    const/4 v7, -0x1

    invoke-static {v5, v7, v10, v11}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->convertToConvexArray([FIII)V

    .line 397
    const/4 v5, 0x0

    .line 398
    .local v5, "area":F
    move v7, v5

    const/4 v5, 0x0

    .local v5, "y":I
    .local v7, "area":F
    :goto_8
    if-ge v5, v6, :cond_12

    .line 399
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    aget v8, v8, v5

    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_11

    .line 400
    goto :goto_9

    .line 402
    :cond_11
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    aget v8, v8, v5

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    aget v9, v9, v5

    sub-float/2addr v8, v9

    add-float/2addr v8, v0

    add-float/2addr v7, v8

    .line 398
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 406
    .end local v5    # "y":I
    :cond_12
    add-int/lit8 v5, v11, 0x1

    sub-int/2addr v5, v10

    add-int/lit8 v8, v13, 0x1

    sub-int/2addr v8, v14

    mul-int/2addr v5, v8

    int-to-float v5, v5

    .line 407
    .local v5, "rectArea":F
    div-float v8, v7, v5

    .line 410
    .local v8, "hullByRect":F
    const v9, 0x3f6b851f    # 0.92f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_13

    .line 411
    const v9, 0x3f28e38e

    .local v9, "scaleRequired":F
    goto :goto_a

    .line 413
    .end local v9    # "scaleRequired":F
    :cond_13
    const v9, 0x3f26aaab

    const v12, 0x3dde38af

    sub-float v17, v0, v8

    mul-float v12, v12, v17

    add-float/2addr v9, v12

    .line 415
    .restart local v9    # "scaleRequired":F
    :goto_a
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v14, v12, Landroid/graphics/Rect;->left:I

    .line 416
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 418
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v10, v12, Landroid/graphics/Rect;->top:I

    .line 419
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v11, v12, Landroid/graphics/Rect;->bottom:I

    .line 421
    if-eqz v2, :cond_14

    .line 422
    iget-object v12, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    int-to-float v0, v4

    div-float/2addr v12, v0

    iget-object v0, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    move/from16 v22, v5

    int-to-float v5, v6

    .end local v5    # "rectArea":F
    .local v22, "rectArea":F
    div-float/2addr v0, v5

    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move/from16 v23, v8

    int-to-float v8, v4

    .end local v8    # "hullByRect":F
    .local v23, "hullByRect":F
    div-float/2addr v5, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    move/from16 v24, v10

    int-to-float v10, v6

    .end local v10    # "topY":I
    .local v24, "topY":I
    div-float/2addr v8, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v8, v10, v8

    invoke-virtual {v2, v12, v0, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_b

    .line 427
    .end local v22    # "rectArea":F
    .end local v23    # "hullByRect":F
    .end local v24    # "topY":I
    .restart local v5    # "rectArea":F
    .restart local v8    # "hullByRect":F
    .restart local v10    # "topY":I
    :cond_14
    move/from16 v22, v5

    move/from16 v23, v8

    move/from16 v24, v10

    .end local v5    # "rectArea":F
    .end local v8    # "hullByRect":F
    .end local v10    # "topY":I
    .restart local v22    # "rectArea":F
    .restart local v23    # "hullByRect":F
    .restart local v24    # "topY":I
    :goto_b
    if-eqz v3, :cond_15

    array-length v0, v3

    if-lez v0, :cond_15

    .line 428
    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->isShape(Landroid/graphics/Path;)Z

    move-result v5

    const/4 v8, 0x0

    aput-boolean v5, v3, v8

    goto :goto_c

    .line 430
    :cond_15
    move-object/from16 v0, p3

    :goto_c
    mul-int v5, v4, v6

    int-to-float v5, v5

    div-float v5, v7, v5

    .line 432
    .local v5, "areaScale":F
    cmpl-float v8, v5, v9

    if-lez v8, :cond_16

    div-float v8, v9, v5

    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v21, v2

    goto :goto_d

    :cond_16
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_d
    move/from16 v2, v21

    .line 433
    .local v2, "scale":F
    move-object/from16 v3, p1

    instance-of v8, v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_17

    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-nez v8, :cond_17

    .line 435
    iput v2, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    .line 436
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_17
    monitor-exit p0

    return v2

    .line 390
    .end local v2    # "scale":F
    .end local v5    # "areaScale":F
    .end local v7    # "area":F
    .end local v9    # "scaleRequired":F
    .end local v22    # "rectArea":F
    .end local v23    # "hullByRect":F
    .end local v24    # "topY":I
    .restart local v10    # "topY":I
    :cond_18
    move-object/from16 v0, p3

    move/from16 v24, v10

    move-object/from16 v3, p1

    .end local v10    # "topY":I
    .restart local v24    # "topY":I
    :goto_e
    monitor-exit p0

    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 316
    .end local v4    # "width":I
    .end local v6    # "height":I
    .end local v11    # "bottomY":I
    .end local v13    # "rightX":I
    .end local v14    # "leftX":I
    .end local v15    # "rowSizeDiff":I
    .end local v16    # "index":I
    .end local v20    # "buffer":Ljava/nio/ByteBuffer;
    .end local v24    # "topY":I
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    .end local p3    # "path":Landroid/graphics/Path;
    .end local p4    # "outMaskShape":[Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;
    throw v0
.end method

.method public declared-synchronized getXPScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F
    .locals 25
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "outBounds"    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "path"    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "outMaskShape"    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 180
    :try_start_0
    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 181
    iget v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 182
    if-eqz v2, :cond_0

    .line 183
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 185
    :cond_0
    iget v4, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    .line 188
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 189
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 190
    .local v6, "height":I
    if-lez v4, :cond_4

    if-gtz v6, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-gt v4, v7, :cond_3

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_9

    .line 194
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 195
    .local v7, "max":I
    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v4

    div-int/2addr v8, v7

    move v4, v8

    .line 196
    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v6

    div-int/2addr v8, v7

    move v6, v8

    .end local v7    # "max":I
    goto :goto_5

    .line 191
    :cond_4
    :goto_0
    if-lez v4, :cond_6

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v4, v7, :cond_5

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_2

    :cond_6
    :goto_1
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    :goto_2
    move v4, v7

    .line 192
    if-lez v6, :cond_8

    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_7

    goto :goto_3

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    :goto_3
    iget v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    :goto_4
    move v6, v7

    .line 199
    :cond_9
    :goto_5
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 200
    invoke-virtual {v0, v8, v8, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 204
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 205
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 208
    const/4 v9, -0x1

    .line 209
    .local v9, "topY":I
    const/4 v10, -0x1

    .line 210
    .local v10, "bottomY":I
    iget v11, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    add-int/lit8 v11, v11, 0x1

    .line 211
    .local v11, "leftX":I
    const/4 v12, -0x1

    .line 217
    .local v12, "rightX":I
    const/4 v13, 0x0

    .line 219
    .local v13, "index":I
    iget v14, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mMaxSize:I

    sub-int/2addr v14, v4

    .line 223
    .local v14, "rowSizeDiff":I
    move v15, v13

    move v13, v11

    move v11, v10

    move v10, v9

    move v9, v8

    .local v9, "y":I
    .local v10, "topY":I
    .local v11, "bottomY":I
    .local v13, "leftX":I
    .local v15, "index":I
    :goto_6
    const/4 v5, -0x1

    if-ge v9, v6, :cond_f

    .line 224
    move/from16 v16, v5

    .local v16, "lastX":I
    move/from16 v17, v5

    .line 225
    .local v17, "firstX":I
    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v8

    move/from16 v8, v17

    .end local v17    # "firstX":I
    .local v8, "firstX":I
    .local v15, "x":I
    .local v16, "index":I
    .local v18, "lastX":I
    :goto_7
    if-ge v15, v4, :cond_c

    .line 226
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mPixels:[B

    aget-byte v5, v5, v16

    and-int/lit16 v5, v5, 0xff

    move-object/from16 v19, v7

    const/16 v7, 0x41

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    if-le v5, v7, :cond_b

    .line 227
    const/4 v5, -0x1

    if-ne v8, v5, :cond_a

    .line 228
    move v8, v15

    .line 230
    :cond_a
    move v5, v15

    .line 232
    .end local v18    # "lastX":I
    .local v5, "lastX":I
    move/from16 v18, v5

    .end local v5    # "lastX":I
    .restart local v18    # "lastX":I
    :cond_b
    add-int/lit8 v16, v16, 0x1

    .line 225
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v19

    const/4 v5, -0x1

    goto :goto_7

    .line 234
    .end local v15    # "x":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_c
    move-object/from16 v19, v7

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    add-int v15, v16, v14

    .line 236
    .end local v16    # "index":I
    .local v15, "index":I
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    int-to-float v7, v8

    aput v7, v5, v9

    .line 237
    iget-object v5, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    move/from16 v20, v14

    move/from16 v7, v18

    int-to-float v14, v7

    .end local v14    # "rowSizeDiff":I
    .end local v18    # "lastX":I
    .local v7, "lastX":I
    .local v20, "rowSizeDiff":I
    aput v14, v5, v9

    .line 240
    const/4 v5, -0x1

    if-eq v8, v5, :cond_e

    .line 241
    move v11, v9

    .line 242
    if-ne v10, v5, :cond_d

    .line 243
    move v10, v9

    .line 246
    :cond_d
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 247
    .end local v13    # "leftX":I
    .local v5, "leftX":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v12, v13

    .line 223
    move v13, v5

    .end local v5    # "leftX":I
    .restart local v13    # "leftX":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v19

    move/from16 v14, v20

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_6

    .line 251
    .end local v8    # "firstX":I
    .end local v9    # "y":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "rowSizeDiff":I
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "rowSizeDiff":I
    :cond_f
    move-object/from16 v19, v7

    move/from16 v20, v14

    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "rowSizeDiff":I
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "rowSizeDiff":I
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    if-eq v10, v7, :cond_17

    if-ne v12, v7, :cond_10

    .line 253
    move/from16 v24, v4

    move-object/from16 v4, p3

    goto/16 :goto_d

    .line 256
    :cond_10
    const/4 v7, 0x0

    .line 257
    .local v7, "area":F
    move v8, v7

    const/4 v7, 0x0

    .local v7, "y":I
    .local v8, "area":F
    :goto_8
    if-ge v7, v6, :cond_12

    .line 258
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    aget v9, v9, v7

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v9, v9, v14

    if-gtz v9, :cond_11

    .line 259
    goto :goto_9

    .line 261
    :cond_11
    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mRightBorder:[F

    aget v9, v9, v7

    iget-object v14, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mLeftBorder:[F

    aget v14, v14, v7

    sub-float/2addr v9, v14

    add-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 257
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 265
    .end local v7    # "y":I
    :cond_12
    sub-int v7, v11, v10

    add-int/lit8 v7, v7, 0x1

    sub-int v9, v12, v13

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v7, v9

    int-to-float v7, v7

    .line 266
    .local v7, "rectArea":F
    div-float v9, v8, v7

    .line 269
    .local v9, "hullByRect":F
    const v14, 0x3f6b851f    # 0.92f

    cmpl-float v14, v9, v14

    if-lez v14, :cond_13

    sub-int v14, v11, v10

    sub-int v16, v12, v13

    sub-int v14, v14, v16

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v5, 0x5

    if-ge v14, v5, :cond_13

    .line 270
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sub-int v14, v11, v10

    add-int/lit8 v14, v14, 0x1

    sub-int v16, v12, v13

    move/from16 v21, v7

    add-int/lit8 v7, v16, 0x1

    .end local v7    # "rectArea":F
    .local v21, "rectArea":F
    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .local v5, "scaleRequired":F
    goto :goto_a

    .line 272
    .end local v5    # "scaleRequired":F
    .end local v21    # "rectArea":F
    .restart local v7    # "rectArea":F
    :cond_13
    move/from16 v21, v7

    .end local v7    # "rectArea":F
    .restart local v21    # "rectArea":F
    const v5, 0x3f333333    # 0.7f

    .line 275
    .restart local v5    # "scaleRequired":F
    :goto_a
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v13, v7, Landroid/graphics/Rect;->left:I

    .line 276
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v12, v7, Landroid/graphics/Rect;->right:I

    .line 278
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 279
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 282
    if-eqz v2, :cond_14

    .line 283
    iget-object v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    int-to-float v14, v4

    div-float/2addr v7, v14

    iget-object v14, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v22, v8

    int-to-float v8, v6

    .end local v8    # "area":F
    .local v22, "area":F
    div-float/2addr v14, v8

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    move/from16 v23, v9

    int-to-float v9, v4

    .end local v9    # "hullByRect":F
    .local v23, "hullByRect":F
    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    move/from16 v24, v4

    int-to-float v4, v6

    .end local v4    # "width":I
    .local v24, "width":I
    div-float/2addr v9, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-virtual {v2, v7, v14, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_b

    .line 288
    .end local v22    # "area":F
    .end local v23    # "hullByRect":F
    .end local v24    # "width":I
    .restart local v4    # "width":I
    .restart local v8    # "area":F
    .restart local v9    # "hullByRect":F
    :cond_14
    move/from16 v24, v4

    move/from16 v22, v8

    move/from16 v23, v9

    .end local v4    # "width":I
    .end local v8    # "area":F
    .end local v9    # "hullByRect":F
    .restart local v22    # "area":F
    .restart local v23    # "hullByRect":F
    .restart local v24    # "width":I
    :goto_b
    if-eqz v3, :cond_15

    array-length v4, v3

    if-lez v4, :cond_15

    .line 289
    move-object/from16 v4, p3

    invoke-direct {v1, v4}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->isShape(Landroid/graphics/Path;)Z

    move-result v7

    const/4 v8, 0x0

    aput-boolean v7, v3, v8

    goto :goto_c

    .line 292
    :cond_15
    move-object/from16 v4, p3

    :goto_c
    move v7, v5

    .line 293
    .local v7, "scale":F
    instance-of v8, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_16

    iget v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_16

    .line 295
    iput v7, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconScale:F

    .line 296
    iget-object v8, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :cond_16
    monitor-exit p0

    return v7

    .line 253
    .end local v5    # "scaleRequired":F
    .end local v7    # "scale":F
    .end local v21    # "rectArea":F
    .end local v22    # "area":F
    .end local v23    # "hullByRect":F
    .end local v24    # "width":I
    .restart local v4    # "width":I
    :cond_17
    move/from16 v24, v4

    move-object/from16 v4, p3

    .end local v4    # "width":I
    .restart local v24    # "width":I
    :goto_d
    monitor-exit p0

    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 179
    .end local v6    # "height":I
    .end local v10    # "topY":I
    .end local v11    # "bottomY":I
    .end local v12    # "rightX":I
    .end local v13    # "leftX":I
    .end local v15    # "index":I
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "rowSizeDiff":I
    .end local v24    # "width":I
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    .end local p3    # "path":Landroid/graphics/Path;
    .end local p4    # "outMaskShape":[Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;
    throw v0
.end method
