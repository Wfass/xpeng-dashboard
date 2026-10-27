.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;
.super Ljava/lang/Object;
.source "BlueLightControl.java"

# interfaces
.implements Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarServiceXpuEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;

    .line 101
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 104
    const-string v0, "BlueLightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 107
    .local v0, "propertyId":I
    const/4 v1, 0x0

    .line 108
    .local v1, "isChange":Z
    const v2, 0x21403899

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 111
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$302(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I

    .line 112
    const/4 v1, 0x1

    .line 116
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->isLightNeedActive()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;->onModeChanged(Z)V

    .line 120
    .end local v0    # "propertyId":I
    .end local v1    # "isChange":Z
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 124
    const-string v0, "BlueLightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
