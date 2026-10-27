.class Lbld$10;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->getPlaybackState()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lbld$10;->b:Lbld;

    iput-object p2, p0, Lbld$10;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lbld$10;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lbld$10;->b:Lbld;

    iget-object v1, v1, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/player/h;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
