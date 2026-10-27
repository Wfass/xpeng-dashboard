.class Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;
.super Ljava/lang/Object;
.source "SmartNewEggService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V
    .locals 0
    .param p0, "rec$"    # Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    .line 106
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    return-void
.end method

.method public static synthetic lambda$onEvent$1(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 119
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 97
    const v0, 0x107b88

    if-eq p3, v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_CODE_RESOURCE_SYNC_COMPLETED, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->access$000()Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-static {p4}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->json2SyncResult(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;

    move-result-object v0

    .line 104
    .local v0, "operationSyncResult":Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "egg updated, reinstall"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$uzwq3Nk3Ihk_4cuebAqnP0i6YIs;

    invoke-direct {v3, v2}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$uzwq3Nk3Ihk_4cuebAqnP0i6YIs;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 108
    .end local v0    # "operationSyncResult":Lcom/xiaopeng/xuimanager/operation/OperationSyncResult;
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle delete: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$1$Ouf04omwyzaVRmJhZx5negpceY8;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartNewEggService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_3
    :goto_0
    return-void
.end method
