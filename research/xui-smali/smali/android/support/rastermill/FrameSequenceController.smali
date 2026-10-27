.class public Landroid/support/rastermill/FrameSequenceController;
.super Ljava/lang/Object;
.source "FrameSequenceController.java"

# interfaces
.implements Landroid/support/rastermill/CacheEngine$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequenceController$FileOpener;,
        Landroid/support/rastermill/FrameSequenceController$SourceWriter;,
        Landroid/support/rastermill/FrameSequenceController$DiskCacheProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Landroid/support/rastermill/FrameSequenceController$FileOpener;

.field private static final sRunningTaskMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/rastermill/FrameSequenceController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:Ljava/lang/Integer;

.field private mAsset:Ljava/lang/String;

.field private mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

.field private mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field private mCircleMaskEnabled:Ljava/lang/Boolean;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mContext:Landroid/content/Context;

.field private mDecodingThreadId:I

.field private mErrorDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorId:I

.field private mFile:Ljava/io/File;

.field private mFileOpener:Landroid/support/rastermill/FrameSequenceController$FileOpener;

.field private mFilterBitmap:Ljava/lang/Boolean;

.field private mFinishDrawable:Landroid/graphics/drawable/Drawable;

.field private mFinishId:I

.field private mForcePlaceholder:Z

.field private mFuture:Ljava/util/concurrent/Future;

.field private mImageView:Landroid/widget/ImageView;

.field private mInputStream:Ljava/io/InputStream;

.field private mInputStreamKey:Ljava/lang/String;

.field private mLoadListener:Landroid/support/rastermill/LoadListener;

.field private mLoader:Landroid/support/rastermill/loader/ILoader;

.field private mLoopBehavior:I

.field private mLoopCount:I

.field private mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

.field private mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlaceholderId:I

.field private mResourceId:Ljava/lang/Integer;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/support/rastermill/FrameSequenceController$FileOpener;

    invoke-direct {v0}, Landroid/support/rastermill/FrameSequenceController$FileOpener;-><init>()V

    sput-object v0, Landroid/support/rastermill/FrameSequenceController;->DEFAULT_FILE_OPENER:Landroid/support/rastermill/FrameSequenceController$FileOpener;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/rastermill/FrameSequenceController;->mDecodingThreadId:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopCount:I

    .line 57
    iput v0, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopBehavior:I

    .line 124
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    .line 125
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    .line 126
    sget-object v0, Landroid/support/rastermill/FrameSequenceController;->DEFAULT_FILE_OPENER:Landroid/support/rastermill/FrameSequenceController$FileOpener;

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFileOpener:Landroid/support/rastermill/FrameSequenceController$FileOpener;

    .line 127
    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/FrameSequenceController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceController;

    .line 34
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/rastermill/FrameSequenceController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceController;

    .line 34
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceController;->getFinishDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceController;

    .line 34
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/rastermill/FrameSequenceController;)Landroid/support/rastermill/FrameSequenceController$FileOpener;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/FrameSequenceController;

    .line 34
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFileOpener:Landroid/support/rastermill/FrameSequenceController$FileOpener;

    return-object v0
.end method

.method private cancelAsyncTask()V
    .locals 2

    .line 449
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    .line 450
    invoke-virtual {v0}, Landroid/support/rastermill/LoaderAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v0}, Landroid/support/rastermill/LoaderAsyncTask;->cancel()V

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 454
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 455
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 458
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    .line 459
    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 460
    return-void
.end method

.method static cancelTask(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 536
    if-nez p0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    sget-object v0, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/FrameSequenceController;

    .line 540
    .local v0, "frameSequenceController":Landroid/support/rastermill/FrameSequenceController;
    if-eqz v0, :cond_1

    .line 541
    invoke-direct {v0}, Landroid/support/rastermill/FrameSequenceController;->cancelAsyncTask()V

    .line 542
    invoke-static {p0}, Landroid/support/rastermill/FrameSequenceController;->removeTask(Landroid/widget/ImageView;)V

    .line 544
    :cond_1
    return-void
.end method

.method private checkApplySame(Landroid/support/rastermill/loader/ILoader;)Z
    .locals 5
    .param p1, "loader"    # Landroid/support/rastermill/loader/ILoader;

    .line 303
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceController;->getKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 305
    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    .line 306
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/support/rastermill/FrameSequenceDrawable;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 308
    .local v1, "drawable":Landroid/support/rastermill/FrameSequenceDrawable;
    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 309
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1, v1, v2}, Landroid/support/rastermill/FrameSequenceController;->applyInternal(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;Z)V

    .line 311
    const/4 v2, 0x1

    return v2

    .line 313
    .end local v1    # "drawable":Landroid/support/rastermill/FrameSequenceDrawable;
    :cond_0
    return v2
