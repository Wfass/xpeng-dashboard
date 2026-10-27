.class Lcom/xiaopeng/xuiservice/xapp/XAppService$1;
.super Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.source "XAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
        "Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppService;
    .param p2, "moduleTag"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onFirstRegistered()V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->access$000(Lcom/xiaopeng/xuiservice/xapp/XAppService;)Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->setListener(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;)V

    .line 82
    return-void
.end method

.method protected onLastUnregistered()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->onLastUnregistered()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->access$000(Lcom/xiaopeng/xuiservice/xapp/XAppService;)Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->setListener(Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;)V

    .line 88
    return-void
.end method
