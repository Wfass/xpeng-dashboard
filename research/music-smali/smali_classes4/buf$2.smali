.class Lbuf$2;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuf;->a(Landroid/os/IBinder;)V
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

    .line 102
    iput-object p1, p0, Lbuf$2;->a:Lbuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lbuf$2;->a:Lbuf;

    invoke-static {v0}, Lbuf;->c(Lbuf;)Lcom/xiaopeng/speech/common/util/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lbuf$2;->a:Lbuf;

    invoke-static {v1}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbuf$2;->a:Lbuf;

    invoke-static {v1}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v1

    invoke-interface {v1}, Lbun;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lbuf$2;->a:Lbuf;

    invoke-static {v1}, Lbuf;->a(Lbuf;)Lbun;

    move-result-object v1

    new-instance v2, Lbuf$2$1;

    invoke-direct {v2, p0, v0}, Lbuf$2$1;-><init>(Lbuf$2;[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lbun;->a(Lbui;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    const-string v0, "DeadObjectException caught, reconnecting..."

    .line 120
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lbuf$2;->a:Lbuf;

    invoke-static {v0}, Lbuf;->d(Lbuf;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/String;)V

    .line 128
    :cond_1
    :goto_0
    invoke-static {}, Lbwe;->c()Lbwe;

    move-result-object v0

    invoke-virtual {v0}, Lbwe;->a()V

    return-void
.end method
