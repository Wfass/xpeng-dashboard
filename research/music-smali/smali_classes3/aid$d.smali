.class public final Laid$d;
.super Ljava/lang/Object;
.source "AospPlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final b:Landroid/support/v4/media/MediaMetadataCompat;

.field private final c:Landroid/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playstate mediaController 11 : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AospPlaybackViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-object p2, p0, Laid$d;->b:Landroid/support/v4/media/MediaMetadataCompat;

    .line 458
    iput-object p3, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-void
.end method

.method static synthetic a(Laid$d;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 0

    .line 446
    iget-object p0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object p0
.end method

.method private n()Laid$e;
    .locals 5

    .line 627
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 630
    :cond_0
    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getRatingType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-object v1

    .line 634
    :cond_1
    iget-object v0, p0, Laid$d;->b:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v4, "android.media.metadata.USER_RATING"

    .line 635
    invoke-virtual {v0, v4}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {v0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    if-eqz v3, :cond_3

    .line 640
    sget v0, Lcom/android/car/media/common/f$e;->ic_star_filled:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/car/media/common/f$e;->ic_star_empty:I

    .line 641
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    xor-int/2addr v2, v3

    const-string v3, "com.android.car.media.common.EXTRA_SET_HEART"

    .line 642
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    new-instance v2, Laid$e;

    const-string v3, "com.android.car.media.common.ACTION_SET_RATING"

    invoke-direct {v2, v0, v1, v3, v4}, Laid$e;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 465
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laid$d;->b:Landroid/support/v4/media/MediaMetadataCompat;

    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p0}, Laid$d;->b()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 10

    .line 472
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 481
    :goto_0
    iget-object v6, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v6}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v6

    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_0

    .line 498
    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Unknown PlaybackState: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AospPlaybackViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    return v2

    :pswitch_1
    const-wide/16 v8, 0x4

    and-long/2addr v0, v8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    move v3, v7

    :cond_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()J
    .locals 2

    .line 515
    iget-object v0, p0, Laid$d;->b:Landroid/support/v4/media/MediaMetadataCompat;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.metadata.DURATION"

    .line 516
    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 4

    .line 527
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 4

    .line 532
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 544
    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 545
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 547
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 555
    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 556
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.gms.car.media.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 558
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 564
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

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

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 577
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 582
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .line 593
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    return v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 1

    .line 598
    iget-object v0, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laid$e;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    invoke-direct {p0}, Laid$d;->n()Laid$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 613
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_0
    iget-object v1, p0, Laid$d;->c:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 616
    iget-object v3, p0, Laid$d;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 617
    new-instance v4, Laid$e;

    .line 618
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v5

    .line 619
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v4, v5, v3, v6, v2}, Laid$e;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 617
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
