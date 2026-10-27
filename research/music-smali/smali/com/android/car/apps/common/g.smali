.class public final Lcom/android/car/apps/common/g;
.super Ljava/lang/Object;
.source "IconCropper.java"


# instance fields
.field private final a:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/android/car/apps/common/g;->a(Landroid/content/Context;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/g;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/car/apps/common/g;->a:Landroid/graphics/Path;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/Path;
    .locals 1

    .line 55
    sget v0, Lcom/android/car/apps/common/h$i;->config_crop_icon_mask:I

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Ldw;->a(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 71
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 75
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, -0x1

    .line 79
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 82
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 83
    iget-object v0, p0, Lcom/android/car/apps/common/g;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 86
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v0, 0x0

    .line 87
    invoke-virtual {v3, p1, v0, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p1, v0}, Lcom/android/car/apps/common/a;->a(Landroid/graphics/drawable/Drawable;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/apps/common/g;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
