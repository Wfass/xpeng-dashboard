.class Lcom/xiaopeng/musicradio/player/m$7;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied: mPlayerInterface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/m;->b(Lcom/xiaopeng/musicradio/player/m;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;Lcom/xiaopeng/musicradio/player/e;)Lcom/xiaopeng/musicradio/player/e;

    .line 328
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/d;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$7;->a:Lcom/xiaopeng/musicradio/player/m;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/m;->b()V

    :cond_1
    return-void
.end method
