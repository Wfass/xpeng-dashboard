.class Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;
.super Ljava/lang/Object;
.source "FreezerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    .line 359
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedCar()V
    .locals 2

    .line 362
    const-string v0, "FreezerManager"

    const-string v1, "onConnectedCar"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;)Ljava/util/Map;

    .line 366
    return-void
.end method

.method public onDisconnectCar()V
    .locals 0

    .line 370
    return-void
.end method
