.class public abstract Landroid/app/INotificationStatusCallBack$Stub;
.super Landroid/os/Binder;
.source "INotificationStatusCallBack.java"

# interfaces
.implements Landroid/app/INotificationStatusCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationStatusCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationStatusCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onGetNotificationLevel:I = 0x3

.field static final TRANSACTION_onNtfCardStatusCallBack:I = 0x2

.field static final TRANSACTION_onReceiveNotificationStatus:I = 0x1

.field static final TRANSACTION_onSetNotificationLevel:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.INotificationStatusCallBack"

    .line 34
    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationStatusCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationStatusCallBack;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.INotificationStatusCallBack"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Landroid/app/INotificationStatusCallBack;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Landroid/app/INotificationStatusCallBack;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Landroid/app/INotificationStatusCallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/INotificationStatusCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/app/INotificationStatusCallBack;
    .locals 1

    .line 229
    sget-object v0, Landroid/app/INotificationStatusCallBack$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationStatusCallBack;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/INotificationStatusCallBack;)Z
    .locals 1

    .line 219
    sget-object v0, Landroid/app/INotificationStatusCallBack$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationStatusCallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 223
    sput-object p0, Landroid/app/INotificationStatusCallBack$Stub$Proxy;->sDefaultImpl:Landroid/app/INotificationStatusCallBack;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 v0, 0x1

    const-string v1, "android.app.INotificationStatusCallBack"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 102
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/INotificationStatusCallBack$Stub;->onSetNotificationLevel(I)V

    return v0

    .line 94
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/INotificationStatusCallBack$Stub;->onGetNotificationLevel()I

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 82
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 89
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/app/INotificationStatusCallBack$Stub;->onNtfCardStatusCallBack(Ljava/lang/String;JI)V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/app/INotificationStatusCallBack$Stub;->onReceiveNotificationStatus(Ljava/lang/String;JI)V

    return v0

    .line 62
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
