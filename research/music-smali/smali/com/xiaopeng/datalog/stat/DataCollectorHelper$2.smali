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

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "DataCollectorHelper"

    const-string v0, "onServiceConnected"

    .line 106
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p2}, Lcom/xiaopeng/lib/bughunter/a$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/lib/bughunter/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/a;)Lcom/xiaopeng/lib/bughunter/a;

    .line 108
    new-instance p2, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2$1;-><init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$200(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Lcom/xiaopeng/lib/bughunter/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/bughunter/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "RemoteException occurs when reLink to Service, exception:"

    .line 126
    invoke-static {p1, v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DataCollectorHelper"

    const-string v0, "onServiceDisconnected"

    .line 132
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$202(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Lcom/xiaopeng/lib/bughunter/a;)Lcom/xiaopeng/lib/bughunter/a;

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$2;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$300(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)V

    return-void
.end method
