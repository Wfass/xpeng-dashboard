.class public final synthetic Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/s;


# instance fields
.field private final synthetic f$0:Lcom/android/car/media/common/PlaybackFragment;

.field private final synthetic f$1:Lcom/android/car/media/common/PlaybackControlsActionBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/media/common/PlaybackFragment;Lcom/android/car/media/common/PlaybackControlsActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;->f$0:Lcom/android/car/media/common/PlaybackFragment;

    iput-object p2, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;->f$1:Lcom/android/car/media/common/PlaybackControlsActionBar;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;->f$0:Lcom/android/car/media/common/PlaybackFragment;

    iget-object v1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;->f$1:Lcom/android/car/media/common/PlaybackControlsActionBar;

    check-cast p1, Laid$d;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/media/common/PlaybackFragment;->lambda$onCreateView$0$PlaybackFragment(Lcom/android/car/media/common/PlaybackControlsActionBar;Laid$d;)V

    return-void
.end method
