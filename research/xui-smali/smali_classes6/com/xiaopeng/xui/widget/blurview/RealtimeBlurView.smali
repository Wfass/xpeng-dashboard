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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastTime:J

    .line 54
    const/4 v0, 0x0

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
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->RealtimeBlurView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    .line 67
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    .line 68
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    .line 69
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 34
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;
    .param p1, "x1"    # Z

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
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initViewRootImpDirty()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 307
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewRootImpl;

    if-nez v1, :cond_0

    .line 308
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_0
    if-eqz v0, :cond_1

    .line 311
    move-object v1, v0

    check-cast v1, Landroid/view/ViewRootImpl;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 316
    :cond_1
    :try_start_0
    const-class v1, Landroid/view/ViewRootImpl;

    const-string v2, "mDirty"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    .line 317
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_1

    .line 318
    :catch_0
    move-exception v1

    .line 320
    :goto_1
    return-void
.end method

.method private isViewRootInvalidate()Z
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 342
    .local v0, "dirty":Landroid/graphics/Rect;
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

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 343
    .end local v0    # "dirty":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 346
    :cond_1
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->resetDirty()V

    .line 217
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->isViewRootInvalidate()Z

    move-result v0

    .line 213
    .local v0, "isViewRootInvalidate":Z
    if-nez v0, :cond_0

    .line 214
    new-instance v1, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$5ivX1nO1_aXwga7IiBdjGLV65yo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$5ivX1nO1_aXwga7IiBdjGLV65yo;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$2(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V
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

    .line 292
    return-void
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

    .line 128
    :cond_1
    return-void
.end method

.method private resetDirty()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->dirtyField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 328
    .local v0, "dirty":Landroid/graphics/Rect;
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

    .line 334
    .end local v0    # "dirty":Landroid/graphics/Rect;
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 336
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmapToBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

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

    .line 370
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->STOP_EXCEPTION:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException;

    throw v0
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "overlayColor"    # I

    .line 386
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 395
    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    .local v0, "ctx":Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 270
    move-object v2, v0

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 273
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 275
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getBlurImpl()Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;
    .locals 4

    .line 76
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;-><init>()V

    .line 77
    .local v0, "impl":Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x4

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;->release()V

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    const/4 v2, 0x3

    sput v2, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->BLUR_IMPL:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "impl":Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    nop

    .line 85
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/blurview/AndroidStockBlurImpl;-><init>()V

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/xiaopeng/xui/widget/blurview/EmptyBlurImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xui/widget/blurview/EmptyBlurImpl;-><init>()V

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 284
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    .local v0, "startTime":J
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    .line 287
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->initViewRootImpDirty()V

    .line 289
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    new-instance v4, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$JdxUgB5fAxXkKWLBd_8Glp7YtPg;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$JdxUgB5fAxXkKWLBd_8Glp7YtPg;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getRootView()Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    .line 296
    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 301
    :cond_1
    iput-boolean v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDifferentRoot:Z

    .line 303
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDecorView:Landroid/view/View;

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

    .line 358
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 374
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 376
    return-void
.end method

.method protected prepare()Z
    .locals 12

    .line 136
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    .line 138
    return v1

    .line 141
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    .line 142
    .local v0, "downsampleFactor":F
    iget v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    div-float/2addr v2, v0

    .line 143
    .local v2, "radius":F
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 144
    mul-float v4, v0, v2

    div-float v0, v4, v3

    .line 145
    const/high16 v2, 0x41c80000    # 25.0f

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getWidth()I

    move-result v3

    .line 149
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getHeight()I

    move-result v4

    .line 151
    .local v4, "height":I
    int-to-float v5, v3

    div-float/2addr v5, v0

    float-to-int v5, v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 152
    .local v5, "scaledWidth":I
    int-to-float v7, v4

    div-float/2addr v7, v0

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 154
    .local v7, "scaledHeight":I
    iget-boolean v8, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 156
    .local v8, "dirty":Z
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_2

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v7, :cond_c

    .line 159
    :cond_2
    const/4 v8, 0x1

    .line 162
    move v9, v1

    .line 164
    .local v9, "r":Z
    :try_start_0
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    if-ne v10, v5, :cond_3

    iget v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I

    if-eq v10, v7, :cond_4

    .line 165
    :cond_3
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 167
    :cond_4
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_6

    .line 168
    nop

    .line 185
    if-nez v9, :cond_5

    .line 186
    .end local v0    # "downsampleFactor":F
    .end local v2    # "radius":F
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "scaledWidth":I
    .end local v7    # "scaledHeight":I
    .end local v8    # "dirty":Z
    .end local v9    # "r":Z
    .end local p0    # "this":Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->release()V

    .line 187
    return v1

    .line 168
    .restart local v0    # "downsampleFactor":F
    .restart local v2    # "radius":F
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v5    # "scaledWidth":I
    .restart local v7    # "scaledHeight":I
    .restart local v8    # "dirty":Z
    .restart local v9    # "r":Z
    .restart local p0    # "this":Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;
    :cond_5
    return v1

    .line 170
    :cond_6
    :try_start_1
    new-instance v10, Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 171
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_7

    iget v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    if-ne v10, v5, :cond_7

    iget v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I

    if-eq v10, v7, :cond_8

    .line 172
    :cond_7
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    .line 174
    :cond_8
    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_a

    .line 175
    nop

    .line 185
    if-nez v9, :cond_9

    goto :goto_0

    .line 175
    :cond_9
    return v1

    .line 177
    :cond_a
    iput v5, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastWidth:I

    .line 178
    iput v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const/4 v9, 0x1

    .line 185
    if-nez v9, :cond_c

    goto :goto_0

    :catchall_0
    move-exception v6

    if-nez v9, :cond_b

    goto :goto_0

    .line 189
    :cond_b
    throw v6

    .line 181
    :catch_0
    move-exception v10

    .line 185
    if-nez v9, :cond_c

    goto :goto_0

    .line 192
    .end local v9    # "r":Z
    :cond_c
    if-eqz v8, :cond_e

    .line 193
    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-interface {v9, v10, v11, v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 194
    iput-boolean v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    goto :goto_1

    .line 196
    :cond_d
    return v1

    .line 200
    :cond_e
    :goto_1
    return v6
.end method

.method protected release()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurImpl:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$BlurImpl;->release()V

    .line 133
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 89
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 90
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mBlurRadius:F

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    .line 94
    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 2
    .param p1, "factor"    # F

    .line 97
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDownsampleFactor:F

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mDirty:Z

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->releaseBitmap()V

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    .line 107
    :cond_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Downsample factor must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverlayColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 110
    iget v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->mOverlayColor:I

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->invalidate()V

    .line 114
    :cond_0
    return-void
.end method
