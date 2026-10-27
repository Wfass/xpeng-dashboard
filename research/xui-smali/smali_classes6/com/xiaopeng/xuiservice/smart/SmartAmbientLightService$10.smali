.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->getCurrentRatioValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 935
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2300(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2502(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;Z)Z

    .line 942
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2600()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 943
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_0

    .line 944
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 945
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2602(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 948
    .end local v0    # "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)F

    move-result v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2700()F

    move-result v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$1800()F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2402(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_1
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAmbientLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRatioValue exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
