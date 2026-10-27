.class public Lcom/airbnb/lottie/f;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/f$b;,
        Lcom/airbnb/lottie/f$a;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2


# instance fields
.field private alpha:I

.field private final animator:Loy;

.field private canvasClipBounds:Landroid/graphics/Rect;

.field private canvasClipBoundsRectF:Landroid/graphics/RectF;

.field private clipToCompositionBounds:Z

.field private composition:Lcom/airbnb/lottie/d;

.field private compositionLayer:Lmr;

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/a;

.field private fontAssetManager:Lky;

.field private ignoreSystemAnimationsDisabled:Z

.field private imageAssetDelegate:Lcom/airbnb/lottie/b;

.field private imageAssetManager:Lkz;

.field private imageAssetsFolder:Ljava/lang/String;

.field private isApplyingOpacityToLayersEnabled:Z

.field private isDirty:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private maintainOriginalImageBounds:Z

.field private onVisibleAction:Lcom/airbnb/lottie/f$b;

.field private outlineMasksAndMattes:Z

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private renderMode:Lcom/airbnb/lottie/p;

.field private final renderingMatrix:Landroid/graphics/Matrix;

.field private safeMode:Z

.field private softwareRenderingBitmap:Landroid/graphics/Bitmap;

.field private softwareRenderingCanvas:Landroid/graphics/Canvas;

.field private softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

.field private softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

.field private softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

.field private softwareRenderingPaint:Landroid/graphics/Paint;

.field private softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

.field private softwareRenderingTransformedBounds:Landroid/graphics/RectF;

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/airbnb/lottie/r;

.field private useSoftwareRendering:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 168
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    new-instance v0, Loy;

    invoke-direct {v0}, Loy;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->systemAnimationsEnabled:Z

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->ignoreSystemAnimationsDisabled:Z

    .line 84
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->safeMode:Z

    .line 85
    sget-object v2, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v2, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 88
    new-instance v2, Lcom/airbnb/lottie/f$1;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/f$1;-><init>(Lcom/airbnb/lottie/f;)V

    iput-object v2, p0, Lcom/airbnb/lottie/f;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 113
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->maintainOriginalImageBounds:Z

    .line 114
    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    const/16 v0, 0xff

    .line 117
    iput v0, p0, Lcom/airbnb/lottie/f;->alpha:I

    .line 122
    sget-object v0, Lcom/airbnb/lottie/p;->AUTOMATIC:Lcom/airbnb/lottie/p;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->renderMode:Lcom/airbnb/lottie/p;

    .line 126
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    .line 127
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    .line 145
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    .line 169
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Loy;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/f;)Lmr;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    return-object p0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/f;)Loy;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    return-object p0
.end method

.method private animationsEnabled()Z
    .locals 1

    .line 977
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->systemAnimationsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->ignoreSystemAnimationsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance v1, Lmr;

    .line 433
    invoke-static {v0}, Lob;->a(Lcom/airbnb/lottie/d;)Lmt;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->i()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lmr;-><init>(Lcom/airbnb/lottie/f;Lmt;Ljava/util/List;Lcom/airbnb/lottie/d;)V

    iput-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    .line 434
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->outlineMasksAndMattes:Z

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmr;->a(Z)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    invoke-virtual {v0, v1}, Lmr;->b(Z)V

    return-void
.end method

