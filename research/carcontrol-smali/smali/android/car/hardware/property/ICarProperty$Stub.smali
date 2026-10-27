.class public abstract Landroid/car/hardware/property/ICarProperty$Stub;
.super Landroid/os/Binder;
.source "ICarProperty.java"

# interfaces
.implements Landroid/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/property/ICarProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/property/ICarProperty$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.hardware.property.ICarProperty"

.field static final TRANSACTION_getProperty:I = 0x4

.field static final TRANSACTION_getPropertyArray:I = 0x9

.field static final TRANSACTION_getPropertyList:I = 0x3

.field static final TRANSACTION_getReadPermission:I = 0x6

.field static final TRANSACTION_getWritePermission:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListenerWithFlag:I = 0xa

.field static final TRANSACTION_setMultiProperties:I = 0x8

.field static final TRANSACTION_setProperty:I = 0x5

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.hardware.property.ICarProperty"

    .line 60
    invoke-virtual {p0, p0, v0}, Landroid/car/hardware/property/ICarProperty$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.property.ICarProperty"

    .line 71
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    instance-of v1, v0, Landroid/car/hardware/property/ICarProperty;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Landroid/car/hardware/property/ICarProperty;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/property/ICarProperty;
    .locals 1

    .line 467
    sget-object v0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/property/ICarProperty;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/hardware/property/ICarProperty;)Z
    .locals 1

    .line 460
    sget-object v0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/property/ICarProperty;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 461
    sput-object p0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/property/ICarProperty;

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

    const-string v2, "android.car.hardware.property.ICarProperty"

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 196
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 205
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/car/hardware/property/ICarProperty$Stub;->registerListenerWithFlag(IFILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 188
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/car/hardware/property/ICarProperty$Stub;->getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 177
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    sget-object p1, Landroid/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/ICarProperty$Stub;->setMultiProperties(Ljava/util/List;Landroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 167
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/ICarProperty$Stub;->getWritePermission(I)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 157
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/ICarProperty$Stub;->getReadPermission(I)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 143
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    sget-object p1, Landroid/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/ICarProperty$Stub;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/ICarProperty$Stub;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p1, p3, v1}, Landroid/car/hardware/CarPropertyValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 117
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/car/hardware/property/ICarProperty$Stub;->getPropertyList()Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 106
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/ICarProperty$Stub;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/hardware/property/ICarProperty$Stub;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 88
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
