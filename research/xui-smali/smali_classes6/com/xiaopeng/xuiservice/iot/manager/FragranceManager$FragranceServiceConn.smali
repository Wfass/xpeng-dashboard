.class Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;
.super Ljava/lang/Object;
.source "FragranceManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragranceServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;

    .line 256
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V

    return-void
.end method


# virtual methods
.method public onConnectXUI()V
    .locals 2

    .line 275
    const-string v0, "FragranceManager##"

    const-string v1, "onConnectXUI"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onConnectedCar()V
    .locals 2

    .line 259
    const-string v0, "FragranceManager##"

    const-string v1, "onConnectedCar, supportLeftOver=false"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V

    .line 263
    return-void
.end method

.method public onDisconnectCar()V
    .locals 2

    .line 267
    const-string v0, "FragranceManager##"

    const-string v1, "onDisconnectCar"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1402(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Landroid/car/hardware/hvac/CarHvacManager;)Landroid/car/hardware/hvac/CarHvacManager;

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->access$1502(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I

    .line 271
    return-void
.end method

.method public onDisconnectXUI()V
    .locals 2

    .line 280
    const-string v0, "FragranceManager##"

    const-string v1, "onDisconnectXUI"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
