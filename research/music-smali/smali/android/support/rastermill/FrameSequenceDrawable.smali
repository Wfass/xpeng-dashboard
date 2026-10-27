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

    .line 270
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;I)V
    .locals 1

    .line 279
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, p2, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V
    .locals 4

    .line 292
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    const/4 v1, 0x3

    .line 161
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    const/4 v1, 0x1

    .line 162
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
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result p1

    .line 300
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 301
    invoke-static {p2, v2, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 302
    invoke-static {p2, v2, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 303
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 304
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    .line 305
    iget-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const-wide/16 p1, 0x0

    .line 307
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    const/4 p1, -0x1

    .line 309
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 310
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    .line 311
    iget-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1, p1}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 312
    iput p3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadId:I

    .line 313
    invoke-static {p3}, Landroid/support/rastermill/DecodingThreadFactory;->getDecodingThreadHandler(I)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadHandler:Landroid/os/Handler;

    return-void

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$1000(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    return-object p0
.end method

.method static synthetic access$1102(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$1200(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 0

    .line 35
    iget p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return p0
.end method

.method static synthetic access$202(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 0

    .line 35
    iget p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0

    .line 35
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mScheduleSelfRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .line 35
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 258
    invoke-interface {p0, p1, p2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->acquireBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lt p1, p2, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_0

    return-object p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid bitmap provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkDestroyedLocked()V
    .locals 2

    .line 346
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform operation on recycled drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleDecodeLocked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 491
    iput v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    if-eqz p1, :cond_0

    .line 493
    iget p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    goto :goto_0

    .line 495
    :cond_0
    iget p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    add-int/2addr p1, v0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 497
    :goto_0
    iget-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodingThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 368
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 377
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 378
    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 380
    iget v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 381
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 382
    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object v2, v3

    :cond_0
    const/4 v3, 0x1

    .line 385
    iput-boolean v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    .line 386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_1

    .line 391
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    :cond_1
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence$State;->destroy()V

    .line 397
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameSequenceDrawable.destroy : mFrameSequence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 386
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 369
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapProvider must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

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
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 429
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 431
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 432
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 433
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    .line 438
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v7, 0x0

    if-ne v1, v2, :cond_4

    .line 439
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    add-int/2addr v1, v6

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    .line 440
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v6, :cond_1

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v5, :cond_3

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    .line 441
    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequence;->getDefaultLoopCount()I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_2
    move v6, v7

    .line 445
    :cond_3
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "FrameSequenceDrawable show last frame"

    .line 446
    invoke-static {v1}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    :cond_4
    if-eqz v6, :cond_5

    .line 451
    invoke-direct {p0, v7}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked(Z)V

    goto :goto_0

    .line 453
    :cond_5
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 456
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
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 461
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 463
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 468
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 469
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 471
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v3

    div-float/2addr v0, v5

    .line 476
    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    sub-float v5, v1, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v7, v2, v0

    div-float/2addr v7, v6

    add-float/2addr v1, v3

    div-float/2addr v1, v6

    add-float/2addr v2, v0

    div-float/2addr v2, v6

    invoke-virtual {v4, v5, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 482
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

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

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 456
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1

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

    return-void

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
    .locals 2

    .line 614
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 618
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    :catchall_0
    move-exception v1

    .line 354
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

    :catchall_0
    move-exception v1

    .line 553
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

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

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 506
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 509
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 509
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 589
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setCircleMaskEnabled(Z)V
    .locals 4

    .line 323
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    if-eq v0, p1, :cond_1

    .line 324
    iput-boolean p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

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

    :cond_0
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmapShader:Landroid/graphics/BitmapShader;

    .line 332
    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmapShader:Landroid/graphics/BitmapShader;

    .line 336
    :goto_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 594
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 584
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setLoopBehavior(I)V
    .locals 0

    .line 127
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 134
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    return-void
.end method

.method public setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 568
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_2

    .line 573
    :cond_1
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 574
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

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

    :cond_0
    const/4 v1, 0x0

    .line 521
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

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 2

    .line 558
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastNextFrameToDecode:I

    const/4 v1, -0x1

    .line 560
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    const/4 v1, 0x0

    .line 561
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
