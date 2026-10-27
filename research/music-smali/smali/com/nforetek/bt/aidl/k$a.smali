.class public abstract Lcom/nforetek/bt/aidl/k$a;
.super Landroid/os/Binder;
.source "UiCallbackUsbBluetooth.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/k$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/k$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/k;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/nforetek/bt/aidl/k;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/nforetek/bt/aidl/k;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/nforetek/bt/aidl/k$a$a;

    invoke-direct {v0, p0}, Lcom/nforetek/bt/aidl/k$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.nforetek.bt.aidl.UiCallbackUsbBluetooth"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 168
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->d(Ljava/lang/String;II)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/k$a;->a(I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 139
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 146
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->c(Ljava/lang/String;II)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 126
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 133
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->b(Ljava/lang/String;II)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->a(Ljava/lang/String;II)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/nforetek/bt/aidl/k$a;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/k$a;->b()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 84
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/k$a;->a()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 73
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/k$a;->a(II)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 60
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 67
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/k$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 42
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
