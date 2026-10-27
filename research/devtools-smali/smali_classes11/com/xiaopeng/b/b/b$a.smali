.class public abstract Lcom/xiaopeng/b/b/b$a;
.super Landroid/os/Binder;
.source "IGeneralServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/b/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/b/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/b/b/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static g(Landroid/os/IBinder;)Lcom/xiaopeng/b/b/b;
    .locals 2

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/b/b;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/b/b/b;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/b/b$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/b/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 89
    :pswitch_0
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/b/b/b$a;->a(I[BI)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    return v1

    .line 72
    :pswitch_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    move v7, v1

    goto :goto_0

    .line 82
    :cond_0
    nop

    .line 83
    move v7, v0

    :goto_0
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/b/b/b$a;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v1

    .line 49
    :pswitch_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 54
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_1

    .line 57
    :cond_1
    const/4 p2, 0x0

    .line 59
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/b/b$a;->a(ILandroid/os/Bundle;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_2
    return v1

    .line 44
    :cond_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IGeneralServiceCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
