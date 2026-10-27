.class Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;
.super Ljava/lang/Object;
.source "ContextInfoHalService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 548
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "weatherInfo"    # Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "ContextInfoHalService"

    const-string v1, "SmartWeatherListener.onChangeEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onWeatherInfo(Ljava/lang/String;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "operation"    # I

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "ContextInfoHalService"

    const-string v1, "SmartWeatherListener.onErrorEvent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;->this$0:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onError(II)V

    .line 563
    :cond_0
    return-void
.end method
