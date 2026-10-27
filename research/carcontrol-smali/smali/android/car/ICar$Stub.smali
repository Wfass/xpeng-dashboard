.class public abstract Landroid/car/ICar$Stub;
.super Landroid/os/Binder;
.source "ICar.java"

# interfaces
.implements Landroid/car/ICar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ICar"

.field static final TRANSACTION_disableFeature:I = 0x9

.field static final TRANSACTION_enableFeature:I = 0x8

.field static final TRANSACTION_getAllEnabledFeatures:I = 0xa

.field static final TRANSACTION_getAllPendingDisabledFeatures:I = 0xb

.field static final TRANSACTION_getAllPendingEnabledFeatures:I = 0xc

.field static final TRANSACTION_getCarConnectionType:I = 0x5

.field static final TRANSACTION_getCarManagerClassForFeature:I = 0xd

.field static final TRANSACTION_getCarService:I = 0x4

.field static final TRANSACTION_isFeatureEnabled:I = 0x7

.field static final TRANSACTION_onAutoWakeupResult:I = 0x6

.field static final TRANSACTION_onSwitchUser:I = 0x3

.field static final TRANSACTION_setCarServiceHelper:I = 0x1

.field static final TRANSACTION_setUserLockStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ICar"

    .line 93
    invoke-virtual {p0, p0, v0}, Landroid/car/ICar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICar"

    .line 104
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    instance-of v1, v0, Landroid/car/ICar;

    if-eqz v1, :cond_1

    .line 106
    check-cast v0, Landroid/car/ICar;

    return-object v0

    .line 108
    :cond_1
    new-instance v0, Landroid/car/ICar$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICar;
    .locals 1

    .line 556
    sget-object v0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ICar;)Z
    .locals 1

    .line 549
    sget-object v0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 550
    sput-object p0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.ICar"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 232
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->getCarManagerClassForFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 224
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Landroid/car/ICar$Stub;->getAllPendingEnabledFeatures()Ljava/util/List;

    move-result-object p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 216
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/car/ICar$Stub;->getAllPendingDisabledFeatures()Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 208
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/car/ICar$Stub;->getAllEnabledFeatures()Ljava/util/List;

    move-result-object p1

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    .line 198
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->disableFeature(Ljava/lang/String;)I

    move-result p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 188
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->enableFeature(Ljava/lang/String;)I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 178
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 170
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 173
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->onAutoWakeupResult(Z)V

    return v1

    .line 162
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/car/ICar$Stub;->getCarConnectionType()I

    move-result p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 152
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 144
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->onSwitchUser(I)V

    return v1

    .line 134
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/car/ICar$Stub;->setUserLockStatus(II)V

    return v1

    .line 126
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/car/ICar$Stub;->setCarServiceHelper(Landroid/os/IBinder;)V

    return v1

    .line 121
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
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
