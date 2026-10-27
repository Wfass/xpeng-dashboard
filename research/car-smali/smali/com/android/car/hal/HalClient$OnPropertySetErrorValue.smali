.class Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;
.super Ljava/lang/Object;
.source "HalClient.java"

# interfaces
.implements Lcom/android/car/hal/HalClient$HalCallBackValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPropertySetErrorValue"
.end annotation


# instance fields
.field private final propertySetErrorValue:Lcom/android/car/hal/HalClient$PropertySetError;

.field final synthetic this$0:Lcom/android/car/hal/HalClient;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/HalClient;Lcom/android/car/hal/HalClient$PropertySetError;)V
    .locals 0
    .param p2, "propertySetErrorValue"    # Lcom/android/car/hal/HalClient$PropertySetError;

    .line 554
    iput-object p1, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->this$0:Lcom/android/car/hal/HalClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->propertySetErrorValue:Lcom/android/car/hal/HalClient$PropertySetError;

    .line 556
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->this$0:Lcom/android/car/hal/HalClient;

    invoke-static {v0}, Lcom/android/car/hal/HalClient;->access$800(Lcom/android/car/hal/HalClient;)Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->propertySetErrorValue:Lcom/android/car/hal/HalClient$PropertySetError;

    iget v1, v1, Lcom/android/car/hal/HalClient$PropertySetError;->errorCode:I

    iget-object v2, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->propertySetErrorValue:Lcom/android/car/hal/HalClient$PropertySetError;

    iget v2, v2, Lcom/android/car/hal/HalClient$PropertySetError;->propId:I

    iget-object v3, p0, Lcom/android/car/hal/HalClient$OnPropertySetErrorValue;->propertySetErrorValue:Lcom/android/car/hal/HalClient$PropertySetError;

    iget v3, v3, Lcom/android/car/hal/HalClient$PropertySetError;->areaId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySetError(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onPropertySet failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
