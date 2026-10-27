.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;
.super Ljava/lang/Object;
.source "SmartIcmService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextWeatherInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 307
    return-void
.end method

.method public onWeatherInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "weatherInfo"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWeatherInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Landroid/car/hardware/icm/CarIcmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v1, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1202(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;Ljava/lang/String;)V

    .line 302
    return-void
.end method
