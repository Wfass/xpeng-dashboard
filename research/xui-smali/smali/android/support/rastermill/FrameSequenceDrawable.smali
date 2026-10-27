.class public Landroid/support/rastermill/FrameSequenceDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;,
        Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DECODING_THREAD_ID:I = 0x0

.field private static final DEFAULT_DELAY_MS:J = 0x64L

.field public static final LOOP_DEFAULT:I = 0x3

.field public static final LOOP_FINITE:I = 0x1

.field public static final LOOP_INF:I = 0x2

.field public static final LOOP_ONCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MIN_DELAY_MS:J = 0x14L

.field private static final STATE_DECODING:I = 0x2

.field private static final STATE_READY_TO_SWAP:I = 0x4

.field private static final STATE_SCHEDULED:I = 0x1

.field private static final STATE_WAITING_TO_SWAP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FrameSequence"

.field private static sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field private static sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mBackBitmap:Landroid/graphics/Bitmap;

.field private mBackBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field private mCircleMaskEnabled:Z

.field private mCurrentLoop:I

.field private mDecodeRunnable:Ljava/lang/Runnable;

.field private final mDecodingThreadHandler:Landroid/os/Handler;

.field private final mDecodingThreadId:I

.field private mDestroyed:Z

.field private mFinishedCallbackRunnable:Ljava/lang/Runnable;

.field private final mFrameSequence:Landroid/support/rastermill/FrameSequence;

.field private final mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

.field private mFrontBitmap:Landroid/graphics/Bitmap;

.field private mFrontBitmapShader:Landroid/graphics/BitmapShader;

.field private mLastNextFrameToDecode:I

.field private mLastSwap:J

.field private final mLock:Ljava/lang/Object;

.field private mLoopBehavior:I

.field private mLoopCount:I

.field private mNextFrameToDecode:I

.field private mNextSwap:J

.field private mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScheduleSelfRunnable:Ljava/lang/Runnable;

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mState:I

