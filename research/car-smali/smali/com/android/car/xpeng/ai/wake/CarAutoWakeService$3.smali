.class Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;
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

    .line 153
    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 156
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 168
    :sswitch_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$902(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;F)F

    .line 169
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$800(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    .line 170
    goto :goto_0

    .line 164
    :sswitch_1
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$702(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;F)F

    .line 165
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$800(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    .line 166
    goto :goto_0

    .line 172
    :sswitch_2
    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$1002(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I

    goto :goto_0

    .line 158
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$502(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)I

    .line 160
    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$3;->this$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1, v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->access$600(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;I)V

    .line 161
    nop

    .line 175
    .end local v0    # "status":I
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21401210 -> :sswitch_3
        0x21401257 -> :sswitch_2
        0x2160127a -> :sswitch_1
        0x2160127b -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "errorCode"    # I

    .line 180
    return-void
.end method
