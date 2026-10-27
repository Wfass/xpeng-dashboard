.class Lanw$1;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanw;


# direct methods
.method constructor <init>(Lanw;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lanw$1;->a:Lanw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lanw$1;->a:Lanw;

    invoke-static {p2}, Lcom/nforetek/bt/aidl/l$a;->a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/l;

    move-result-object p2

    invoke-static {p1, p2}, Lanw;->a(Lanw;Lcom/nforetek/bt/aidl/l;)Lcom/nforetek/bt/aidl/l;

    .line 121
    invoke-static {}, Lanw;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ready  onServiceConnected from : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lanw$1;->a:Lanw;

    invoke-static {v0}, Lanw;->a(Lanw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lanw$1;->a:Lanw;

    invoke-static {p1}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    :try_start_0
    iget-object p1, p0, Lanw$1;->a:Lanw;

    invoke-static {p1}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object p1

    invoke-interface {p1}, Lcom/nforetek/bt/aidl/l;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lanw$1;->a:Lanw;

    invoke-static {p2}, Lanw;->c(Lanw;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 125
    iget-object p1, p0, Lanw$1;->a:Lanw;

    iget-object p2, p0, Lanw$1;->a:Lanw;

    invoke-static {p2}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object p2

    invoke-static {p1, p2}, Lanw;->b(Lanw;Lcom/nforetek/bt/aidl/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lanw;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBtService is null!! from : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lanw$1;->a:Lanw;

    invoke-static {v0}, Lanw;->a(Lanw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 136
    invoke-static {}, Lanw;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onServiceDisconnected from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanw$1;->a:Lanw;

    invoke-static {v1}, Lanw;->a(Lanw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lanw$1;->a:Lanw;

    invoke-static {p1}, Lanw;->d(Lanw;)V

    .line 138
    iget-object p1, p0, Lanw$1;->a:Lanw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lanw;->a(Lanw;Lcom/nforetek/bt/aidl/l;)Lcom/nforetek/bt/aidl/l;

    return-void
.end method
