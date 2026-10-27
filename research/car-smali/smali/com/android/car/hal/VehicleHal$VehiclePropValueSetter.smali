.class final Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;
.super Ljava/lang/Object;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VehiclePropValueSetter"
.end annotation


# instance fields
.field final mClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/hal/HalClient;",
            ">;"
        }
    .end annotation
.end field

.field final mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

.field final synthetic this$0:Lcom/android/car/hal/VehicleHal;


# direct methods
.method private constructor <init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "client"    # Lcom/android/car/hal/HalClient;
    .param p3, "propId"    # I
    .param p4, "areaId"    # I

    .line 839
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->this$0:Lcom/android/car/hal/VehicleHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mClient:Ljava/lang/ref/WeakReference;

    .line 841
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 842
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput p3, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 843
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput p4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 844
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;IILcom/android/car/hal/VehicleHal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/hal/VehicleHal;
    .param p2, "x1"    # Lcom/android/car/hal/HalClient;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/car/hal/VehicleHal$1;

    .line 835
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;-><init>(Lcom/android/car/hal/VehicleHal;Lcom/android/car/hal/HalClient;II)V

    return-void
.end method


# virtual methods
.method submit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/hal/HalClient;

    .line 876
    .local v0, "client":Lcom/android/car/hal/HalClient;
    if-eqz v0, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/HalClient;->setValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 883
    :cond_0
    return-void
.end method

.method to(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->submit()V

    .line 853
    return-void
.end method

.method to(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 870
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 871
    invoke-virtual {p0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->submit()V

    .line 872
    return-void
.end method

.method to(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->to(I)V

    .line 848
    return-void
.end method

.method to([B)V
    .locals 5
    .param p1, "values"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 863
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 864
    .local v2, "value":B
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    .end local v2    # "value":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->submit()V

    .line 867
    return-void
.end method

.method to([I)V
    .locals 5
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 856
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 857
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/hal/VehicleHal$VehiclePropValueSetter;->submit()V

    .line 860
    return-void
.end method
