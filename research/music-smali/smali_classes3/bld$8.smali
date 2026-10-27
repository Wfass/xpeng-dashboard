.class Lbld$8;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->isPlaying()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lbld$8;->b:Lbld;

    iput-object p2, p0, Lbld$8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lbld$8;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lbld$8;->b:Lbld;

    iget-object v1, v1, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/player/h;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
