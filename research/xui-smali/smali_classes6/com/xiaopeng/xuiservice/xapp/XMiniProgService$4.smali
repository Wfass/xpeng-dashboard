.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getCurrentMiniAppStatus(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
        "Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field final synthetic val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 392
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    .line 395
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iget v1, p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->code:I

    iput v1, v0, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->code:I

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iget-object v1, p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->message:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iget-boolean v1, p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->success:Z

    iput-boolean v1, v0, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->success:Z

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iget-object v1, p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isForeground:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isForeground:Ljava/lang/Boolean;

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$aromeResponse:Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    iget-object v1, p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isRunnning:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->isRunnning:Ljava/lang/Boolean;

    .line 401
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMiniAppStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$object:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 392
    check-cast p1, Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$4;->onCallback(Lcom/alipay/arome/aromecli/response/AromeGetAppStatusResponse;)V

    return-void
.end method
