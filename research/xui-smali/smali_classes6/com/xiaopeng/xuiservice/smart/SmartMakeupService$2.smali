.class Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$2;
.super Ljava/lang/Object;
.source "SmartMakeupService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addBcmManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 88
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401d54

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 97
    return-void
.end method
