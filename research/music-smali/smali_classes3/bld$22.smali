.class Lbld$22;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lbld$22;->b:Lbld;

    iput p2, p0, Lbld$22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lbld$22;->b:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget v1, p0, Lbld$22;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/h;->seekTo(I)V

    return-void
.end method
