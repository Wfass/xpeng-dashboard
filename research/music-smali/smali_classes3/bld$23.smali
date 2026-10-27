.class Lbld$23;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->setVolume(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lbld;


# direct methods
.method constructor <init>(Lbld;FF)V
    .locals 0

    .line 142
    iput-object p1, p0, Lbld$23;->c:Lbld;

    iput p2, p0, Lbld$23;->a:F

    iput p3, p0, Lbld$23;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    iget-object v0, p0, Lbld$23;->c:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget v1, p0, Lbld$23;->a:F

    iget v2, p0, Lbld$23;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/h;->setVolume(FF)V

    return-void
.end method
