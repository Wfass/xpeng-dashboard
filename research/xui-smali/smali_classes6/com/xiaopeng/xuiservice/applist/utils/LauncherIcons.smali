.class public Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
.super Ljava/lang/Object;
.source "LauncherIcons.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons$FixedSizeBitmapDrawable;
    }
.end annotation


# static fields
.field private static final BG_COLOR_USE_BORDER:Z = true

.field public static final BITMAP_APP_LIST_SIZE:I

.field public static final BITMAP_DOCKER_SIZE:I

.field private static final BLUR_FACTOR:F = 0.010416667f

.field private static final DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mContext:Landroid/content/Context;

.field private mNormalizer:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mWrapperBackgroundColor:I

.field private mWrapperIcon:Landroid/graphics/drawable/Drawable;

.field private next:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_APP_LIST_ICON_SIZE:I

    sput v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_APP_LIST_SIZE:I

    .line 32
    sget v0, Lcom/xiaopeng/util/FeatureOption;->FO_DOCKER_ICON_SIZE:I

    sput v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->BITMAP_DOCKER_SIZE:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperBackgroundColor:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 96
    return-void
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F
    .param p3, "destSize"    # I

    move-object v0, p0

    move-object/from16 v1, p1

    .line 205
    move/from16 v2, p3

    .line 206
    .local v2, "width":I
    move/from16 v3, p3

    .line 208
    .local v3, "height":I
    instance-of v4, v1, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_0

    .line 209
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 210
    .local v4, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 211
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 212
    .end local v4    # "painter":Landroid/graphics/drawable/PaintDrawable;
    goto :goto_0

    :cond_0
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 214
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 215
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 216
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v6

    if-nez v6, :cond_1

    .line 217
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 221
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 222
    .local v4, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 223
    .local v5, "sourceHeight":I
    if-lez v4, :cond_3

    if-lez v5, :cond_3

    .line 225
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 226
    .local v6, "ratio":F
    if-le v4, v5, :cond_2

    .line 227
    int-to-float v7, v2

    div-float/2addr v7, v6

    float-to-int v3, v7

    goto :goto_1

    .line 228
    :cond_2
    if-le v5, v4, :cond_3

    .line 229
    int-to-float v7, v3

    mul-float/2addr v7, v6

    float-to-int v2, v7

    .line 233
    .end local v6    # "ratio":F
    :cond_3
    :goto_1
    move/from16 v6, p3

    .line 234
    .local v6, "textureWidth":I
    move/from16 v7, p3

    .line 236
    .local v7, "textureHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 238
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    sub-int v9, v6, v2

    div-int/lit8 v9, v9, 0x2

    .line 241
    .local v9, "left":I
    sub-int v10, v7, v3

    div-int/lit8 v10, v10, 0x2

    .line 243
    .local v10, "top":I
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    instance-of v11, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v11, :cond_4

    .line 245
    const/4 v11, 0x0

    .line 246
    .local v11, "offset":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 247
    .local v12, "size":I
    add-int v13, v11, v12

    add-int v14, v11, v12

    invoke-virtual {v1, v11, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    .end local v11    # "offset":I
    .end local v12    # "size":I
    goto :goto_2

    .line 249
    :cond_4
    add-int v11, v9, v2

    add-int v12, v10, v3

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 251
    :goto_2
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 252
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    shr-int/lit8 v12, v6, 0x1

    int-to-float v12, v12

    shr-int/lit8 v13, v7, 0x1

    int-to-float v13, v13

    move/from16 v14, p2

    invoke-virtual {v11, v14, v14, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 253
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 255
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    iget-object v11, v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mCanvas:Landroid/graphics/Canvas;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    return-object v8
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outIconBounds"    # Landroid/graphics/RectF;
    .param p3, "bg_color_user_border"    # Z

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    .line 174
    .local v0, "scale":F
    const/4 v1, 0x1

    new-array v2, v1, [Z

    .line 175
    .local v2, "outShape":[Z
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mContext:Landroid/content/Context;

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 179
    .local v3, "dr":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->getNormalizer()Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v1, p1, p2, v5, v2}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;->getXPScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    .line 182
    aget-boolean v1, v2, v4

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_2

    .line 183
    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperBackgroundColor:I

    .line 184
    .local v1, "bgColor":I
    if-eqz p3, :cond_1

    .line 185
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 186
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 187
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/applist/utils/ColorExtractor;->findBorderColor(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 190
    .end local v4    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;

    .line 191
    .local v4, "fsd":Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {v4, v0}, Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;->setScale(F)V

    .line 193
    move-object p1, v3

    .line 195
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 198
    .end local v1    # "bgColor":I
    .end local v4    # "fsd":Lcom/xiaopeng/xuiservice/applist/utils/FixedScaleDrawable;
    :cond_2
    return-object p1
.end method

.method public static obtain(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    .line 47
    .local v1, "m":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->next:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    sput-object v2, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    .line 48
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->next:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    .line 49
    monitor-exit v0

    return-object v1

    .line 51
    .end local v1    # "m":Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 51
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->recycle()V

    .line 71
    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZI)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wrapToAdaptiveIcon"    # Z
    .param p3, "size"    # I

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZZI)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZIZ)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wrapToAdaptiveIcon"    # Z
    .param p3, "size"    # I
    .param p4, "bgColorUseBody"    # Z

    .line 127
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZZIZ)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZZI)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wrapToAdaptiveIcon"    # Z
    .param p3, "isInstantApp"    # Z
    .param p4, "size"    # I

    .line 137
    if-eqz p2, :cond_0

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 140
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p4}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v1

    return-object v1
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;ZZIZ)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wrapToAdaptiveIcon"    # Z
    .param p3, "isInstantApp"    # Z
    .param p4, "size"    # I
    .param p5, "bgColorUseBorder"    # Z

    .line 146
    if-eqz p2, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p5}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 149
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p4}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v1

    return-object v1
.end method

.method public createIconBitmap(Landroid/graphics/Bitmap;I)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "size"    # I

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 110
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/xiaopeng/xuiservice/applist/utils/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconAppTargetSdk"    # I
    .param p3, "size"    # I
    .param p4, "bgColorUseBorder"    # Z

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 160
    .local v0, "iconBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0, p4}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 161
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1, p3}, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getNormalizer()Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mNormalizer:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mNormalizer:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mNormalizer:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .line 59
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperBackgroundColor:I

    .line 63
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->next:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    .line 64
    sput-object p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->sPool:Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mNormalizer:Lcom/xiaopeng/xuiservice/applist/utils/IconNormalizer;

    .line 76
    return-void
.end method

.method public setWrapperBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/applist/utils/LauncherIcons;->mWrapperBackgroundColor:I

    .line 169
    return-void
.end method
