.class Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;
.super Ljava/lang/Object;
.source "PeripheralDeviceDataBi.java"

# interfaces
.implements Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;->this$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;->this$0:Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->access$100(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Landroid/car/hardware/CarPropertyValue;)V

    .line 86
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 90
    return-void
.end method
