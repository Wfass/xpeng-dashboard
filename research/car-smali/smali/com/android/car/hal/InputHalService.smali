.class public Lcom/android/car/hal/InputHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "InputHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/InputHalService$InputListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DISPLAY_INSTRUMENT_CLUSTER:I = 0x1

.field public static final DISPLAY_MAIN:I


# instance fields
.field private final mHal:Lcom/android/car/hal/VehicleHal;

.field private final mKeyDownTimes:Landroid/util/SparseLongArray;

.field private mKeyInputSupported:Z

.field private mListener:Lcom/android/car/hal/InputHalService$InputListener;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 53
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 51
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/InputHalService;->mKeyDownTimes:Landroid/util/SparseLongArray;

    .line 54
    iput-object p1, p0, Lcom/android/car/hal/InputHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    .line 55
    return-void
.end method

.method private dispatchKeyEvent(Lcom/android/car/hal/InputHalService$InputListener;III)V
    .locals 20
    .param p1, "listener"    # Lcom/android/car/hal/InputHalService$InputListener;
    .param p2, "action"    # I
    .param p3, "code"    # I
    .param p4, "display"    # I

    move-object/from16 v0, p0

    move/from16 v14, p2

    move/from16 v15, p3

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 131
    .local v12, "eventTime":J
    if-nez v14, :cond_0

    .line 132
    iget-object v1, v0, Lcom/android/car/hal/InputHalService;->mKeyDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v15, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 135
    :cond_0
    const/4 v1, 0x1

    if-ne v14, v1, :cond_1

    .line 136
    iget-object v1, v0, Lcom/android/car/hal/InputHalService;->mKeyDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v15, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide v1, v12

    .line 138
    .local v1, "downTime":J
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-wide v3, v12

    move v5, v14

    move v6, v15

    move-wide/from16 v18, v12

    move/from16 v12, v16

    .end local v12    # "eventTime":J
    .local v18, "eventTime":J
    move-object/from16 v13, v17

    invoke-static/range {v1 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 151
    .local v3, "event":Landroid/view/KeyEvent;
    move-object/from16 v4, p1

    move/from16 v5, p4

    invoke-interface {v4, v3, v5}, Lcom/android/car/hal/InputHalService$InputListener;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 152
    invoke-virtual {v3}, Landroid/view/KeyEvent;->recycle()V

    .line 153
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 157
    const-string v0, "*Input HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyInputSupported:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 104
    .local v0, "listener":Lcom/android/car/hal/InputHalService$InputListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-nez v0, :cond_0

    .line 106
    const-string v1, "CAR.INPUT"

    const-string v2, "Input event while listener is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 110
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const v4, 0x11410a10

    if-eq v3, v4, :cond_1

    .line 111
    const-string v3, "CAR.INPUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong event dispatched, prop:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    iget-object v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 116
    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    .line 117
    .local v3, "action":I
    iget-object v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 118
    .local v4, "code":I
    iget-object v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 124
    .local v5, "display":I
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/car/hal/InputHalService;->dispatchKeyEvent(Lcom/android/car/hal/InputHalService$InputListener;III)V

    .line 125
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "action":I
    .end local v4    # "code":I
    .end local v5    # "display":I
    goto :goto_0

    .line 126
    :cond_3
    return-void

    .line 104
    .end local v0    # "listener":Lcom/android/car/hal/InputHalService$InputListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 0

    .line 74
    return-void
.end method

.method public declared-synchronized isKeyInputSupported()Z
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/hal/InputHalService;
    throw v0
.end method

.method public release()V
    .locals 1

    .line 78
    monitor-enter p0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputListener(Lcom/android/car/hal/InputHalService$InputListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/InputHalService$InputListener;

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    if-nez v0, :cond_0

    .line 60
    const-string v0, "CAR.INPUT"

    const-string v1, "input listener set while key input not supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/android/car/hal/InputHalService;->mListener:Lcom/android/car/hal/InputHalService$InputListener;

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/android/car/hal/InputHalService;->mHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11410a10

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 87
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 88
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 89
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const v4, 0x11410a10

    if-ne v3, v4, :cond_0

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-enter p0

    .line 92
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/car/hal/InputHalService;->mKeyInputSupported:Z

    .line 93
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_0
    :goto_1
    goto :goto_0

    .line 96
    :cond_1
    return-object v0
.end method
