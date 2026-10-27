.class public abstract Lcom/nforetek/bt/aidl/c$a;
.super Landroid/os/Binder;
.source "UiCallbackBluetooth.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/nforetek/bt/aidl/c;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/nforetek/bt/aidl/c;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/nforetek/bt/aidl/c$a$a;

    invoke-direct {v0, p0}, Lcom/nforetek/bt/aidl/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.nforetek.bt.aidl.UiCallbackBluetooth"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 239
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 246
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->d(Ljava/lang/String;II)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 226
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 233
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->c(Ljava/lang/String;II)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 213
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 220
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->b(Ljava/lang/String;II)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 207
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->a(Ljava/lang/String;II)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 191
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/c$a;->a(I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 182
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/c$a;->c(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 173
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/c$a;->b(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 164
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/c$a;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 158
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 136
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 145
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/nforetek/bt/aidl/c$a;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 130
    invoke-virtual {p0, p1, p4, p2}, Lcom/nforetek/bt/aidl/c$a;->a(Ljava/lang/String;Ljava/lang/String;B)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    move-object v2, p0

    .line 117
    invoke-virtual/range {v2 .. v7}, Lcom/nforetek/bt/aidl/c$a;->a(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/c$a;->c()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 92
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/c$a;->b()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 81
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/c$a;->b(II)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/nforetek/bt/aidl/c$a;->a(II)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/c$a;->a()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 58
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
