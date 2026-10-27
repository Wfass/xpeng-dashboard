.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;
.super Ljava/lang/Object;
.source "BlueLightManager.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarBcmEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;

    .line 354
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 358
    const-string v0, "BlueLightManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBcmEventCallback onChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 361
    .local v0, "propertyId":I
    const v1, 0x21401cc2

    if-ne v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$502(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;I)I

    .line 363
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$CarBcmEventCallback;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    .line 366
    .end local v0    # "propertyId":I
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 370
    const-string v0, "BlueLightManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBcmEventCallback onErrorEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method
