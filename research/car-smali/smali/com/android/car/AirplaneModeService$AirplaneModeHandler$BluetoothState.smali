.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;
.super Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothState"
.end annotation


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .line 264
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 265
    const-string v4, "Bluetooth"

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;IILjava/lang/String;Landroid/content/Context;)V

    .line 268
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 269
    return-void
.end method


# virtual methods
.method public getBluetoothState()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0

    .line 301
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public init()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->getBluetoothState()I

    move-result v0

    .line 274
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->mapBluetoothState2RfState(I)I

    move-result v1

    .line 276
    .local v1, "curRfState":I
    invoke-virtual {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$BluetoothState;->setRfState(I)V

    .line 277
    return-void
.end method

.method public mapBluetoothState2RfState(I)I
    .locals 2
    .param p1, "state"    # I

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "curRfState":I
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    .line 290
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_0
    const/4 v0, 0x1

    .line 288
    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x2

    .line 285
    nop

    .line 294
    :goto_0
    return v0
.end method
