.class Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;
.super Ljava/lang/Object;
.source "SysConfigService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->lambda$init$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;->this$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 1
    .param p1, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;->this$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->access$200(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 110
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 94
    const v0, 0x107d18

    if-ne p3, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 96
    :cond_0
    const-string v0, "SysConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New sysconfig resource added, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "sourceObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v1

    .line 100
    .local v1, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;->this$0:Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->access$100(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/xuiservice/sysconfig/-$$Lambda$SysConfigService$1$tmLm-SeMWWTOtBrFeHymOTAhR_k;-><init>(Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService$1;Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "sourceObject":Lorg/json/JSONObject;
    .end local v1    # "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SysConfigService"

    const-string v2, "handle EVENT_CODE_RESOURCE_ADD error"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
