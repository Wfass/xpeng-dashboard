.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;
.super Ljava/lang/Object;
.source "BlueLightControlPlat.java"

# interfaces
.implements Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarServiceEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 67
    const-string v0, "LightControlNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_5

    .line 69
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 70
    .local v0, "propertyId":I
    const/4 v1, 0x0

    .line 71
    .local v1, "isChange":Z
    const v2, 0x2140382f

    if-eq v0, v2, :cond_3

    const v2, 0x21403892    # 6.5127E-19f

    if-eq v0, v2, :cond_2

    const v2, 0x21403894

    if-eq v0, v2, :cond_1

    const v2, 0x21403899

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$302(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I

    .line 94
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I

    move-result v2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$202(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I

    .line 75
    const/4 v1, 0x1

    .line 98
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->isLightNeedActive()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;->onModeChanged(Z)V

    .line 102
    .end local v0    # "propertyId":I
    .end local v1    # "isChange":Z
    :cond_5
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 106
    const-string v0, "LightControlNew"

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

    .line 107
    return-void
.end method