.field private mTempRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable$1;

    invoke-direct {v0}, Landroid/support/rastermill/FrameSequenceDrawable$1;-><init>()V

    sput-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;)V
    .locals 1
    .param p1, "frameSequence"    # Landroid/support/rastermill/FrameSequence;

    .line 270
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;I)V
    .locals 1
    .param p1, "frameSequence"    # Landroid/support/rastermill/FrameSequence;
    .param p2, "decodingThreadId"    # I

    .line 279
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 1
    .param p1, "frameSequence"    # Landroid/support/rastermill/FrameSequence;
    .param p2, "bitmapProvider"    # Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V
    .locals 6
    .param p1, "frameSequence"    # Landroid/support/rastermill/FrameSequence;
    .param p2, "bitmapProvider"    # Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;
    .param p3, "decodingThreadId"    # I

    .line 292
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    .line 161
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    .line 162
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    .line 170
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    .line 178
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable$2;

    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable$2;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Ljava/lang/Runnable;

    .line 231
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable$3;

    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable$3;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    .line 249
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable$4;

    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable$4;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mScheduleSelfRunnable:Ljava/lang/Runnable;

    .line 293
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 295
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    .line 296
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->createState()Landroid/support/rastermill/FrameSequence$State;

    move-result-object v2

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    .line 297
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v2

    .line 298
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v3

    .line 300
    .local v3, "height":I
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 301
    invoke-static {p2, v2, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 302
    invoke-static {p2, v2, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 303
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 304
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    .line 305
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 307
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    .line 309
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 310
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    .line 311
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    iget-object v5, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v5, v1}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 312
    iput p3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadId:I

    .line 313
    invoke-static {p3}, Landroid/support/rastermill/DecodingThreadFactory;->getDecodingThreadHandler(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadHandler:Landroid/os/Handler;

    .line 314
    return-void

    .line 293
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$1200(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return v0
.end method

.method static synthetic access$202(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 35
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return v0
.end method

.method static synthetic access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p1, "x1"    # J

    .line 35
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceDrawable;

    .line 35
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mScheduleSelfRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .line 35
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmapProvider"    # Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .line 258
    invoke-interface {p0, p1, p2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->acquireBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 266
    return-object v0

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid bitmap provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkDestroyedLocked()V
    .locals 2

    .line 346
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform operation on recycled drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleDecodeLocked(Z)V
    .locals 2
    .param p1, "resume"    # Z

    .line 491
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    goto :goto_0

    .line 495
    :cond_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 497
    :goto_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .line 368
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_3

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "bitmapToReleaseB":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 377
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 378
    .local v2, "bitmapToReleaseA":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 380
    iget v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 381
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object v0, v4

    .line 382
    iput-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 385
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    if-eqz v0, :cond_1

    .line 391
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v1, v0}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    :cond_1
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequence$State;->destroy()V

    .line 397
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameSequenceDrawable.destroy : mFrameSequence = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 400
    :cond_2
    return-void

    .line 386
    .end local v2    # "bitmapToReleaseA":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 369
    .end local v0    # "bitmapToReleaseB":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapProvider must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 414
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 416
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 419
    iget-wide v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v1, v6, v3

    if-gtz v1, :cond_0

    .line 420
    iput v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    if-ne v1, v2, :cond_6

    .line 427
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 428
    .local v1, "tmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 429
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 431
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 432
    .local v2, "tmpShader":Landroid/graphics/BitmapShader;
    iget-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    iput-object v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 433
    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    .line 437
    const/4 v6, 0x1

    .line 438
    .local v6, "continueLooping":Z
    iget v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    iget-object v8, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v8}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_4

    .line 439
    iget v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    add-int/2addr v7, v9

    iput v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    .line 440
    iget v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v7, v9, :cond_1

    iget v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget v8, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    if-eq v7, v8, :cond_2

    :cond_1
    iget v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v7, v5, :cond_3

    iget v5, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget-object v7, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    .line 441
    invoke-virtual {v7}, Landroid/support/rastermill/FrameSequence;->getDefaultLoopCount()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 442
    :cond_2
    const/4 v6, 0x0

    .line 445
    :cond_3
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 446
    const-string v5, "FrameSequenceDrawable show last frame"

    invoke-static {v5}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 450
    :cond_4
    if-eqz v6, :cond_5

    .line 451
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked(Z)V

    goto :goto_0

    .line 453
    :cond_5
    iget-object v5, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 456
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    .end local v2    # "tmpShader":Landroid/graphics/BitmapShader;
    .end local v6    # "continueLooping":Z
    :cond_6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    if-eqz v0, :cond_7

    .line 459
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 460
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 461
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 462
    .local v2, "bitmapHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, v1

    div-float/2addr v3, v5

    .line 463
    .local v3, "scaleX":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 465
    .local v4, "scaleY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 468
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 471
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 472
    .local v5, "unscaledCircleDiameter":F
    div-float v6, v5, v3

    .line 473
    .local v6, "scaledDiameterX":F
    div-float v7, v5, v4

    .line 476
    .local v7, "scaledDiameterY":F
    iget-object v8, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    int-to-float v9, v1

    sub-float/2addr v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v11, v2

    sub-float/2addr v11, v7

    div-float/2addr v11, v10

    int-to-float v12, v1

    add-float/2addr v12, v6

    div-float/2addr v12, v10

    int-to-float v13, v2

    add-float/2addr v13, v7

    div-float/2addr v13, v10

    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    iget-object v8, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 482
    iget-object v8, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "bitmapWidth":I
    .end local v2    # "bitmapHeight":I
    .end local v3    # "scaleX":F
    .end local v4    # "scaleY":F
    .end local v5    # "unscaledCircleDiameter":F
    .end local v6    # "scaledDiameterX":F
    .end local v7    # "scaledDiameterY":F
    goto :goto_1

    .line 485
    :cond_7
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 486
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 488
    :goto_1
    return-void

    .line 456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence$State;->destroy()V

    .line 406
    iget v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadId:I

    invoke-static {v0}, Landroid/support/rastermill/DecodingThreadFactory;->releaseDecodingThreadHandler(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 409
    throw v0
.end method

.method public final getCircleMaskEnabled()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    return v0
.end method

.method public getFrameSequence()Landroid/support/rastermill/FrameSequence;
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    return-object v0
.end method

.method public getFrontBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 616
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    .line 618
    :cond_0
    monitor-exit v1

    .line 619
    return-object v0

    .line 618
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 604
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 609
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 2

    .line 352
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-boolean v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 551
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 537
    return-void
.end method

.method public resume()V
    .locals 3

    .line 540
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 543
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 544
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked(Z)V

    .line 545
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 547
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "invalidate":Z
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    iget v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 506
    const/4 v2, 0x4

    iput v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 507
    const/4 v0, 0x1

    .line 509
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    .line 513
    :cond_1
    return-void

    .line 509
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 589
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 590
    return-void
.end method

.method public final setCircleMaskEnabled(Z)V
    .locals 4
    .param p1, "circleMaskEnabled"    # Z

    .line 323
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    if-eq v0, p1, :cond_1

    .line 324
    iput-boolean p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    .line 325
    if-eqz p1, :cond_0

    .line 326
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 328
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 332
    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 336
    :goto_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    .line 339
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 594
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 595
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 584
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 585
    return-void
.end method

.method public setLoopBehavior(I)V
    .locals 0
    .param p1, "loopBehavior"    # I

    .line 127
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    .line 128
    return-void
.end method

.method public setLoopCount(I)V
    .locals 0
    .param p1, "loopCount"    # I

    .line 134
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    .line 135
    return-void
.end method

.method public setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V
    .locals 0
    .param p1, "onFinishedListener"    # Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 95
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 96
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 568
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 570
    .local v0, "changed":Z
    if-nez p1, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    goto :goto_0

    .line 572
    :cond_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_2

    .line 573
    :cond_1
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 574
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 577
    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 3

    .line 517
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 520
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    .line 521
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    .line 522
    invoke-direct {p0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked(Z)V

    .line 523
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 525
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 529
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mScheduleSelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    invoke-virtual {p0, p0}, Landroid/support/rastermill/FrameSequenceDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 533
    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 558
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    .line 560
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 561
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 564
    return-void

    .line 562
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
