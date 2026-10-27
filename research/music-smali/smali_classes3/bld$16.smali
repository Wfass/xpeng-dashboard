.class Lbld$16;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->setSonicVolume(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;F)V
    .locals 0

    .line 430
    iput-object p1, p0, Lbld$16;->b:Lbld;

    iput p2, p0, Lbld$16;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lbld$16;->b:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lbld$16;->b:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget v1, p0, Lbld$16;->a:F

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/h;->setSonicVolume(F)V

    :cond_0
    return-void
.end method
