.class public final Landroid/car/CarInfoManager;
.super Landroid/car/CarManagerBase;
.source "CarInfoManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final BASIC_INFO_DRIVER_SEAT:I = 0x1540010a

.field public static final BASIC_INFO_EV_BATTERY_CAPACITY:I = 0x11600106

.field public static final BASIC_INFO_EV_CONNECTOR_TYPES:I = 0x11410107

.field public static final BASIC_INFO_EV_PORT_LOCATION:I = 0x11400109

.field public static final BASIC_INFO_FUEL_CAPACITY:I = 0x11600104

.field public static final BASIC_INFO_FUEL_DOOR_LOCATION:I = 0x11400108

.field public static final BASIC_INFO_FUEL_TYPES:I = 0x11410105

.field public static final BASIC_INFO_KEY_MANUFACTURER:I = 0x11100101

.field public static final BASIC_INFO_KEY_MODEL:I = 0x11100102

.field public static final BASIC_INFO_KEY_MODEL_YEAR:I = 0x11400103

.field public static final BASIC_INFO_KEY_VEHICLE_ID:Ljava/lang/String; = "android.car.vehicle-id"

.field public static final INFO_KEY_PRODUCT_CONFIGURATION:Ljava/lang/String; = "android.car.product-config"


# direct methods
.method constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    return-void
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "info"

    return-object v0
.end method


# virtual methods
.method public getDriverSeat()I
    .locals 3

    .line 248
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x1540010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getEvBatteryCapacity()F
    .locals 4

    .line 186
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/Float;

    const v2, 0x11600106

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEvConnectorTypes()[I
    .locals 6

    .line 196
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11410107

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntArrayProperty(II)[I

    move-result-object v0

    .line 198
    array-length v1, v0

    new-array v1, v1, [I

    move v3, v2

    .line 199
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 200
    aget v4, v0, v3

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 238
    aput v2, v1, v3

    goto :goto_1

    :pswitch_0
    const/16 v4, 0xa

    .line 232
    aput v4, v1, v3

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x9

    .line 229
    aput v4, v1, v3

    goto :goto_1

    :pswitch_2
    const/16 v4, 0x8

    .line 226
    aput v4, v1, v3

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x7

    .line 223
    aput v4, v1, v3

    goto :goto_1

    :pswitch_4
    const/4 v4, 0x6

    .line 220
    aput v4, v1, v3

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x5

    .line 217
    aput v4, v1, v3

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x4

    .line 214
    aput v4, v1, v3

    goto :goto_1

    :pswitch_7
    const/4 v4, 0x3

    .line 211
    aput v4, v1, v3

    goto :goto_1

    :pswitch_8
    const/16 v4, 0xb

    .line 208
    aput v4, v1, v3

    goto :goto_1

    :pswitch_9
    const/4 v4, 0x2

    .line 205
    aput v4, v1, v3

    goto :goto_1

    :pswitch_a
    const/4 v4, 0x1

    .line 202
    aput v4, v1, v3

    goto :goto_1

    .line 235
    :cond_0
    aput v5, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEvPortLocation()I
    .locals 3

    .line 255
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11400109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFuelCapacity()F
    .locals 3

    .line 170
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11600104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v0

    return v0
.end method

.method public getFuelDoorLocation()I
    .locals 3

    .line 262
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11400108

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getFuelTypes()[I
    .locals 3

    .line 178
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11410105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntArrayProperty(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 4

    .line 121
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/String;

    const v2, 0x11100101

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 4

    .line 133
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const-class v1, Ljava/lang/String;

    const v2, 0x11100102

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(Ljava/lang/Class;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getModelYear()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11400103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getModelYearInInteger()I
    .locals 3

    .line 153
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x11400103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    return v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public onCarDisconnected()V
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/car/CarInfoManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->onCarDisconnected()V

    return-void
.end method
