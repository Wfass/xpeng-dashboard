.class Lbld$3;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbld;


# direct methods
.method constructor <init>(Lbld;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lbld$3;->a:Lbld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 165
    iget-object v0, p0, Lbld$3;->a:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/h;->stop()V

    return-void
.end method
