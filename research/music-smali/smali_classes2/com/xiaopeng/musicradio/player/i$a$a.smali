.class final Lcom/xiaopeng/musicradio/player/i$a$a;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/i$a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/i$a;

.field private final b:Lcom/xiaopeng/musicradio/player/i$a$a$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/Allocator;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/player/i$a;)V
    .locals 2

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance p1, Lcom/xiaopeng/musicradio/player/i$a$a$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/player/i$a$a$a;-><init>(Lcom/xiaopeng/musicradio/player/i$a$a;Lcom/xiaopeng/musicradio/player/i$1;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->b:Lcom/xiaopeng/musicradio/player/i$a$a$a;

    .line 227
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v1, 0x10000

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2

    .line 235
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSourceInfoRefreshed : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i$a;->a(Lcom/xiaopeng/musicradio/player/i$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " callback = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MetadataRetriever"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p3, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    invoke-static {p3}, Lcom/xiaopeng/musicradio/player/i$a;->a(Lcom/xiaopeng/musicradio/player/i$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 240
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p3

    .line 241
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    .line 242
    iget-object p3, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->c:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 243
    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 242
    invoke-static {p3, p1}, Lcom/xiaopeng/musicradio/player/i$a;->a(Lcom/xiaopeng/musicradio/player/i$a;Lcom/google/android/exoplayer2/source/MediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i$a;->a(Lcom/xiaopeng/musicradio/player/i$a;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/i$a$a;->b:Lcom/xiaopeng/musicradio/player/i$a$a$a;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    return-void
.end method
