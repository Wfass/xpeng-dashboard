.class Laid$b;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "AospPlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Laid;

.field private b:Lcom/android/car/media/common/source/a$b;

.field private c:Landroid/support/v4/media/session/MediaControllerCompat;

.field private d:Landroid/support/v4/media/MediaMetadataCompat;

.field private e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Laid;)V
    .locals 2

    .line 279
    iput-object p1, p0, Laid$b;->a:Laid;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 431
    new-instance p1, Ljava/util/HashSet;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Laid$b;->f:Ljava/util/Set;

    .line 433
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object p1, p0, Laid$b;->f:Ljava/util/Set;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Laid;Laid$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Laid$b;-><init>(Laid;)V

    return-void
.end method

.method private a(J)J
    .locals 5

    .line 418
    sget-object v0, L-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;->INSTANCE:L-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;

    .line 419
    iget-object v1, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-wide v3

    .line 422
    :cond_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 423
    iget-object v2, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    .line 424
    iget-object v3, p0, Laid$b;->f:Ljava/util/Set;

    iget-object v4, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    .line 428
    iget-object v2, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(I)V
    .locals 7

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlaybackStatus code ____________________>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AospPlaybackViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_0

    iget-object v1, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_0

    .line 400
    new-instance v2, Laid$d;

    iget-object v3, p0, Laid$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v2, p1, v3, v1}, Laid$d;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 401
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->l(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v2}, Laid$d;->c()J

    move-result-wide v1

    .line 404
    invoke-direct {p0, v1, v2}, Laid$b;->a(J)J

    move-result-wide v3

    .line 405
    new-instance p1, Laie;

    invoke-direct {p1, v3, v4, v1, v2}, Laie;-><init>(JJ)V

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePlaybackStatus mMaxProgress ==>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",,progress,,"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",,max,,"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Laie;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",,current,,"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Laie;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Laid$b;->a:Laid;

    invoke-static {v1}, Laid;->m(Laid;)Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->l(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 413
    :goto_0
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->l(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->l(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laid$d;

    invoke-virtual {p1}, Laid$d;->b()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 414
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlaybackStatus action =======>>>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 5

    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Laid$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    .line 317
    iput-object v0, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 318
    iput-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaController mediaController 00 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AospPlaybackViewModel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Laid$b;->a:Laid;

    invoke-static {v1}, Laid;->d(Laid;)Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v3, Laid$c;

    iget-object v4, p0, Laid$b;->a:Laid;

    invoke-direct {v3, v4, p1, v0}, Laid$c;-><init>(Laid;Landroid/support/v4/media/session/MediaControllerCompat;Laid$1;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 322
    iget-object v1, p0, Laid$b;->a:Laid;

    new-instance v3, Laid$c;

    invoke-direct {v3, v1, p1, v0}, Laid$c;-><init>(Laid;Landroid/support/v4/media/session/MediaControllerCompat;Laid$1;)V

    invoke-static {v1, v3}, Laid;->a(Laid;Laid$c;)Laid$c;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaController mPlaybackController: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Laid$b;->a:Laid;

    invoke-static {v3}, Laid;->e(Laid;)Laid$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 327
    iget-object v0, p0, Laid$b;->a:Laid;

    invoke-static {v0}, Laid;->g(Laid;)Landroidx/lifecycle/r;

    move-result-object v0

    iget-object v1, p0, Laid$b;->a:Laid;

    invoke-static {v1}, Laid;->f(Laid;)Lcom/android/car/media/common/source/c$a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/car/media/common/source/c$a;->a(Ljava/lang/String;)Lcom/android/car/media/common/source/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Laid$b;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 331
    iget-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Laid$b;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 332
    iget-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Laid$b;->onQueueChanged(Ljava/util/List;)V

    .line 333
    iget-object p1, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Laid$b;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->g(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0, v0}, Laid$b;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 337
    invoke-virtual {p0, v0}, Laid$b;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 338
    invoke-virtual {p0, v0}, Laid$b;->onQueueChanged(Ljava/util/List;)V

    .line 339
    invoke-virtual {p0, v0}, Laid$b;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1}, Laid$b;->a(I)V

    return-void
.end method

.method private static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$QQgPJk9RexN_F2ktXewkGO6WvG8(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z
    .locals 0

    invoke-static {p0}, Laid$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method a(Lcom/android/car/media/common/source/a$b;)V
    .locals 4

    .line 288
    iget-object v0, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ",,newBrowsingState,,"

    const-string v2, "AospPlaybackViewModel"

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on_MediaBrowsingStateChanged noop return m_BrowsingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on_MediaBrowsingStateChanged m_BrowsingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Laid$3;->a:[I

    iget-object v1, p1, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    invoke-virtual {v1}, Lcom/android/car/media/common/source/a$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Laid$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_2
    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Laid$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 308
    :cond_3
    :goto_0
    iput-object p1, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    .line 310
    iget-object p1, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    iget-object p1, p1, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    sget-object v0, Lcom/android/car/media/common/source/a$d;->CONNECTED:Lcom/android/car/media/common/source/a$d;

    if-ne p1, v0, :cond_4

    .line 311
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->c(Laid;)Laid$a;

    move-result-object p1

    iget-object v0, p0, Laid$b;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-interface {p1, v0}, Laid$a;->getControllerForBrowser(Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-direct {p0, p1}, Laid$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    :cond_4
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 359
    invoke-static {}, Laid;->h()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iput-object v0, p0, Laid$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    goto :goto_0

    .line 362
    :cond_0
    iput-object p1, p0, Laid$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    .line 364
    :goto_0
    iget-object p1, p0, Laid$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-direct {v0, p1}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 366
    :cond_1
    iget-object p1, p0, Laid$b;->a:Laid;

    invoke-static {p1}, Laid;->h(Laid;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 367
    invoke-direct {p0, p1}, Laid$b;->a(I)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .line 391
    iput-object p1, p0, Laid$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x2

    .line 393
    invoke-direct {p0, p1}, Laid$b;->a(I)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, L-$$Lambda$aid$b$QQgPJk9RexN_F2ktXewkGO6WvG8;->INSTANCE:L-$$Lambda$aid$b$QQgPJk9RexN_F2ktXewkGO6WvG8;

    .line 379
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, L-$$Lambda$rOrWuzLScti4HP4_hs-inqxztRg;->INSTANCE:L-$$Lambda$rOrWuzLScti4HP4_hs-inqxztRg;

    .line 382
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 383
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 385
    :goto_0
    iget-object v0, p0, Laid$b;->a:Laid;

    invoke-static {v0}, Laid;->j(Laid;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Laid$b;->a:Laid;

    invoke-static {v0}, Laid;->k(Laid;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 372
    iget-object v0, p0, Laid$b;->a:Laid;

    invoke-static {v0}, Laid;->i(Laid;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    const-string v0, "AospPlaybackViewModel"

    const-string v1, "onSessionDestroyed"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, v0}, Laid$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method