.method private computeRenderMode()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/f;->renderMode:Lcom/airbnb/lottie/p;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->a()Z

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->b()I

    move-result v0

    .line 364
    invoke-virtual {v1, v2, v3, v0}, Lcom/airbnb/lottie/p;->a(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 1477
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 5

    .line 1465
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    .line 1466
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 1467
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 1468
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    .line 1469
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 1465
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1334
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    .line 1335
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1340
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1341
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1342
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1344
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1345
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1347
    iget-object v1, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1349
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/f;->alpha:I

    invoke-virtual {v0, p1, v1, v2}, Lmr;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureSoftwareRenderingBitmap(II)V
    .locals 3

    .line 1446
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1447
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1448
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1456
    iget-object p1, p0, Lcom/airbnb/lottie/f;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1457
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    goto :goto_1

    .line 1450
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1451
    iget-object p1, p0, Lcom/airbnb/lottie/f;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1452
    iput-boolean v1, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private ensureSoftwareRenderingObjectsInitialized()V
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    .line 1433
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    .line 1434
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    .line 1435
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    .line 1436
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 1437
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    .line 1438
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    .line 1439
    new-instance v0, Ljl;

    invoke-direct {v0}, Ljl;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingPaint:Landroid/graphics/Paint;

    .line 1440
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    .line 1441
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    .line 1442
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3

    .line 1265
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1270
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1271
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getFontAssetManager()Lky;
    .locals 3

    .line 1251
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Lky;

    if-nez v0, :cond_1

    .line 1257
    new-instance v0, Lky;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/f;->fontAssetDelegate:Lcom/airbnb/lottie/a;

    invoke-direct {v0, v1, v2}, Lky;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Lky;

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Lky;

    return-object v0
.end method

.method private getImageAssetManager()Lkz;
    .locals 5

    .line 1224
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    iput-object v1, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    if-nez v0, :cond_2

    .line 1234
    new-instance v0, Lkz;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/f;->imageAssetDelegate:Lcom/airbnb/lottie/b;

    iget-object v4, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    .line 1235
    invoke-virtual {v4}, Lcom/airbnb/lottie/d;->l()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lkz;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/b;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    return-object v0
.end method

.method private ignoreCanvasClipBounds()Z
    .locals 4

    .line 1499
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1500
    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1504
    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1505
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1506
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lmr;)V
    .locals 8

    .line 1360
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->ensureSoftwareRenderingObjectsInitialized()V

    .line 1366
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1369
    iget-object v0, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1370
    iget-object v0, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/f;->convertRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 1371
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1372
    iget-object v0, p0, Lcom/airbnb/lottie/f;->canvasClipBoundsRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/f;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1374
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lmr;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 1383
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1387
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1389
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1390
    iget-object v3, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/airbnb/lottie/f;->scaleRect(Landroid/graphics/RectF;FF)V

    .line 1392
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->ignoreCanvasClipBounds()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1393
    iget-object v3, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/airbnb/lottie/f;->canvasClipBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 1396
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1397
    iget-object v4, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 1403
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/airbnb/lottie/f;->ensureSoftwareRenderingBitmap(II)V

    .line 1405
    iget-boolean v5, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    if-eqz v5, :cond_4

    .line 1406
    iget-object v5, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1407
    iget-object v5, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1410
    iget-object v0, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget-object v5, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1412
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1413
    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->renderingMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/f;->alpha:I

    invoke-virtual {p2, v0, v2, v5}, Lmr;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 1420
    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1421
    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingOriginalCanvasMatrixInverse:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->softwareRenderingTransformedBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1422
    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/f;->convertRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1425
    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1426
    iget-object p2, p0, Lcom/airbnb/lottie/f;->softwareRenderingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/f;->softwareRenderingSrcBoundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->softwareRenderingDstBoundsRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->softwareRenderingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private scaleRect(Landroid/graphics/RectF;FF)V
    .locals 3

    .line 1485
    iget v0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addValueCallback(Lle;Ljava/lang/Object;Lpe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lle;",
            "TT;",
            "Lpe<",
            "TT;>;)V"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$Oxm0P8JrtCEpuk99iH67AiCx-xQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/-$$Lambda$f$Oxm0P8JrtCEpuk99iH67AiCx-xQ;-><init>(Lcom/airbnb/lottie/f;Lle;Ljava/lang/Object;Lpe;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1105
    :cond_0
    sget-object v0, Lle;->a:Lle;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1106
    iget-object p1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    invoke-virtual {p1, p2, p3}, Lmr;->a(Ljava/lang/Object;Lpe;)V

    goto :goto_1

    .line 1108
    :cond_1
    invoke-virtual {p1}, Lle;->a()Llf;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1109
    invoke-virtual {p1}, Lle;->a()Llf;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Llf;->a(Ljava/lang/Object;Lpe;)V

    goto :goto_1

    .line 1112
    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->resolveKeyPath(Lle;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1114
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lle;

    invoke-virtual {v2}, Lle;->a()Llf;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Llf;->a(Ljava/lang/Object;Lpe;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_4

    .line 1121
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 1122
    sget-object p1, Lcom/airbnb/lottie/k;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 1126
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setProgress(F)V

    :cond_4
    return-void
.end method

.method public addValueCallback(Lle;Ljava/lang/Object;Lpg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lle;",
            "TT;",
            "Lpg<",
            "TT;>;)V"
        }
    .end annotation

    .line 1138
    new-instance v0, Lcom/airbnb/lottie/f$2;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/f$2;-><init>(Lcom/airbnb/lottie/f;Lpg;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/f;->addValueCallback(Lle;Ljava/lang/Object;Lpe;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1044
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->cancel()V

    .line 1045
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_0
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->cancel()V

    .line 443
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_0
    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    .line 448
    iput-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    .line 449
    iput-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    .line 450
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->f()V

    .line 451
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "Drawable#draw"

    .line 501
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 503
    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->safeMode:Z

    if-eqz v1, :cond_1

    .line 505
    :try_start_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/f;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lmr;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/f;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Lottie crashed in draw!"

    .line 511
    invoke-static {v1, p1}, Lox;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 514
    :cond_1
    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/f;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lmr;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/f;->drawDirectlyToCanvas(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p1, 0x0

    .line 521
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    .line 522
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    .line 531
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 536
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    if-eqz v1, :cond_1

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 538
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 539
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/f;->renderAndDrawAsBitmap(Landroid/graphics/Canvas;Lmr;)V

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 542
    :cond_1
    iget v1, p0, Lcom/airbnb/lottie/f;->alpha:I

    invoke-virtual {v0, p1, p2, v1}, Lmr;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :goto_0
    const/4 p1, 0x0

    .line 544
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2

    .line 198
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    .line 203
    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_1
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    .line 207
    iget-object p1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz p1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->buildCompositionLayer()V

    :cond_2
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    return v0
.end method

.method public endAnimation()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->j()V

    .line 604
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/airbnb/lottie/f;->alpha:I

    return v0
.end method

.method public getBitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1196
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->getImageAssetManager()Lkz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {v0, p1}, Lkz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClipToCompositionBounds()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/d;
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->e()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1172
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->getImageAssetManager()Lkz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0, p1}, Lkz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/g;

    :goto_0
    if-eqz p1, :cond_2

    .line 1178
    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLottieImageAssetForId(Ljava/lang/String;)Lcom/airbnb/lottie/g;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1220
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/g;

    return-object p1
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->maintainOriginalImageBounds:Z

    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->n()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->m()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/n;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->c()Lcom/airbnb/lottie/n;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->d()F

    move-result v0

    return v0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/p;
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->useSoftwareRendering:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/p;->SOFTWARE:Lcom/airbnb/lottie/p;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p;->HARDWARE:Lcom/airbnb/lottie/p;

    :goto_0
    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->h()F

    move-result v0

    return v0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/r;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/r;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 1243
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->getFontAssetManager()Lky;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0, p1, p2}, Lky;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasMasks()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1305
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1309
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    .line 472
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 965
    :cond_0
    invoke-virtual {v0}, Loy;->isRunning()Z

    move-result v0

    return v0
.end method

.method isAnimatingOrWillAnimateOnVisible()Z
    .locals 2

    .line 969
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->isRunning()Z

    move-result v0

    return v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    sget-object v1, Lcom/airbnb/lottie/f$b;->PLAY:Lcom/airbnb/lottie/f$b;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    sget-object v1, Lcom/airbnb/lottie/f$b;->RESUME:Lcom/airbnb/lottie/f$b;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->isApplyingOpacityToLayersEnabled:Z

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addValueCallback$14$f(Lle;Ljava/lang/Object;Lpe;Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 1101
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/f;->addValueCallback(Lle;Ljava/lang/Object;Lpe;)V

    return-void
.end method

.method public synthetic lambda$playAnimation$0$f(Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 578
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->playAnimation()V

    return-void
.end method

.method public synthetic lambda$resumeAnimation$1$f(Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 616
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->resumeAnimation()V

    return-void
.end method

.method public synthetic lambda$setFrame$12$f(ILcom/airbnb/lottie/d;)V
    .locals 0

    .line 876
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setFrame(I)V

    return-void
.end method

.method public synthetic lambda$setMaxFrame$4$f(ILcom/airbnb/lottie/d;)V
    .locals 0

    .line 675
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMaxFrame(I)V

    return-void
.end method

.method public synthetic lambda$setMaxFrame$7$f(Ljava/lang/String;Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 723
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setMaxProgress$5$f(FLcom/airbnb/lottie/d;)V
    .locals 0

    .line 693
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMaxProgress(F)V

    return-void
.end method

.method public synthetic lambda$setMinAndMaxFrame$10$f(IILcom/airbnb/lottie/d;)V
    .locals 0

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public synthetic lambda$setMinAndMaxFrame$8$f(Ljava/lang/String;Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setMinAndMaxFrame$9$f(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/d;)V
    .locals 0

    .line 762
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$setMinAndMaxProgress$11$f(FFLcom/airbnb/lottie/d;)V
    .locals 0

    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/f;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method public synthetic lambda$setMinFrame$2$f(ILcom/airbnb/lottie/d;)V
    .locals 0

    .line 643
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinFrame(I)V

    return-void
.end method

.method public synthetic lambda$setMinFrame$6$f(Ljava/lang/String;Lcom/airbnb/lottie/d;)V
    .locals 0

    .line 706
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setMinProgress$3$f(FLcom/airbnb/lottie/d;)V
    .locals 0

    .line 661
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinProgress(F)V

    return-void
.end method

.method public synthetic lambda$setProgress$13$f(FLcom/airbnb/lottie/d;)V
    .locals 0

    .line 892
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setProgress(F)V

    return-void
.end method

.method public loop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Loy;->setRepeatCount(I)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1052
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->k()V

    .line 1053
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$9SW9rG2fZyEKydgFiG6PpoLsDfk;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/-$$Lambda$f$9SW9rG2fZyEKydgFiG6PpoLsDfk;-><init>(Lcom/airbnb/lottie/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->computeRenderMode()V

    .line 583
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->i()V

    .line 586
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    goto :goto_0

    .line 588
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/f$b;->PLAY:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    .line 591
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 592
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getMinFrame()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getMaxFrame()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f;->setFrame(I)V

    .line 593
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->j()V

    .line 594
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 595
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_5
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->removeAllUpdateListeners()V

    .line 844
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    iget-object v1, p0, Lcom/airbnb/lottie/f;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Loy;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lle;",
            ")",
            "Ljava/util/List<",
            "Lle;",
            ">;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 1083
    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1086
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    iget-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    new-instance v2, Lle;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lle;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lmr;->a(Lle;ILjava/util/List;Lle;)V

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$-e4q2x7jAj5q2VsfVGfW6Jp9Czk;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/-$$Lambda$f$-e4q2x7jAj5q2VsfVGfW6Jp9Czk;-><init>(Lcom/airbnb/lottie/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->computeRenderMode()V

    .line 621
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->l()V

    .line 624
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    goto :goto_0

    .line 626
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/f$b;->RESUME:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    .line 629
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 630
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getMinFrame()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getMaxFrame()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f;->setFrame(I)V

    .line 631
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->j()V

    .line 632
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 633
    sget-object v0, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object v0, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_5
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0}, Loy;->g()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1314
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1318
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcom/airbnb/lottie/f;->alpha:I

    .line 481
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->isApplyingOpacityToLayersEnabled:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    if-eq p1, v0, :cond_1

    .line 223
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->clipToCompositionBounds:Z

    .line 224
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lmr;->b(Z)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    .line 491
    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/d;)Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->isDirty:Z

    .line 296
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->clearComposition()V

    .line 297
    iput-object p1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    .line 298
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->buildCompositionLayer()V

    .line 299
    iget-object v1, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v1, p1}, Loy;->a(Lcom/airbnb/lottie/d;)V

    .line 300
    iget-object v1, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v1}, Loy;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/f;->setProgress(F)V

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/f$a;

    if-eqz v2, :cond_1

    .line 310
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/f$a;->run(Lcom/airbnb/lottie/d;)V

    .line 312
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-boolean v1, p0, Lcom/airbnb/lottie/f;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/d;->b(Z)V

    .line 317
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->computeRenderMode()V

    .line 321
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 322
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 323
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/a;)V
    .locals 1

    .line 1019
    iput-object p1, p0, Lcom/airbnb/lottie/f;->fontAssetDelegate:Lcom/airbnb/lottie/a;

    .line 1020
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Lky;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {v0, p1}, Lky;->a(Lcom/airbnb/lottie/a;)V

    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$QyrsTPhTmEcfS5EtbbnWouvTwJE;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$QyrsTPhTmEcfS5EtbbnWouvTwJE;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Loy;->a(F)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0

    .line 994
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->ignoreSystemAnimationsDisabled:Z

    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/b;)V
    .locals 1

    .line 1009
    iput-object p1, p0, Lcom/airbnb/lottie/f;->imageAssetDelegate:Lcom/airbnb/lottie/b;

    .line 1010
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Lkz;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0, p1}, Lkz;->a(Lcom/airbnb/lottie/b;)V

    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->maintainOriginalImageBounds:Z

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$wKrH7vKYH4Hi2JEOmSQ7uVa7-yg;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$wKrH7vKYH4Hi2JEOmSQ7uVa7-yg;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Loy;->b(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$KXJzIDxZ4g5t8QQFMC2J7FyyRc0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$KXJzIDxZ4g5t8QQFMC2J7FyyRc0;-><init>(Lcom/airbnb/lottie/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 726
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)Llh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    iget p1, v0, Llh;->a:F

    iget v0, v0, Llh;->b:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMaxFrame(I)V

    return-void

    .line 728
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxProgress(F)V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$iH9DVdygJhteMHLxTuq4AN4yQLo;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$iH9DVdygJhteMHLxTuq4AN4yQLo;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 696
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->f()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lpa;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMaxFrame(I)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$cwI9goPbPkUDO7Caz0yWwl4mr6M;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/-$$Lambda$f$cwI9goPbPkUDO7Caz0yWwl4mr6M;-><init>(Lcom/airbnb/lottie/f;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Loy;->a(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$GKVdPl-2GlHpFoLauIg4_onhBnA;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$GKVdPl-2GlHpFoLauIg4_onhBnA;-><init>(Lcom/airbnb/lottie/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 744
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)Llh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget p1, v0, Llh;->a:F

    float-to-int p1, p1

    .line 749
    iget v0, v0, Llh;->b:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(II)V

    return-void

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;-><init>(Lcom/airbnb/lottie/f;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 765
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)Llh;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    .line 769
    iget p1, v0, Llh;->a:F

    float-to-int p1, p1

    .line 771
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)Llh;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 775
    iget p2, v0, Llh;->a:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 777
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(II)V

    return-void

    .line 773
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 767
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$AjtnjWmvODJe54_TYs63_LB5u5E;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/-$$Lambda$f$AjtnjWmvODJe54_TYs63_LB5u5E;-><init>(Lcom/airbnb/lottie/f;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 805
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->f()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lpa;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    .line 806
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->f()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->g()F

    move-result v1

    invoke-static {v0, v1, p2}, Lpa;->a(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/f;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$jgJd4e4YRWWl6KNcMjOLC_bpTs0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$jgJd4e4YRWWl6KNcMjOLC_bpTs0;-><init>(Lcom/airbnb/lottie/f;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->a(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$2mULuj5rOXdLwu-d09kbBqusFYQ;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$2mULuj5rOXdLwu-d09kbBqusFYQ;-><init>(Lcom/airbnb/lottie/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 709
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)Llh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    iget p1, v0, Llh;->a:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinFrame(I)V

    return-void

    .line 711
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinProgress(F)V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$r5Y6pAgqTaAURTf4eViCm1uNFro;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$r5Y6pAgqTaAURTf4eViCm1uNFro;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 664
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->f()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v1}, Lcom/airbnb/lottie/d;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lpa;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->setMinFrame(I)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->outlineMasksAndMattes:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 385
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->outlineMasksAndMattes:Z

    .line 386
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lmr;

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {v0, p1}, Lmr;->a(Z)V

    :cond_1
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 369
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->performanceTrackingEnabled:Z

    .line 370
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/-$$Lambda$f$WA_VoIS8qAmCjURlT6Am9oM1wOE;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/-$$Lambda$f$WA_VoIS8qAmCjURlT6Am9oM1wOE;-><init>(Lcom/airbnb/lottie/f;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 895
    invoke-static {v0}, Lcom/airbnb/lottie/c;->a(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    iget-object v2, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v2, p1}, Lcom/airbnb/lottie/d;->a(F)F

    move-result p1

    invoke-virtual {v1, p1}, Loy;->a(F)V

    .line 897
    invoke-static {v0}, Lcom/airbnb/lottie/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/p;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/airbnb/lottie/f;->renderMode:Lcom/airbnb/lottie/p;

    .line 348
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->computeRenderMode()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->safeMode:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {v0, p1}, Loy;->c(F)V

    return-void
.end method

.method setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 981
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->systemAnimationsEnabled:Z

    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/r;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/r;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1279
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1280
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    .line 1283
    iget-object p1, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    sget-object v0, Lcom/airbnb/lottie/f$b;->PLAY:Lcom/airbnb/lottie/f$b;

    if-ne p1, v0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->playAnimation()V

    goto :goto_0

    .line 1285
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    sget-object v0, Lcom/airbnb/lottie/f$b;->RESUME:Lcom/airbnb/lottie/f$b;

    if-ne p1, v0, :cond_3

    .line 1286
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->resumeAnimation()V

    goto :goto_0

    .line 1289
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/f;->animator:Loy;

    invoke-virtual {p1}, Loy;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1290
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->pauseAnimation()V

    .line 1291
    sget-object p1, Lcom/airbnb/lottie/f$b;->RESUME:Lcom/airbnb/lottie/f$b;

    iput-object p1, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 1293
    sget-object p1, Lcom/airbnb/lottie/f$b;->NONE:Lcom/airbnb/lottie/f$b;

    iput-object p1, p0, Lcom/airbnb/lottie/f;->onVisibleAction:Lcom/airbnb/lottie/f$b;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    .line 552
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 553
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->playAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 563
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->endAnimation()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1323
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1327
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1155
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->getImageAssetManager()Lkz;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 1157
    invoke-static {p1}, Lox;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1161
    :cond_0
    invoke-virtual {v0, p1, p2}, Lkz;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1162
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-object p1
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->j()Landroidx/collection/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/f;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
