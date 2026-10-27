.class Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$11;
.super Ljava/lang/Object;
.source "SmartVolumeService.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


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

    .line 336
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 339
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401053

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartVolumeService;I)V

    .line 342
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 346
    return-void
.end method
