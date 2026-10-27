.class Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;
.super Ljava/lang/Object;
.source "DataCollectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;Landroid/content/Intent;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    iput-object p2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DataCollectorHelper"

    const-string v1, "bindService in worker thread"

    .line 171
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$400(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$400(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/DataCollectorHelper$3;->this$0:Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    invoke-static {v2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->access$500(Lcom/xiaopeng/datalog/stat/DataCollectorHelper;)Landroid/content/ServiceConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method
