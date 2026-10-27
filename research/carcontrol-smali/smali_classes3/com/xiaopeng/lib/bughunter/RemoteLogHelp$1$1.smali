.class Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;
.super Ljava/lang/Object;
.source "RemoteLogHelp.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$000(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$000(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$002(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;->this$1:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {v1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$100(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$200(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Landroid/content/Context;)V

    return-void
.end method
