.class Lcom/xiaopeng/xuiservice/device/DeviceCarService$1;
.super Ljava/lang/Object;
.source "DeviceCarService.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceCarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/device/DeviceCarService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/device/DeviceCarService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService$1;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceCarService$1;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceCarService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/device/DeviceCarService;->access$000(Lcom/xiaopeng/xuiservice/device/DeviceCarService;Landroid/car/hardware/CarPropertyValue;)V

    .line 45
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 48
    return-void
.end method
