.class Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$16;
.super Ljava/lang/Object;
.source "XMiniProgService.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->registerNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
        "Lcom/alipay/arome/aromecli/response/AromeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 1141
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$16;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alipay/arome/aromecli/response/AromeResponse;)V
    .locals 3
    .param p1, "aromeResponse"    # Lcom/alipay/arome/aromecli/response/AromeResponse;

    .line 1144
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AromeServiceInvoker aromeResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1141
    check-cast p1, Lcom/alipay/arome/aromecli/response/AromeResponse;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$16;->onCallback(Lcom/alipay/arome/aromecli/response/AromeResponse;)V

    return-void
.end method
