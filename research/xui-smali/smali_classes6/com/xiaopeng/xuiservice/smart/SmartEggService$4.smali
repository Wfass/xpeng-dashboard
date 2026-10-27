.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;
.super Ljava/lang/Object;
.source "SmartEggService.java"

# interfaces
.implements Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 184
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c07

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$802(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$4;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$802(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    .line 197
    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 201
    return-void
.end method
