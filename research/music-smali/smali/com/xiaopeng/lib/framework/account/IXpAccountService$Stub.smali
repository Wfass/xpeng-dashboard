.class public abstract Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;
.super Landroid/os/Binder;
.source "IXpAccountService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/account/IXpAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/IXpAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.lib.framework.account.IXpAccountService"

.field static final TRANSACTION_getUserInfo:I = 0x2

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_requestAction:I = 0x4

.field static final TRANSACTION_requestOAuth:I = 0x3

.field static final TRANSACTION_requestOTP:I = 0x7

.field static final TRANSACTION_subscribe:I = 0x5

.field static final TRANSACTION_unsubscribe:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.lib.framework.account.IXpAccountService"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.lib.framework.account.IXpAccountService"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const v0, 0x5f4e5446

    const-string v1, "com.xiaopeng.lib.framework.account.IXpAccountService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IXpCallback;

    move-result-object v8

    move-object v3, p0

    .line 152
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 125
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->unsubscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 107
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 118
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

    move-result-object p1

    .line 119
    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->subscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 89
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 96
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 101
    :cond_2
    invoke-virtual {p0, v3, v4, p1, v0}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->requestAction(JILandroid/os/Bundle;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 76
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/account/IXpCallback;

    move-result-object p2

    .line 83
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->requestOAuth(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 60
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->getUserInfo(J)Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    move-result-object p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p1, p3, v2}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 49
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;->init(JLjava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 44
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
