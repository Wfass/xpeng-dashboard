.class Lbld$4;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->reset()V
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

    .line 172
    iput-object p1, p0, Lbld$4;->a:Lbld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lbld$4;->a:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/h;->reset()V

    return-void
.end method
