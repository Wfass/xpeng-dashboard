.class Layj$b;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "PlaybackViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Layj;

.field private b:Lcom/android/car/media/common/source/a$b;

.field private c:Landroid/support/v4/media/session/MediaControllerCompat;

.field private d:Landroid/support/v4/media/MediaMetadataCompat;

.field private e:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>(Layj;)V
    .locals 0

    .line 697
    iput-object p1, p0, Layj$b;->a:Layj;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    const/4 p1, -0x1

    .line 909
    iput p1, p0, Layj$b;->g:I

    .line 910
    iput p1, p0, Layj$b;->h:I

    return-void
.end method

.method synthetic constructor <init>(Layj;Layj$1;)V
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Layj$b;-><init>(Layj;)V

    return-void
.end method

.method private a(J)J
    .locals 5

    .line 948
    sget-object v0, L-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;->INSTANCE:L-$$Lambda$87Do-TfJA3qVM7QF6F_6BpQlQTA;

    .line 949
    iget-object v1, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-wide v3

    .line 952
    :cond_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 953
    iget-object v2, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    .line 954
    iget-object v3, p0, Layj$b;->a:Layj;

    iget-object v3, v3, Layj;->a:Ljava/util/Set;

    iget-object v4, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

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

    .line 958
    iget-object v2, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(I)V
    .locals 6

    .line 914
    iget-object v0, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_0

    .line 915
    new-instance v2, Layj$d;

    iget-object v3, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v2, v0, v3, v1}, Layj$d;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 916
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 918
    invoke-virtual {v2}, Layj$d;->b()J

    move-result-wide v0

    .line 919
    iput-wide v0, p0, Layj$b;->f:J

    .line 920
    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2, v0, v1}, Layj;->a(Layj;J)J

    .line 921
    invoke-direct {p0, v0, v1}, Layj$b;->a(J)J

    move-result-wide v2

    .line 922
    iget-object v4, p0, Layj$b;->a:Layj;

    invoke-static {v4, v2, v3}, Layj;->b(Layj;J)J

    .line 923
    new-instance v4, Laie;

    invoke-direct {v4, v2, v3, v0, v1}, Laie;-><init>(JJ)V

    .line 924
    iget-object v5, p0, Layj$b;->a:Layj;

    invoke-static {v5}, Layj;->o(Layj;)Landroidx/lifecycle/r;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 926
    iget-object v4, p0, Layj$b;->a:Layj;

    invoke-static {v4, v2, v3, v0, v1}, Layj;->a(Layj;JJ)V

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 931
    :goto_0
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layj$d;

    invoke-virtual {v0}, Layj$d;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 932
    :goto_1
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/r;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layj$d;

    invoke-virtual {v1}, Layj$d;->e()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    .line 933
    :goto_2
    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->f(Layj;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 934
    invoke-interface {v3, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->c(I)V

    goto :goto_3

    .line 936
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlaybackStatus code _____>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " maxProgress ==>: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Layj$b;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",,progress,,"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Layj$b;->a:Layj;

    invoke-static {p1}, Layj;->p(Layj;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",,action,,"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",,mAction,,"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Layj$b;->g:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",,state,,"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",,mState,,"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Layj$b;->h:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PlaybackViewModel"

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    iget p1, p0, Layj$b;->g:I

    if-ne p1, v0, :cond_4

    iget p1, p0, Layj$b;->h:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    if-ne v1, p1, :cond_4

    return-void

    .line 942
    :cond_4
    iget-object p1, p0, Layj$b;->a:Layj;

    invoke-static {p1, v0, v1}, Layj;->a(Layj;II)V

    .line 943
    iput v0, p0, Layj$b;->g:I

    .line 944
    iput v1, p0, Layj$b;->h:I

    return-void
.end method

.method private a(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 5

    .line 734
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "controller"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "PlaybackViewModel"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    .line 736
    iput-object v0, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 737
    iput-object p1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 738
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->d(Layj;)Landroidx/lifecycle/r;

    move-result-object v1

    new-instance v3, Layj$c;

    iget-object v4, p0, Layj$b;->a:Layj;

    invoke-direct {v3, v4, p1, v0}, Layj$c;-><init>(Layj;Landroid/support/v4/media/session/MediaControllerCompat;Layj$1;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 739
    iget-object v1, p0, Layj$b;->a:Layj;

    new-instance v3, Layj$c;

    invoke-direct {v3, v1, p1, v0}, Layj$c;-><init>(Layj;Landroid/support/v4/media/session/MediaControllerCompat;Layj$1;)V

    invoke-static {v1, v3}, Layj;->a(Layj;Layj$c;)Layj$c;

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaController playbackController: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layj$b;->a:Layj;

    invoke-static {v3}, Layj;->e(Layj;)Layj$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mediaController:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->f(Layj;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 742
    iget-object v4, p0, Layj$b;->a:Layj;

    invoke-static {v4}, Layj;->e(Layj;)Layj$c;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(Layj$c;)V

    goto :goto_0

    .line 744
    :cond_0
    iget-object v1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_1

    .line 745
    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 747
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->h(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->g(Layj;)Lcom/android/car/media/common/source/c$a;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/car/media/common/source/c$a;->a(Ljava/lang/String;)Lcom/android/car/media/common/source/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 750
    iget-object p1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Layj$b;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMediaController mmdCompat: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Layj$b;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 753
    iget-object p1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Layj$b;->onQueueChanged(Ljava/util/List;)V

    .line 754
    iget-object p1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Layj$b;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 756
    :cond_1
    iget-object p1, p0, Layj$b;->a:Layj;

    invoke-static {p1}, Layj;->h(Layj;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 757
    invoke-virtual {p0, v0}, Layj$b;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 758
    invoke-virtual {p0, v0}, Layj$b;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 759
    invoke-virtual {p0, v0}, Layj$b;->onQueueChanged(Ljava/util/List;)V

    .line 760
    invoke-virtual {p0, v0}, Layj$b;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x0

    .line 763
    invoke-direct {p0, p1}, Layj$b;->a(I)V

    return-void
.end method

.method private static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 891
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
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

.method public static synthetic lambda$txiTlmH2jW4_xLLcG72ABSD8T5s(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z
    .locals 0

    invoke-static {p0}, Layj$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method a(Lcom/android/car/media/common/source/a$b;)V
    .locals 4

    .line 706
    iget-object v0, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ",,newBrowsingState,,"

    const-string v2, "PlaybackViewModel"

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return mediaBrowsingStateChanged noop browsingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ok mediaBrowsingStateChanged browsingState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_3

    .line 714
    sget-object v0, Layj$3;->a:[I

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

    .line 719
    :cond_1
    iget-object v0, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    :cond_2
    const/4 v0, 0x0

    .line 722
    invoke-direct {p0, v0}, Layj$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    .line 726
    :cond_3
    :goto_0
    iput-object p1, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    .line 728
    iget-object p1, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    iget-object p1, p1, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    sget-object v0, Lcom/android/car/media/common/source/a$d;->CONNECTED:Lcom/android/car/media/common/source/a$d;

    if-ne p1, v0, :cond_4

    .line 729
    iget-object p1, p0, Layj$b;->a:Layj;

    invoke-static {p1}, Layj;->c(Layj;)Layj$a;

    move-result-object p1

    iget-object v0, p0, Layj$b;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-interface {p1, v0}, Layj$a;->a(Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    invoke-direct {p0, p1}, Layj$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    :cond_4
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 7

    const-string v0, "PlaybackViewModel"

    if-eqz p1, :cond_0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetadataChanged metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",empty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Layj;->o()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "onMetadataChanged mmdCompat == null: "

    .line 783
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 785
    invoke-static {}, Layj;->o()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    iput-object v1, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    goto :goto_1

    .line 788
    :cond_1
    iput-object p1, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    .line 790
    :goto_1
    iget-object p1, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-direct {v1, p1}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 792
    :cond_2
    iget-object p1, p0, Layj$b;->a:Layj;

    invoke-static {p1}, Layj;->i(Layj;)Landroidx/lifecycle/r;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 793
    invoke-direct {p0, p1}, Layj$b;->a(I)V

    if-nez v1, :cond_3

    .line 796
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1, p1}, Layj;->a(Layj;Z)Z

    const-string p1, "onMetadataChanged item == null: "

    .line 797
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 801
    :cond_3
    new-instance p1, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    .line 802
    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 803
    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->e()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 804
    invoke-virtual {v1}, Lcom/android/car/media/common/MediaItemMetadata;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c(Ljava/lang/String;)V

    .line 805
    iget-wide v1, p0, Layj$b;->f:J

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 806
    iget-object v1, p0, Layj$b;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v4, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v4, :cond_6

    .line 807
    new-instance v5, Layj$d;

    iget-object v6, p0, Layj$b;->d:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v5, v1, v6, v4}, Layj$d;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 808
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->j(Layj;)Landroidx/lifecycle/r;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 810
    invoke-virtual {v5}, Layj$d;->b()J

    move-result-wide v4

    .line 811
    invoke-virtual {p1, v4, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    goto :goto_3

    .line 813
    :cond_6
    invoke-virtual {p1, v2, v3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 815
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMetaDataChanged() called with: tmpMetaData = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMetaDataChanged() called with: mPreviousMetaData = ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Layj$b;->a:Layj;

    invoke-static {v5}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 818
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Layj$b;->a:Layj;

    .line 819
    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 820
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 825
    :cond_7
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_d

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 826
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 827
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 828
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 829
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "onMetadataChanged the same data, not update - album: "

    .line 831
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 836
    :cond_9
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 837
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Layj$b;->a:Layj;

    .line 838
    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "onMetadataChanged the same data, not update - title: "

    .line 839
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 843
    :cond_a
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 844
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Layj$b;->a:Layj;

    .line 845
    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p1, "onMetadataChanged the same data, not update - artist: "

    .line 846
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 850
    :cond_b
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 851
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 852
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p1, "onMetadataChanged the same data, not update - tmptitle: "

    .line 853
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 857
    :cond_c
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 858
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 859
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p1, "onMetadataChanged the same data, not update - data: "

    .line 860
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 866
    :cond_d
    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_e

    .line 867
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 868
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Layj$b;->a:Layj;

    invoke-static {v1}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 869
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 870
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layj$b;->a:Layj;

    invoke-static {v2}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 875
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetadataChanged new song - title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->k(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    .line 877
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0, p1}, Layj;->a(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    :cond_f
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .line 903
    iput-object p1, p0, Layj$b;->e:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x2

    .line 905
    invoke-direct {p0, p1}, Layj$b;->a(I)V

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

    .line 888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 889
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;->INSTANCE:L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;

    .line 890
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, L-$$Lambda$rOrWuzLScti4HP4_hs-inqxztRg;->INSTANCE:L-$$Lambda$rOrWuzLScti4HP4_hs-inqxztRg;

    .line 893
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 894
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 896
    :goto_0
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->m(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 897
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->n(Layj;)Landroidx/lifecycle/r;

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

    .line 883
    iget-object v0, p0, Layj$b;->a:Layj;

    invoke-static {v0}, Layj;->l(Layj;)Landroidx/lifecycle/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    const-string v0, "PlaybackViewModel"

    const-string v1, "onSessionDestroyed"

    .line 768
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 771
    invoke-direct {p0, v0}, Layj$b;->a(Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method
