.class public Lcom/android/car/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/DebugService$LoadView;,
        Lcom/android/car/DebugService$CpuTracker;
    }
.end annotation


# instance fields
.field final BOOLEAN:I

.field final BYTES:I

.field final FLOAT:I

.field final FLOAT_VEC:I

.field final INT32:I

.field final INT32_VEC:I

.field final INT64:I

.field final INT64_VEC:I

.field final STRING:I

.field mContext:Landroid/content/Context;

.field mEventString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEventStringHight:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/DebugService;->mEventString:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/DebugService;->mEventStringHight:I

    .line 60
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/android/car/DebugService;->STRING:I

    .line 61
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/android/car/DebugService;->BOOLEAN:I

    .line 62
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/android/car/DebugService;->INT32:I

    .line 63
    const/high16 v0, 0x410000

    iput v0, p0, Lcom/android/car/DebugService;->INT32_VEC:I

    .line 64
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/android/car/DebugService;->INT64:I

    .line 65
    const/high16 v0, 0x510000

    iput v0, p0, Lcom/android/car/DebugService;->INT64_VEC:I

    .line 66
    const/high16 v0, 0x600000

    iput v0, p0, Lcom/android/car/DebugService;->FLOAT:I

    .line 67
    const/high16 v0, 0x610000

    iput v0, p0, Lcom/android/car/DebugService;->FLOAT_VEC:I

    .line 68
    const/high16 v0, 0x700000

    iput v0, p0, Lcom/android/car/DebugService;->BYTES:I

    .line 37
    iput-object p1, p0, Lcom/android/car/DebugService;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private dumpEvent(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "evnet"    # Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 71
    invoke-virtual {p1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->getLastEvent()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 72
    .local v0, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    const/high16 v3, 0x100000

    if-eq v2, v3, :cond_5

    const/high16 v3, 0x200000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x400000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x410000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x500000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x510000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x600000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x610000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x700000

    if-eq v2, v3, :cond_0

    .line 100
    const-string v2, "unknow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 93
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "bytes":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v2    # "bytes":[Ljava/lang/Object;
    goto :goto_0

    .line 96
    :cond_1
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_0

    .line 85
    :cond_3
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_0

    .line 81
    :cond_4
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    goto :goto_0

    .line 76
    :cond_5
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    nop

    .line 102
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public init()V
    .locals 8

    .line 41
    new-instance v0, Lcom/android/car/DebugService$LoadView;

    iget-object v1, p0, Lcom/android/car/DebugService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/car/DebugService$LoadView;-><init>(Lcom/android/car/DebugService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/DebugService;->mView:Landroid/view/View;

    .line 42
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x7df

    const/16 v6, 0x18

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 49
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    const-string v1, "Load Average"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/android/car/DebugService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 52
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/car/DebugService;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    return-void
.end method

.method public onEvent(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "events":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;>;"
    iget-object v0, p0, Lcom/android/car/DebugService;->mEventString:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;

    .line 108
    .local v1, "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    iget-object v2, p0, Lcom/android/car/DebugService;->mEventString:Ljava/util/ArrayList;

    const-string v3, "%d:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v1}, Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v1}, Lcom/android/car/DebugService;->dumpEvent(Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 108
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v1    # "info":Lcom/android/car/hal/VehicleHal$VehiclePropertyEventInfo;
    goto :goto_0

    .line 111
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/car/DebugService;->mEventStringHight:I

    .line 112
    return-void
.end method

.method public release()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/car/DebugService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/car/DebugService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/DebugService;->mView:Landroid/view/View;

    .line 59
    return-void
.end method
