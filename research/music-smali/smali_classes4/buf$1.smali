.class Lbuf$1;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuf;


# direct methods
.method constructor <init>(Lbuf;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lbuf$1;->a:Lbuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "connect "

    .line 66
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lbuf$1;->a:Lbuf;

    invoke-static {v0}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuf$1;->a:Lbuf;

    invoke-static {v0}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v0

    invoke-interface {v0}, Lbun;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connected and binder is alive, return"

    .line 68
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "carspeechservice.SpeechServer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.carspeechservice"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lbuf$1;->a:Lbuf;

    invoke-static {v1}, Lbuf;->b(Lbuf;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbuf$1;->a:Lbuf;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method
