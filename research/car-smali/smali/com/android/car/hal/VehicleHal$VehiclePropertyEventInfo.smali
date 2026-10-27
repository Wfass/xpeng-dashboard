.class public Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
.super Ljava/lang/Object;
.source "VehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/VehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VehiclePropertyEventInfo"
.end annotation


# instance fields
.field private eventCount:I

.field private lastEvent:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;


# direct methods
.method private constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->eventCount:I

    .line 818
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->lastEvent:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 819
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/VehicleHal$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p2, "x1"    # Lcom/android/car/hal/VehicleHal$1;

    .line 812
    invoke-direct {p0, p1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    .param p1, "x1"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 812
    invoke-direct {p0, p1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->addNewEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 812
    iget v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->eventCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 812
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->lastEvent:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    return-object v0
.end method

.method private addNewEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 822
    iget v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->eventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->eventCount:I

    .line 823
    iput-object p1, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->lastEvent:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 824
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 827
    iget v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->eventCount:I

    return v0
.end method

.method public getLastEvent()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->lastEvent:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    return-object v0
.end method
