.class public Lcom/xiaopeng/musicradio/player/k;
.super Ljava/lang/Object;
.source "PlayerActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlayerActionHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/player/k;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/k$a;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/k;->a:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/player/k$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/player/k$1;-><init>(Lcom/xiaopeng/musicradio/player/k;Lcom/xiaopeng/musicradio/player/k$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
