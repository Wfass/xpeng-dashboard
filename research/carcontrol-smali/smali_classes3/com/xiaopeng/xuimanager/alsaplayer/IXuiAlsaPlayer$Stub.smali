.class public abstract Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;
.super Landroid/os/Binder;
.source "IXuiAlsaPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerListener:I = 0x7

.field static final TRANSACTION_resetRouteAndUpdatePath:I = 0x6

.field static final TRANSACTION_setCaptureParameter:I = 0x4

.field static final TRANSACTION_setPlaybackParameter:I = 0x5

.field static final TRANSACTION_startPlay:I = 0x1

.field static final TRANSACTION_stopPlay:I = 0x2

.field static final TRANSACTION_unregisterListener:I = 0x8

.field static final TRANSACTION_writeData:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 51
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;
    .locals 1

    .line 441
    sget-object v0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;)Z
    .locals 1

    .line 431
    sget-object v0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 435
    sput-object p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 432
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 191
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 182
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 168
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 146
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    .line 161
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->setPlaybackParameter(Ljava/lang/String;IIIIII)I

    move-result p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 124
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, p0

    .line 139
    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->setCaptureParameter(Ljava/lang/String;IIIIII)I

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 107
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 116
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->writeData(Ljava/lang/String;[BII)I

    move-result p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 97
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->stopPlay(Ljava/lang/String;)I

    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 87
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->startPlay(Ljava/lang/String;)I

    move-result p1

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 79
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
