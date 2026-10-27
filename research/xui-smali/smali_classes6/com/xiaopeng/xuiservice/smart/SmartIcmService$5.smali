.class Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;
.super Ljava/lang/Object;
.source "SmartIcmService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextNaviInfoEventListener;


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

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 290
    return-void
.end method

.method public onNavigationInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "naviInfo"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigationInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Landroid/car/hardware/icm/CarIcmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartIcmService;)Landroid/car/hardware/icm/CarIcmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setIcmNavigationInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartIcmService$5;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartIcmService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartIcmService;->handleException(Ljava/lang/Exception;)V

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
