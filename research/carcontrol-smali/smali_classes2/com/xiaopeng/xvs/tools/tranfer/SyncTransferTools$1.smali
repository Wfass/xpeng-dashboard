.class Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;
.super Ljava/lang/Object;
.source "SyncTransferTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->initDb(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Landroid/app/Application;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    iput-object p2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->val$application:Landroid/app/Application;

    const-string/jumbo v1, "sync_db_v1.db"

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SyncTransferTools"

    const-string v1, "initDb: isDatabaseExist not exit! not need init database!"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    new-instance v1, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$102(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;)Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    invoke-static {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$100(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;)Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->val$application:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->init(Landroid/app/Application;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    new-instance v1, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    invoke-static {v2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$100(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;)Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->getSyncDataDao()Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;-><init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$202(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;)Lcom/xiaopeng/xvs/tools/tranfer/DataAccessor;

    .line 49
    invoke-static {}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->getInstance()Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->val$application:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/ToolsSPUtils;->init(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;

    invoke-static {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$400(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;->access$302(Lcom/xiaopeng/xvs/tools/tranfer/SyncTransferTools;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
