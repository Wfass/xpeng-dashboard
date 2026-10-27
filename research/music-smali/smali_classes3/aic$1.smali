.class Laic$1;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "MediaItemsRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laic;


# direct methods
.method constructor <init>(Laic;)V
    .locals 0

    .line 266
    iput-object p1, p0, Laic$1;->a:Laic;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Laic$1;->a:Laic;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;->INSTANCE:L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;

    .line 272
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;->INSTANCE:L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;

    .line 273
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 274
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 271
    invoke-static {v0, p1, p2}, Laic;->a(Laic;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1, p2}, Laic$1;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 286
    iget-object v0, p0, Laic$1;->a:Laic;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Laic;->a(Laic;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Laic$1;->onError(Ljava/lang/String;)V

    return-void
.end method
