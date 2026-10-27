.class final Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;
.super Ljava/lang/Object;
.source "AppServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PipeListenerRecord"
.end annotation


# instance fields
.field listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

.field final pid:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "pid",
            "uid"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    .line 162
    iput p2, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->pid:I

    .line 163
    iput p3, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "AppServer"

    const-string v1, "binderDied"

    .line 168
    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 171
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "msgId",
            "data"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "send %s %s %s"

    .line 184
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppServer"

    invoke-static {v1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/ipc/server/ipc/AppServer$PipeListenerRecord;->listener:Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener;->onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
