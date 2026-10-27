.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "ContextInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->access$000(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;)V

    .line 56
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$1;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;->access$000(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->setListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;)V

    .line 62
    return-void
.end method
