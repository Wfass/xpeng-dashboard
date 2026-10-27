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

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 105
    const-string p1, "DataCollectorHelper"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 107
    new-instance p1, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;)V

    .line 120
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object p2

    if-nez p2, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    .line 125
    const-string p2, "DataCollectorHelper"

    const-string v0, "RemoteException occurs when reLink to Service, exception:"

    invoke-static {p2, v0, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 131
    const-string p1, "DataCollectorHelper"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;)Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    .line 135
    return-void
.end method
