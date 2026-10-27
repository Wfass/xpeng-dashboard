.class final Lcom/xiaopeng/musicradio/player/i$a$a$a;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/i$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/i$a$a;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/player/i$a$a;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/player/i$a$a;Lcom/xiaopeng/musicradio/player/i$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/i$a$a$a;-><init>(Lcom/xiaopeng/musicradio/player/i$a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 249
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared retrieveMetadata prepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callback = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->c(Lcom/xiaopeng/musicradio/player/i;)Lcom/xiaopeng/musicradio/player/i$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MetadataRetriever"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeMessages(I)V

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/i$a$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a$a;->a:Lcom/xiaopeng/musicradio/player/i$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/player/i$a;->a:Lcom/xiaopeng/musicradio/player/i;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/player/i;->b(Lcom/xiaopeng/musicradio/player/i;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
