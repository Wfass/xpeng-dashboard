.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;
.super Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiState"
.end annotation


# instance fields
.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .line 309
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 310
    const-string v4, "Wifi"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$RfState;-><init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;IILjava/lang/String;Landroid/content/Context;)V

    .line 313
    const-string p1, "wifi"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 314
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public init()V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->getWifiState()I

    move-result v0

    .line 319
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->mapWifiState2RfState(I)I

    move-result v1

    .line 321
    .local v1, "curRfState":I
    invoke-virtual {p0, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$WifiState;->setRfState(I)V

    .line 322
    return-void
.end method

.method public mapWifiState2RfState(I)I
    .locals 2
    .param p1, "state"    # I

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, "curRfState":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :cond_0
    const/4 v0, 0x1

    .line 333
    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x2

    .line 330
    nop

    .line 339
    :goto_0
    return v0
.end method
