.class public Lcom/android/car/CarBluetoothService;
.super Landroid/car/ICarBluetooth$Stub;
.source "CarBluetoothService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarBluetoothService"


# instance fields
.field private final mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPropertyService"    # Lcom/android/car/CarPropertyService;
    .param p3, "userSwitchService"    # Lcom/android/car/PerUserCarServiceHelper;
    .param p4, "uxrService"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 63
    invoke-direct {p0}, Landroid/car/ICarBluetooth$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4, p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->create(Landroid/content/Context;Lcom/android/car/CarPropertyService;Lcom/android/car/PerUserCarServiceHelper;Lcom/android/car/CarUxRestrictionsManagerService;Lcom/android/car/CarBluetoothService;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 67
    return-void
.end method

.method private enforceBluetoothAdminPermission()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 218
    const-string v0, "CarBluetoothService"

    const-string v1, "CarBluetoothPrioritySettings does not have a Context"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requires permission android.permission.BLUETOOTH_ADMIN"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getKeyForProfile(II)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # I
    .param p2, "priority"    # I

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "keyToLookup":Ljava/lang/String;
    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 254
    const-string v1, "CarBluetoothService"

    const-string v2, "Unsupported Bluetooth profile to set priority to"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 233
    :pswitch_0
    if-nez p2, :cond_0

    .line 235
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICE_PRIORITY_0"

    goto :goto_0

    .line 236
    :cond_0
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICE_PRIORITY_1"

    :goto_0
    move-object v0, v1

    .line 237
    goto :goto_4

    .line 241
    :pswitch_1
    if-nez p2, :cond_1

    .line 243
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICE_PRIORITY_0"

    goto :goto_1

    .line 244
    :cond_1
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICE_PRIORITY_1"

    :goto_1
    move-object v0, v1

    .line 245
    goto :goto_4

    .line 227
    :cond_2
    if-nez p2, :cond_3

    .line 229
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICE_PRIORITY_0"

    goto :goto_2

    .line 230
    :cond_3
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICE_PRIORITY_1"

    :goto_2
    move-object v0, v1

    .line 231
    goto :goto_4

    .line 247
    :cond_4
    if-nez p2, :cond_5

    .line 249
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICE_PRIORITY_0"

    goto :goto_3

    .line 250
    :cond_5
    const-string v1, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICE_PRIORITY_1"

    :goto_3
    move-object v0, v1

    .line 251
    nop

    .line 257
    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearBluetoothDeviceConnectionPriority(II)V
    .locals 4
    .param p1, "profileToClear"    # I
    .param p2, "priorityToClear"    # I

    .line 123
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 124
    if-nez p2, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/car/CarBluetoothService;->isPriorityDevicePresent(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "CarBluetoothService"

    const-string v1, "Please remove Secondary device before removing Primary Device"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarBluetoothService;->getKeyForProfile(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 134
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 131
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 135
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 261
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    throw p1
.end method

.method public getDeviceNameWithPriority(II)Ljava/lang/String;
    .locals 4
    .param p1, "profile"    # I
    .param p2, "priorityToCheck"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "keyToQuery":Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, "deviceName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 172
    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 187
    :pswitch_0
    if-nez p2, :cond_0

    .line 189
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICE_PRIORITY_0"

    goto :goto_0

    .line 190
    :cond_0
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_MESSAGING_DEVICE_PRIORITY_1"

    :goto_0
    move-object v0, v2

    .line 191
    goto :goto_4

    .line 181
    :pswitch_1
    if-nez p2, :cond_1

    .line 183
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICE_PRIORITY_0"

    goto :goto_1

    .line 184
    :cond_1
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_PHONE_DEVICE_PRIORITY_1"

    :goto_1
    move-object v0, v2

    .line 185
    goto :goto_4

    .line 174
    :cond_2
    if-nez p2, :cond_3

    .line 176
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICE_PRIORITY_0"

    goto :goto_2

    .line 177
    :cond_3
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_MUSIC_DEVICE_PRIORITY_1"

    :goto_2
    move-object v0, v2

    .line 178
    goto :goto_4

    .line 193
    :cond_4
    if-nez p2, :cond_5

    .line 195
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICE_PRIORITY_0"

    goto :goto_3

    .line 196
    :cond_5
    const-string v2, "android.car.BLUETOOTH_AUTOCONNECT_NETWORK_DEVICE_PRIORITY_1"

    :goto_3
    move-object v0, v2

    .line 197
    nop

    .line 204
    :goto_4
    if-eqz v0, :cond_6

    .line 205
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 205
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->init()V

    .line 72
    return-void
.end method

.method public isPriorityDevicePresent(II)Z
    .locals 2
    .param p1, "profile"    # I
    .param p2, "priorityToCheck"    # I

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/car/CarBluetoothService;->getDeviceNameWithPriority(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    throw v0
.end method

.method public setBluetoothDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "deviceToSet"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profileToSet"    # I
    .param p3, "priorityToSet"    # I

    .line 92
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/car/CarBluetoothService;->setBluetoothDeviceConnectionPriority(Ljava/lang/String;II)V

    .line 93
    return-void
.end method

.method public setBluetoothDeviceConnectionPriority(Ljava/lang/String;II)V
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "profileToSet"    # I
    .param p3, "priorityToSet"    # I

    .line 98
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 99
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/car/CarBluetoothService;->isPriorityDevicePresent(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "CarBluetoothService"

    const-string v1, "Secondary Device not allowed without a primary device"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    invoke-direct {p0, p2, p3}, Lcom/android/car/CarBluetoothService;->getKeyForProfile(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 108
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 112
    return-void
.end method