.end method

.method private getFinishDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishId:I

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 397
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 399
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getFrameSequenceDrawable(Landroid/support/rastermill/FrameSequence;)Landroid/support/rastermill/FrameSequenceDrawable;
    .locals 3
    .param p1, "frameSequence"    # Landroid/support/rastermill/FrameSequence;

    .line 441
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    iget v2, p0, Landroid/support/rastermill/FrameSequenceController;->mDecodingThreadId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;I)V

    return-object v0

    .line 444
    :cond_0
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable;

    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mDecodingThreadId:I

    invoke-direct {v0, p1, v1}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;I)V

    return-object v0
.end method

.method static getKey(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 500
    sget v0, Landroid/support/rastermill/R$id;->tag_key:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 501
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 502
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 504
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPlaceholderDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "error"    # Z

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorId:I

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 383
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 384
    :cond_1
    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderId:I

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_2
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 387
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_3
    :goto_0
    return-object v0
.end method

.method private hasFinish()Z
    .locals 1

    .line 403
    iget v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

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

.method private static putTask(Landroid/widget/ImageView;Landroid/support/rastermill/FrameSequenceController;)V
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "frameSequenceController"    # Landroid/support/rastermill/FrameSequenceController;

    .line 512
    if-nez p0, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 516
    .local v0, "key":I
    sget-object v1, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 520
    :cond_1
    return-void
.end method

.method static removeTask(Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 524
    if-nez p0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 528
    .local v0, "key":I
    sget-object v1, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 529
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/rastermill/FrameSequenceController;->sRunningTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 532
    :cond_1
    return-void
.end method

.method static setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "key"    # Ljava/lang/String;

    .line 492
    if-nez p1, :cond_0

    .line 493
    const/4 p2, 0x0

    .line 495
    :cond_0
    invoke-static {p0, p2}, Landroid/support/rastermill/FrameSequenceController;->setKey(Landroid/view/View;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    return-void
.end method

.method static setKey(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "key"    # Ljava/lang/String;

    .line 508
    sget v0, Landroid/support/rastermill/R$id;->tag_key:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 509
    return-void
.end method

.method private setPlaceholder()V
    .locals 3

    .line 373
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/rastermill/FrameSequenceController;->getPlaceholderDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 376
    return-void
.end method


# virtual methods
.method public alpha(Ljava/lang/Integer;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "alpha"    # Ljava/lang/Integer;

    .line 195
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mAlpha:Ljava/lang/Integer;

    .line 196
    return-object p0
.end method

.method public apply()Landroid/support/rastermill/FrameSequenceDrawable;
    .locals 3

    .line 293
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceController;->getLoader()Landroid/support/rastermill/loader/ILoader;

    move-result-object v0

    .line 294
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    invoke-direct {p0, v0}, Landroid/support/rastermill/FrameSequenceController;->checkApplySame(Landroid/support/rastermill/loader/ILoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/FrameSequenceDrawable;

    return-object v1

    .line 297
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/rastermill/FrameSequenceController;->getFrameSequenceDrawable(Landroid/support/rastermill/loader/ILoader;)Landroid/support/rastermill/FrameSequenceDrawable;

    move-result-object v1

    .line 298
    .local v1, "drawable":Landroid/support/rastermill/FrameSequenceDrawable;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/rastermill/FrameSequenceController;->applyInternal(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;Z)V

    .line 299
    return-object v1
.end method

.method public applyAsync()V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 261
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceController;->getLoader()Landroid/support/rastermill/loader/ILoader;

    move-result-object v0

    .line 262
    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    invoke-direct {p0, v0}, Landroid/support/rastermill/FrameSequenceController;->checkApplySame(Landroid/support/rastermill/loader/ILoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iget-boolean v1, p0, Landroid/support/rastermill/FrameSequenceController;->mForcePlaceholder:Z

    if-eqz v1, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceController;->setPlaceholder()V

    .line 268
    :cond_1
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v1}, Landroid/support/rastermill/LoaderAsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v1}, Landroid/support/rastermill/LoaderAsyncTask;->cancel()V

    .line 271
    :cond_2
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 274
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    .line 275
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 276
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, p0}, Landroid/support/rastermill/FrameSequenceController;->putTask(Landroid/widget/ImageView;Landroid/support/rastermill/FrameSequenceController;)V

    .line 277
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->isCacheRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    new-instance v1, Landroid/support/rastermill/LoaderAsyncTask;

    invoke-direct {v1, p0}, Landroid/support/rastermill/LoaderAsyncTask;-><init>(Landroid/support/rastermill/FrameSequenceController;)V

    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    goto :goto_0

    .line 281
    :cond_4
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v1

    .line 282
    .local v1, "cacheEngine":Landroid/support/rastermill/CacheEngine;
    invoke-interface {v0}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/rastermill/CacheEngine;->cache(Ljava/lang/String;Landroid/support/rastermill/CacheEngine$CacheCallback;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 283
    .end local v1    # "cacheEngine":Landroid/support/rastermill/CacheEngine;
    goto :goto_0

    .line 285
    :cond_5
    new-instance v1, Landroid/support/rastermill/LoaderAsyncTask;

    invoke-direct {v1, p0}, Landroid/support/rastermill/LoaderAsyncTask;-><init>(Landroid/support/rastermill/FrameSequenceController;)V

    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    .line 287
    :goto_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    if-eqz v1, :cond_6

    .line 288
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v1}, Landroid/support/rastermill/LoaderAsyncTask;->execute()V

    .line 290
    :cond_6
    return-void
.end method

.method applyInternal(Landroid/support/rastermill/loader/ILoader;Landroid/support/rastermill/FrameSequenceDrawable;Z)V
    .locals 4
    .param p1, "loader"    # Landroid/support/rastermill/loader/ILoader;
    .param p2, "drawable"    # Landroid/support/rastermill/FrameSequenceDrawable;
    .param p3, "destroy"    # Z

    .line 317
    if-eqz p3, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    .line 320
    :cond_0
    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 323
    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopCount:I

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopCount(I)V

    .line 324
    iget v1, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopBehavior:I

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 325
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceController;->hasFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    new-instance v1, Landroid/support/rastermill/FrameSequenceController$1;

    invoke-direct {v1, p0}, Landroid/support/rastermill/FrameSequenceController$1;-><init>(Landroid/support/rastermill/FrameSequenceController;)V

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V

    .line 340
    :goto_0
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 341
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAlpha:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mAlpha:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setAlpha(I)V

    .line 344
    :cond_2
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mCircleMaskEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mCircleMaskEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setCircleMaskEnabled(Z)V

    .line 347
    :cond_3
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFilterBitmap:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 348
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mFilterBitmap:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setFilterBitmap(Z)V

    .line 350
    :cond_4
    move-object v1, p2

    .local v1, "targetDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 352
    .end local v1    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v0, 0x0

    .line 353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/rastermill/FrameSequenceController;->getPlaceholderDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    .restart local v1    # "targetDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2, v1, v0}, Landroid/support/rastermill/FrameSequenceController;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mLoadListener:Landroid/support/rastermill/LoadListener;

    if-eqz v2, :cond_7

    .line 358
    if-nez p2, :cond_6

    .line 359
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mLoadListener:Landroid/support/rastermill/LoadListener;

    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->getType()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/support/rastermill/LoadListener;->onFail(ILjava/lang/String;)V

    goto :goto_2

    .line 361
    :cond_6
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mLoadListener:Landroid/support/rastermill/LoadListener;

    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->getType()I

    move-result v3

    invoke-interface {v2, v3, v0, p2}, Landroid/support/rastermill/LoadListener;->onReady(ILjava/lang/String;Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 366
    :cond_7
    :goto_2
    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->release()V

    .line 367
    return-void
.end method

.method public asset(Ljava/lang/String;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "mAsset"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mAsset:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public bitmapProvider(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "bitmapProvider"    # Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 215
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 216
    return-object p0
.end method

.method public cacheData(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 483
    new-instance v0, Landroid/support/rastermill/FrameSequenceController$SourceWriter;

    new-instance v1, Landroid/support/rastermill/data/StreamEncoder;

    invoke-direct {v1}, Landroid/support/rastermill/data/StreamEncoder;-><init>()V

    invoke-direct {v0, p0, v1, p2}, Landroid/support/rastermill/FrameSequenceController$SourceWriter;-><init>(Landroid/support/rastermill/FrameSequenceController;Landroid/support/rastermill/data/Encoder;Ljava/lang/Object;)V

    .line 484
    .local v0, "writer":Landroid/support/rastermill/FrameSequenceController$SourceWriter;, "Landroid/support/rastermill/FrameSequenceController$SourceWriter<Ljava/io/InputStream;>;"
    invoke-static {}, Landroid/support/rastermill/CacheEngine;->getInstance()Landroid/support/rastermill/CacheEngine;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/rastermill/CacheEngine;->getDiskCache()Landroid/support/rastermill/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/support/rastermill/cache/DiskCache;->put(Ljava/lang/String;Landroid/support/rastermill/cache/DiskCache$Writer;)V

    .line 485
    return-void
.end method

.method public circleMaskEnabled(Ljava/lang/Boolean;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "circleMaskEnabled"    # Ljava/lang/Boolean;

    .line 200
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mCircleMaskEnabled:Ljava/lang/Boolean;

    .line 201
    return-object p0
.end method

.method public colorFilter(Landroid/graphics/ColorFilter;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 205
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 206
    return-object p0
.end method

.method public decodingThreadId(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "decodingThreadId"    # I

    .line 139
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mDecodingThreadId:I

    .line 140
    return-object p0
.end method

.method public error(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "resourceId"    # I

    .line 240
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorId:I

    .line 241
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 245
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    return-object p0
.end method

.method public file(Ljava/io/File;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "mFile"    # Ljava/io/File;

    .line 169
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mFile:Ljava/io/File;

    .line 170
    return-object p0
.end method

.method public filterBitmap(Ljava/lang/Boolean;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "filterBitmap"    # Ljava/lang/Boolean;

    .line 210
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mFilterBitmap:Ljava/lang/Boolean;

    .line 211
    return-object p0
.end method

.method public finish(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "resourceId"    # I

    .line 250
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishId:I

    .line 251
    return-object p0
.end method

.method public finish(Landroid/graphics/drawable/Drawable;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 255
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    return-object p0
.end method

.method public forcePlaceholder(Z)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "forcePlaceholder"    # Z

    .line 225
    iput-boolean p1, p0, Landroid/support/rastermill/FrameSequenceController;->mForcePlaceholder:Z

    .line 226
    return-object p0
.end method

.method getFrameSequenceDrawable(Landroid/support/rastermill/loader/ILoader;)Landroid/support/rastermill/FrameSequenceDrawable;
    .locals 2
    .param p1, "loader"    # Landroid/support/rastermill/loader/ILoader;

    .line 429
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 433
    .local v0, "frameSequenceDrawable":Landroid/support/rastermill/FrameSequenceDrawable;
    invoke-interface {p1}, Landroid/support/rastermill/loader/ILoader;->getFrameSequence()Landroid/support/rastermill/FrameSequence;

    move-result-object v1

    .line 434
    .local v1, "frameSequence":Landroid/support/rastermill/FrameSequence;
    if-eqz v1, :cond_1

    .line 435
    invoke-direct {p0, v1}, Landroid/support/rastermill/FrameSequenceController;->getFrameSequenceDrawable(Landroid/support/rastermill/FrameSequence;)Landroid/support/rastermill/FrameSequenceDrawable;

    move-result-object v0

    .line 437
    :cond_1
    return-object v0

    .line 430
    .end local v0    # "frameSequenceDrawable":Landroid/support/rastermill/FrameSequenceDrawable;
    .end local v1    # "frameSequence":Landroid/support/rastermill/FrameSequence;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getLoader()Landroid/support/rastermill/loader/ILoader;
    .locals 4

    .line 407
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mLoader:Landroid/support/rastermill/loader/ILoader;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mLoader:Landroid/support/rastermill/loader/ILoader;

    return-object v0

    .line 411
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Landroid/support/rastermill/loader/InputStreamLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStreamKey:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/rastermill/loader/InputStreamLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)V

    .local v0, "loader":Landroid/support/rastermill/loader/ILoader;
    :goto_0
    goto :goto_1

    .line 413
    .end local v0    # "loader":Landroid/support/rastermill/loader/ILoader;
    :cond_1
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mResourceId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 414
    new-instance v0, Landroid/support/rastermill/loader/ResourceLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mResourceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/loader/ResourceLoader;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    new-instance v0, Landroid/support/rastermill/loader/AssetLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mAsset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/loader/AssetLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    new-instance v0, Landroid/support/rastermill/loader/FileLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/loader/FileLoader;-><init>(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 419
    :cond_4
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 420
    new-instance v0, Landroid/support/rastermill/loader/HttpLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceController;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/loader/HttpLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_5
    new-instance v0, Landroid/support/rastermill/loader/NoneLoader;

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/rastermill/loader/NoneLoader;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v0    # "loader":Landroid/support/rastermill/loader/ILoader;
    :goto_1
    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mLoader:Landroid/support/rastermill/loader/ILoader;

    .line 425
    return-object v0
.end method

.method public inputStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 179
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStream:Ljava/io/InputStream;

    .line 180
    return-object p0
.end method

.method public inputStream(Ljava/lang/String;Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 184
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStreamKey:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceController;->mInputStream:Ljava/io/InputStream;

    .line 186
    return-object p0
.end method

.method public loadListener(Landroid/support/rastermill/LoadListener;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "loadListener"    # Landroid/support/rastermill/LoadListener;

    .line 220
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mLoadListener:Landroid/support/rastermill/LoadListener;

    .line 221
    return-object p0
.end method

.method public loopBehavior(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "loopBehavior"    # I

    .line 154
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopBehavior:I

    .line 155
    return-object p0
.end method

.method public loopCount(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "loopCount"    # I

    .line 144
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mLoopCount:I

    .line 145
    return-object p0
.end method

.method public onCacheFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 474
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCacheFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 477
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 478
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/support/rastermill/FrameSequenceController;->removeTask(Landroid/widget/ImageView;)V

    .line 479
    return-void
.end method

.method public onCacheFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 464
    invoke-static {}, Landroid/support/rastermill/LogUtil;->isLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCacheFinished:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/rastermill/LogUtil;->e(Ljava/lang/String;)V

    .line 467
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mFuture:Ljava/util/concurrent/Future;

    .line 468
    new-instance v0, Landroid/support/rastermill/LoaderAsyncTask;

    invoke-direct {v0, p0}, Landroid/support/rastermill/LoaderAsyncTask;-><init>(Landroid/support/rastermill/FrameSequenceController;)V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    .line 469
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mAsyncTask:Landroid/support/rastermill/LoaderAsyncTask;

    invoke-virtual {v0}, Landroid/support/rastermill/LoaderAsyncTask;->execute()V

    .line 470
    return-void
.end method

.method public onFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "onFinishedListener"    # Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 159
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    .line 160
    return-object p0
.end method

.method public placeholder(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "resourceId"    # I

    .line 230
    iput p1, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderId:I

    .line 231
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 235
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    return-object p0
.end method

.method public resourceId(I)Landroid/support/rastermill/FrameSequenceController;
    .locals 1
    .param p1, "resourceId"    # I

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceController;->mResourceId:Ljava/lang/Integer;

    .line 175
    return-object p0
.end method

.method public url(Ljava/lang/String;)Landroid/support/rastermill/FrameSequenceController;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceController;->mUrl:Ljava/lang/String;

    .line 191
    return-object p0
.end method
