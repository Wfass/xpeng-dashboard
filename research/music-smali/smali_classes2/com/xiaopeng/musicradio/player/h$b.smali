.class Lcom/xiaopeng/musicradio/player/h$b;
.super Landroid/os/Handler;
.source "MediaPlayerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/h;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/player/h;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h$b;->a:Lcom/xiaopeng/musicradio/player/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/player/h;Lcom/xiaopeng/musicradio/player/h$1;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/h$b;-><init>(Lcom/xiaopeng/musicradio/player/h;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 602
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 603
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h$b;->a:Lcom/xiaopeng/musicradio/player/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/h;->c(Lcom/xiaopeng/musicradio/player/h;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lbla;->a(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
