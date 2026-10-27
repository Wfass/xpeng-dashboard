.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 2659
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedCar()V
    .locals 4

    .line 2662
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7602(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 2665
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8002(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 2666
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4702(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 2667
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 2669
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedCar, hasEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    .line 2670
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasMcuOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$8000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2669
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2674
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)V

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)V

    .line 2677
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const-string v3, "all"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)V

    .line 2679
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$4700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2680
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    const-string v2, "init"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V

    .line 2683
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$7;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9402(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 2684
    return-void
.end method

.method public onDisconnectCar()V
    .locals 2

    .line 2688
    const-string v0, "XpAmbientLightService"

    const-string v1, "onDisconnectCar"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    return-void
.end method
