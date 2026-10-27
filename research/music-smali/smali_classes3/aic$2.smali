.class Laic$2;
.super Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
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

    .line 295
    iput-object p1, p0, Laic$2;->a:Laic;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 310
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    iget-object p2, p0, Laic$2;->a:Laic;

    invoke-static {p2}, Laic;->a(Laic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    iget-object p1, p0, Laic$2;->a:Laic;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Laic;->a(Laic;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    .line 300
    iget-object p2, p0, Laic$2;->a:Laic;

    invoke-static {p2}, Laic;->a(Laic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Laic$2;->a:Laic;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p3, L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;->INSTANCE:L-$$Lambda$Ur5Hf9gIJZqJOv99Djmzi1Cy164;

    .line 302
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p3, L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;->INSTANCE:L-$$Lambda$CGycexuCUg3iPfNLUBZLFBYprWM;

    .line 303
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 304
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 301
    invoke-static {p1, p2}, Laic;->a(Laic;Ljava/util/List;)V

    :cond_0
    return-void
.end method
