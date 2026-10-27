.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 202
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21411c19

    if-ne v0, v1, :cond_2

    .line 204
    const-string v0, "SmartVolumeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBcmManager.CarBcmEventCallback onChangeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 207
    .local v0, "values":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 208
    array-length v1, v0

    new-array v1, v1, [I

    .line 209
    .local v1, "doorState":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 210
    aget-object v3, v0, v2

    .line 211
    .local v3, "objValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 212
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    .line 209
    .end local v3    # "objValue":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;

    invoke-direct {v3, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$7;[I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "doorState":[I
    :cond_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 233
    return-void
.end method
