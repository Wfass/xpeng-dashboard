.class Lcom/xiaopeng/libbluetooth/e$1;
.super Ljava/lang/Object;
.source "BluetoothBoxes.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xp:Lcom/xiaopeng/libbluetooth/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/e;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p2}, Lcom/xiaopeng/b/a$a;->c(Landroid/os/IBinder;)Lcom/xiaopeng/b/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/e;Lcom/xiaopeng/b/a;)Lcom/xiaopeng/b/a;

    .line 117
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->access$300()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/e;)Lcom/xiaopeng/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/e;)Lcom/xiaopeng/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p2}, Lcom/xiaopeng/libbluetooth/e;->c(Lcom/xiaopeng/libbluetooth/e;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/b/a;->eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/e;->dP(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    const-string p1, "tang"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected_sID = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->px()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    iget-object p2, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p2}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/e;)Lcom/xiaopeng/b/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/e;Lcom/xiaopeng/b/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/e;)V

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    invoke-static {p1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/e;)Lcom/xiaopeng/b/a;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/libbluetooth/e;->px()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/b/a;->eh(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/e$1;->Xp:Lcom/xiaopeng/libbluetooth/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/e;Lcom/xiaopeng/b/a;)Lcom/xiaopeng/b/a;

    .line 112
    return-void
.end method
