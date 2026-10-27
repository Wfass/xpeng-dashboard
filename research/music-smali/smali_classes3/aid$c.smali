.class public Laid$c;
.super Ljava/lang/Object;
.source "AospPlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Laid;

.field private final b:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method private constructor <init>(Laid;Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    .line 657
    iput-object p1, p0, Laid$c;->a:Laid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playcontroller mediaController 22 : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AospPlaybackViewModel"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Laid;Landroid/support/v4/media/session/MediaControllerCompat;Laid$1;)V
    .locals 0

    .line 654
    invoke-direct {p0, p1, p2}, Laid$c;-><init>(Laid;Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 666
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 731
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    const-string v1, "com.android.car.media.common.ACTION_SET_RATING"

    .line 734
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const-string v1, "com.android.car.media.common.EXTRA_SET_HEART"

    .line 735
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 736
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->setRating(Landroid/support/v4/media/RatingCompat;)V

    goto :goto_0

    .line 738
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 675
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 684
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 693
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 702
    iget-object v0, p0, Laid$c;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    :cond_0
    return-void
.end method
