.class public final synthetic Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$m4sF54OgoF5IqVkvaD6zvILYyU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/s;


# instance fields
.field private final synthetic f$0:Lcom/android/car/media/common/PlaybackFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/media/common/PlaybackFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$m4sF54OgoF5IqVkvaD6zvILYyU0;->f$0:Lcom/android/car/media/common/PlaybackFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$m4sF54OgoF5IqVkvaD6zvILYyU0;->f$0:Lcom/android/car/media/common/PlaybackFragment;

    check-cast p1, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-virtual {v0, p1}, Lcom/android/car/media/common/PlaybackFragment;->lambda$onCreateView$4$PlaybackFragment(Lcom/android/car/media/common/MediaItemMetadata;)V

    return-void
.end method
