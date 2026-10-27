.class Lcom/xiaopeng/xuiservice/operation/OperationService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "OperationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/OperationService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/OperationService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationService;->access$000(Lcom/xiaopeng/xuiservice/operation/OperationService;)Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 41
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/OperationService;->access$000(Lcom/xiaopeng/xuiservice/operation/OperationService;)Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/OperationService$1;->this$0:Lcom/xiaopeng/xuiservice/operation/OperationService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 46
    return-void
.end method
