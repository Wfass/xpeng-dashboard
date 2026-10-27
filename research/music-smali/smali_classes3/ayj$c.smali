.class public Layj$c;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Layj;

.field private final b:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method private constructor <init>(Layj;Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Layj$c;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-object p2, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method synthetic constructor <init>(Layj;Landroid/support/v4/media/session/MediaControllerCompat;Layj$1;)V
    .locals 0

    .line 1348
    invoke-direct {p0, p1, p2}, Layj$c;-><init>(Layj;Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1359
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const-string v0, "PlaybackViewModel"

    const-string v1, "play ===============>>: "

    .line 1360
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Layj$c;->a:Layj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Layj;->c(Layj;Z)Z

    .line 1362
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1370
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const-string v0, "PlaybackViewModel"

    const-string v1, "pre ===============>>: "

    .line 1371
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Layj$c;->a:Layj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layj;->c(Layj;Z)Z

    .line 1373
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1381
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const-string v0, "PlaybackViewModel"

    const-string v1, "next ===============>>: "

    .line 1382
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Layj$c;->a:Layj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layj;->c(Layj;Z)Z

    .line 1384
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1392
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    const-string v0, "PlaybackViewModel"

    const-string v1, "pause ===============>>: "

    .line 1393
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Layj$c;->a:Layj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Layj;->c(Layj;Z)Z

    .line 1395
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1469
    iget-object v0, p0, Layj$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->prepare()V

    :cond_0
    return-void
.end method
