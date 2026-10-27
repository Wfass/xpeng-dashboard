.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/datalog/stat/DataCollectorHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 105
    const-string v0, "DataCollectorHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 107
    new-instance v0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;)V

    .line 120
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "mE":Landroid/os/RemoteException;
    const-string v2, "DataCollectorHelper"

    const-string v3, "RemoteException occurs when reLink to Service, exception:"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .end local v1    # "mE":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 131
    const-string v0, "DataCollectorHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 135
    return-void
.end method
