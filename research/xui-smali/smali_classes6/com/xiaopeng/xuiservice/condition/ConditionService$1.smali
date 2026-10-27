.class Lcom/xiaopeng/xuiservice/condition/ConditionService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "ConditionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/condition/ConditionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/condition/ConditionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/condition/ConditionService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->access$000(Lcom/xiaopeng/xuiservice/condition/ConditionService;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->access$100(Lcom/xiaopeng/xuiservice/condition/ConditionService;)Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->startWatch()V

    .line 62
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->access$100(Lcom/xiaopeng/xuiservice/condition/ConditionService;)Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->stopWatch()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/condition/ConditionService$1;->this$0:Lcom/xiaopeng/xuiservice/condition/ConditionService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/condition/ConditionService;->access$102(Lcom/xiaopeng/xuiservice/condition/ConditionService;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;)Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;

    .line 69
    return-void
.end method
