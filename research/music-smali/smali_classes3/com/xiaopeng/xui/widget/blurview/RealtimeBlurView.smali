.class public Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;
.super Lcom/xiaopeng/xui/view/XView;
.source "RealtimeBlurView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;,
        Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;
    }
.end annotation


# static fields
.field private static BLUR_IMPL:I

.field private static RENDERING_COUNT:I

.field private static STOP_EXCEPTION:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;


# instance fields
.field private dirtyField:Ljava/lang/reflect/Field;

.field private lastHeight:I

.field protected lastTime:J

.field private lastWidth:I

.field private volatile mBitmapToBlur:Landroid/graphics/Bitmap;

.field private final mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

.field private mBlurRadius:F

.field private volatile mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDecorView:Landroid/view/View;

.field private mDifferentRoot:Z

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mViewRootImpl:Landroid/view/ViewRootImpl;

.field private final onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field resetRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 400
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;)V

    sput-object v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->STOP_EXCEPTION:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastTime:J

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I

    .line 211
    new-instance v1, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$bxWnZA4Vg95ScTUYGNBzBzb9hOg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$bxWnZA4Vg95ScTUYGNBzBzb9hOg;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 221
    new-instance v1, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getBlurImpl()Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    .line 64
    sget-object v1, Lbyg$n;->RealtimeBlurView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 65
    sget v1, Lbyg$n;->RealtimeBlurView_realtimeBlurRadius:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 65
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    .line 67
    sget p1, Lbyg$n;->RealtimeBlurView_realtimeDownsampleFactor:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    .line 68
    sget p1, Lbyg$n;->RealtimeBlurView_realtimeOverlayColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mIsRendering:Z

    return p1
.end method

.method static synthetic access$508()I
    .locals 2

    .line 34
    sget v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .line 34
    sget v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private initViewRootImpDirty()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 307
    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-nez v1, :cond_0

    .line 308
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 311
    check-cast v0, Landroid/view/ViewRootImpl;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 316
    :cond_1
    :try_start_0
    const-class v0, Landroid/view/ViewRootImpl;

    const-string v1, "mDirty"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private isViewRootInvalidate()Z
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 341
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 342
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method private releaseBitmap()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private resetDirty()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 327
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 328
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mIsRendering:Z

    if-nez v0, :cond_1

    .line 365
    sget v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->RENDERING_COUNT:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object p1, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->STOP_EXCEPTION:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;

    throw p1
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 393
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 269
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 270
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 273
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBlurImpl()Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;
    .locals 4

    .line 76
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;-><init>()V

    .line 77
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x4

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->release()V

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x3

    .line 81
    sput v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->BLUR_IMPL:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;-><init>()V

    return-object v0

    .line 83
    :catch_0
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/EmptyBlurImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/blurview/EmptyBlurImpl;-><init>()V

    return-object v0
.end method

.method public synthetic lambda$new$1$RealtimeBlurView()V
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->isViewRootInvalidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$dA0Q4fEiyQn-YZ_Vj3BGeaaiHAY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$dA0Q4fEiyQn-YZ_Vj3BGeaaiHAY;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$0$RealtimeBlurView()V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetDirty()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$2$RealtimeBlurView()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 284
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->initViewRootImpDirty()V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    new-instance v2, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$JdxUgB5fAxXkKWLBd_8Glp7YtPg;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$JdxUgB5fAxXkKWLBd_8Glp7YtPg;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    .line 296
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 301
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->onDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    .line 356
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->releaseBitmap()V

    .line 357
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 374
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected prepare()Z
    .locals 7

    .line 136
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    return v2

    .line 141
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    div-float/2addr v0, v1

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    move v0, v3

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getWidth()I

    move-result v3

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    const/4 v5, 0x1

    .line 151
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v1, v4

    .line 152
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 154
    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 156
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v1, :cond_9

    .line 164
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    if-ne v4, v3, :cond_3

    iget v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I

    if-eq v4, v1, :cond_4

    .line 165
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 167
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    return v2

    .line 170
    :cond_5
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 171
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    if-ne v4, v3, :cond_6

    iget v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I

    if-eq v4, v1, :cond_7

    .line 172
    :cond_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 174
    :cond_7
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_8

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    return v2

    .line 177
    :cond_8
    :try_start_2
    iput v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    .line 178
    iput v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    :cond_9
    if-eqz v4, :cond_b

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v4, v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    iput-boolean v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    goto :goto_0

    :cond_a
    return v2

    :cond_b
    :goto_0
    return v5

    .line 186
    :catchall_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    return v2

    :catch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    return v2
.end method

.method protected release()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->release()V

    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->releaseBitmap()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 110
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void
.end method
