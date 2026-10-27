.class Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;
.super Ljava/lang/Object;
.source "RemoteLogHelp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$002(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    .line 33
    new-instance p1, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1$1;-><init>(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;)V

    .line 46
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$000(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$000(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "RemoteLogHelp"

    const-string v0, "RemoteException occurs when reLink to Service, exception:"

    .line 51
    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp$1;->this$0:Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;->access$002(Lcom/xiaopeng/lib/bughunter/RemoteLogHelp;Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;)Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    return-void
.end method
