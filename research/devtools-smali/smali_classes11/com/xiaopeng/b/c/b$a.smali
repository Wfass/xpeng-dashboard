.class public abstract Lcom/xiaopeng/b/c/b$a;
.super Landroid/os/Binder;
.source "IPhoneServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/b/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/c/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/b/c/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static i(Landroid/os/IBinder;)Lcom/xiaopeng/b/c/b;
    .locals 2

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/c/b;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/b/c/b;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/c/b$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/c/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_0
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/c/b$a;->h(ILjava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v1

    .line 118
    :pswitch_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 133
    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/b/c/b$a;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    return v1

    .line 95
    :pswitch_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 112
    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/b/c/b$a;->b(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v1

    .line 72
    :pswitch_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 89
    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/xiaopeng/b/c/b$a;->c(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v1

    .line 49
    :pswitch_4
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 54
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    .line 57
    :cond_0
    const/4 p2, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/b/c/b$a;->a(ILandroid/os/Bundle;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 66
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_1
    return v1

    .line 44
    :cond_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.phonecontrol.IPhoneServiceCallback"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
