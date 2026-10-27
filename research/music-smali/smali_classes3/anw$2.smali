.class Lanw$2;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 142
    iput-object p1, p0, Lanw$2;->a:Lanw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 145
    invoke-static {}, Lanw;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied.nForeService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanw$2;->a:Lanw;

    invoke-static {v2}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanw$2;->a:Lanw;

    invoke-static {v2}, Lanw;->a(Lanw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lanw$2;->a:Lanw;

    invoke-static {v0}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lanw$2;->a:Lanw;

    invoke-static {v0}, Lanw;->b(Lanw;)Lcom/nforetek/bt/aidl/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/nforetek/bt/aidl/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 150
    iget-object v0, p0, Lanw$2;->a:Lanw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanw;->a(Lanw;Lcom/nforetek/bt/aidl/l;)Lcom/nforetek/bt/aidl/l;

    .line 152
    iget-object v0, p0, Lanw$2;->a:Lanw;

    invoke-virtual {v0}, Lanw;->b()V

    return-void
.end method
