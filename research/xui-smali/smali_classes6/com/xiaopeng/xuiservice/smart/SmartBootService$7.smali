.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$7;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 554
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 557
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401205

    if-ne v0, v1, :cond_1

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$7;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$2700(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 560
    :cond_1
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 564
    return-void
.end method
