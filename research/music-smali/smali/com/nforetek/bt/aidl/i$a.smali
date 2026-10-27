.class public abstract Lcom/nforetek/bt/aidl/i$a;
.super Landroid/os/Binder;
.source "UiCallbackPbap.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/i$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/i;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackPbap"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/nforetek/bt/aidl/i;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/nforetek/bt/aidl/i;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/nforetek/bt/aidl/i$a$a;

    invoke-direct {v0, p0}, Lcom/nforetek/bt/aidl/i$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.nforetek.bt.aidl.UiCallbackPbap"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 189
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 192
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nforetek/bt/aidl/i$a;->a(Z)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 178
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 183
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;Z)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 169
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    move-object v2, p0

    .line 163
    invoke-virtual/range {v2 .. v7}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v0, v1

    .line 146
    :cond_3
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 131
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;III)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 101
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    .line 116
    invoke-virtual/range {v2 .. v9}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 87
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    sget-object p1, Lcom/nforetek/bt/aidl/NfPbapContact;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nforetek/bt/aidl/NfPbapContact;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 95
    :goto_1
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/i$a;->a(Lcom/nforetek/bt/aidl/NfPbapContact;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 81
    invoke-virtual/range {v2 .. v7}, Lcom/nforetek/bt/aidl/i$a;->a(Ljava/lang/String;IIII)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/nforetek/bt/aidl/i$a;->a()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 58
    :cond_5
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
