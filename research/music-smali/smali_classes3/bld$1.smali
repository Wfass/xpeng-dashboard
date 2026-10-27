.class Lbld$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;-><init>(Lcom/xiaopeng/musicradio/player/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;Z)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbld$1;->b:Lbld;

    iput-boolean p2, p0, Lbld$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    iget-object v0, p0, Lbld$1;->b:Lbld;

    new-instance v1, Lcom/xiaopeng/musicradio/player/h;

    iget-object v2, v0, Lbld;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-boolean v3, p0, Lbld$1;->a:Z

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/musicradio/player/h;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Z)V

    iput-object v1, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    .line 47
    iget-object v0, p0, Lbld$1;->b:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget-object v1, p0, Lbld$1;->b:Lbld;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/h;->a(Lcom/xiaopeng/musicradio/player/l;)V

    return-void
.end method
