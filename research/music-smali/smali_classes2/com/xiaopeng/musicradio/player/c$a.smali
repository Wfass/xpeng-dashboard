.class public abstract Lcom/xiaopeng/musicradio/player/c$a;
.super Landroid/os/Binder;
.source "IPlayerClientInterface.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 51
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/musicradio/player/c$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/player/c;
    .locals 1

    .line 409
    sget-object v0, Lcom/xiaopeng/musicradio/player/c$a$a;->a:Lcom/xiaopeng/musicradio/player/c;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaopeng/musicradio/player/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/xiaopeng/musicradio/player/c;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/xiaopeng/musicradio/player/c;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/player/c$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/c$a$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.xiaopeng.musicradio.player.IPlayerClientInterface"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 189
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 196
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/player/c$a;->d(ILjava/lang/String;I)V

    return v1

    .line 177
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 184
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/player/c$a;->c(ILjava/lang/String;I)V

    return v1

    .line 160
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 167
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 172
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 146
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 155
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;Ljava/lang/String;J)V

    return v1

    .line 136
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;)V

    return v1

    .line 124
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 131
    :cond_1
    invoke-virtual {p0, p1, p3, v0}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;Z)V

    return v1

    .line 108
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    move-object v2, p0

    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;IIZ)V

    return v1

    .line 96
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 103
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/player/c$a;->b(ILjava/lang/String;I)V

    return v1

    .line 84
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/player/c$a;->a(ILjava/lang/String;I)V

    return v1

    .line 79
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
