.class Lcom/xiaopeng/xuiservice/smart/SmartService$2;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "SmartService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartService;)Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setCommonListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;)V

    .line 75
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartService;)Lcom/xiaopeng/xuiservice/smart/SmartHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartHalService;->setCommonListener(Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartCommonHalListener;)V

    .line 81
    return-void
.end method
