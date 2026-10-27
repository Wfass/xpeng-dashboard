.class public Landroid/support/v4/media/subtitle/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/subtitle/SubtitleController$Listener;,
        Landroid/support/v4/media/subtitle/SubtitleController$Anchor;,
        Landroid/support/v4/media/subtitle/SubtitleController$Renderer;,
        Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;-><init>(Landroid/content/Context;Landroid/support/v4/media/subtitle/MediaTimeProvider;Landroid/support/v4/media/subtitle/SubtitleController$Listener;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/subtitle/MediaTimeProvider;Landroid/support/v4/media/subtitle/SubtitleController$Listener;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/subtitle/SubtitleController$1;-><init>(Landroid/support/v4/media/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 85
    new-instance v0, Landroid/support/v4/media/subtitle/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/support/v4/media/subtitle/SubtitleController$2;-><init>(Landroid/support/v4/media/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 286
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 112
    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    .line 113
    iput-object p3, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 116
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    .line 118
    const-string p2, "captioning"

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 120
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/subtitle/SubtitleController;Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/media/subtitle/SubtitleController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    .line 510
    nop

    .line 511
    nop

    .line 513
    return-void
.end method

.method private doHide()V
    .locals 1

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 394
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    .line 397
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    .line 398
    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 295
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 302
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 301
    invoke-static {v0, v2, v1}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 306
    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->hide()V

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    .line 309
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 315
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z

    .line 318
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 319
    iget-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_5

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->show()V

    .line 321
    iput-boolean v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 324
    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)V
    .locals 2

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 178
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-ne v0, p1, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->hide()V

    .line 184
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    .line 187
    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 188
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 192
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTimeProvider:Landroid/support/v4/media/subtitle/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleTrack;->setTimeProvider(Landroid/support/v4/media/subtitle/MediaTimeProvider;)V

    .line 194
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    .line 197
    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mListener:Landroid/support/v4/media/subtitle/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    .line 200
    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mShowing:Z

    .line 377
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 378
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->show()V

    .line 381
    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    .line 516
    nop

    .line 517
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 4

    .line 346
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;

    .line 348
    invoke-virtual {v2, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {v2, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/support/v4/media/subtitle/SubtitleTrack;

    move-result-object v2

    .line 350
    if-eqz v2, :cond_1

    .line 351
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 356
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 357
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 361
    :cond_1
    goto :goto_0

    .line 362
    :cond_2
    monitor-exit v0

    .line 363
    const/4 p1, 0x0

    return-object p1

    .line 362
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void
.end method

.method public getDefaultTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 16

    .line 226
    move-object/from16 v0, p0

    .line 227
    nop

    .line 229
    iget-object v1, v0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 230
    nop

    .line 231
    if-nez v1, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 234
    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, v0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    .line 236
    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, v0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 237
    :try_start_0
    iget-object v0, v0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 238
    invoke-virtual {v8}, Landroid/support/v4/media/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v9

    .line 239
    const-string v10, "language"

    invoke-virtual {v9, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 240
    const-string v11, "is-forced-subtitle"

    .line 241
    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_1

    .line 242
    move v11, v4

    goto :goto_2

    .line 241
    :cond_1
    nop

    .line 242
    move v11, v12

    :goto_2
    const-string v13, "is-autoselect"

    .line 243
    invoke-static {v9, v13, v4}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_2

    .line 244
    move v13, v4

    goto :goto_3

    .line 243
    :cond_2
    nop

    .line 244
    move v13, v12

    :goto_3
    const-string v14, "is-default"

    .line 245
    invoke-static {v9, v14, v12}, Landroid/support/v4/media/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    .line 247
    move v9, v4

    goto :goto_4

    .line 245
    :cond_3
    nop

    .line 247
    move v9, v12

    :goto_4
    if-eqz v2, :cond_5

    .line 248
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 249
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 250
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    .line 252
    :cond_4
    move v10, v12

    goto :goto_6

    .line 250
    :cond_5
    :goto_5
    nop

    .line 252
    move v10, v4

    :goto_6
    if-eqz v11, :cond_6

    move v14, v12

    goto :goto_7

    :cond_6
    const/16 v14, 0x8

    :goto_7
    if-nez v1, :cond_7

    if-eqz v9, :cond_7

    const/4 v15, 0x4

    goto :goto_8

    :cond_7
    move v15, v12

    :goto_8
    add-int/2addr v14, v15

    if-eqz v13, :cond_8

    goto :goto_9

    :cond_8
    const/4 v12, 0x2

    :goto_9
    add-int/2addr v14, v12

    add-int/2addr v14, v10

    .line 256
    if-eqz v3, :cond_9

    if-nez v11, :cond_9

    .line 257
    goto :goto_1

    .line 261
    :cond_9
    if-nez v1, :cond_a

    if-nez v9, :cond_b

    :cond_a
    if-eqz v10, :cond_c

    if-nez v13, :cond_b

    if-nez v11, :cond_b

    if-eqz v1, :cond_c

    .line 263
    :cond_b
    if-le v14, v7, :cond_c

    .line 264
    nop

    .line 265
    nop

    .line 268
    move-object v6, v8

    move v7, v14

    :cond_c
    goto/16 :goto_1

    .line 269
    :cond_d
    monitor-exit v5

    .line 270
    return-object v6

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedTrack()Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mSelectedTrack:Landroid/support/v4/media/subtitle/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 3

    .line 135
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/media/subtitle/SubtitleTrack;

    .line 137
    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 3

    .line 456
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;

    .line 459
    invoke-virtual {v2, p1}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 462
    :cond_0
    goto :goto_0

    .line 463
    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 464
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hide()V
    .locals 2

    .line 389
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 390
    return-void
.end method

.method public registerRenderer(Landroid/support/v4/media/subtitle/SubtitleController$Renderer;)V
    .locals 2

    .line 439
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_0
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 328
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 329
    invoke-virtual {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->hide()V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z

    .line 331
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 333
    iput-boolean v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 334
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 336
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .line 290
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 291
    return-void
.end method

.method public selectTrack(Landroid/support/v4/media/subtitle/SubtitleTrack;)Z
    .locals 2

    .line 168
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 173
    const/4 p1, 0x1

    return p1
.end method

.method public setAnchor(Landroid/support/v4/media/subtitle/SubtitleController$Anchor;)V
    .locals 2

    .line 492
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    .line 493
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 497
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 498
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 500
    :cond_1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    .line 501
    iput-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 502
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    if-eqz p1, :cond_2

    .line 503
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-interface {v0}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 504
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 505
    iget-object p1, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mAnchor:Landroid/support/v4/media/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController;->getRenderingWidget()Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/support/v4/media/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroid/support/v4/media/subtitle/SubtitleTrack$RenderingWidget;)V

    .line 507
    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 372
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/media/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 373
    return-void
.end method
