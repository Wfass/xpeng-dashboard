.class Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;
.super Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;
.source "MediaSession2ImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaSession2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPlaylistEventCallback"
.end annotation


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaSession2ImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;)V
    .locals 1

    .line 1375
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;-><init>()V

    .line 1376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    .line 1377
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V
    .locals 0

    .line 1372
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;)V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;",
            "Landroid/support/v4/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaSession2ImplBase;

    .line 1383
    if-nez v0, :cond_0

    .line 1384
    return-void

    .line 1386
    :cond_0
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->access$500(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    .line 1387
    return-void
.end method

.method public onPlaylistMetadataChanged(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 1

    .line 1392
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaSession2ImplBase;

    .line 1393
    if-nez v0, :cond_0

    .line 1394
    return-void

    .line 1396
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$600(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    .line 1397
    return-void
.end method

.method public onRepeatModeChanged(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 1

    .line 1401
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaSession2ImplBase;

    .line 1402
    if-nez v0, :cond_0

    .line 1403
    return-void

    .line 1405
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$700(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 1406
    return-void
.end method

.method public onShuffleModeChanged(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 1

    .line 1410
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaSession2ImplBase;

    .line 1411
    if-nez v0, :cond_0

    .line 1412
    return-void

    .line 1414
    :cond_0
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->access$800(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 1415
    return-void
.end method
