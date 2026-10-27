.class Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;
.super Ljava/lang/Object;
.source "CarAutoWakeService.java"

# interfaces
.implements Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 130
    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 133
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_1

    const v1, 0x21701403

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 136
    .local v0, "powerSt":[B
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$200(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;[B)V

    .line 137
    goto :goto_0

    .line 140
    .end local v0    # "powerSt":[B
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 141
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$302(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I

    .line 142
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$2;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$400(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V

    .line 143
    nop

    .line 146
    .end local v0    # "status":I
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "errorCode"    # I

    .line 151
    return-void
.end method
