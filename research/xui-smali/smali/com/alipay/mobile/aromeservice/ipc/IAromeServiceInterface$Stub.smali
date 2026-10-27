.class public abstract Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IAromeServiceInterface.java"

# interfaces
.implements Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

.field static final TRANSACTION_registerOnCustomClickListener:I = 0x3

.field static final TRANSACTION_sendRequest:I = 0x2

.field static final TRANSACTION_setInitOptions:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    move-object v0, v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 38
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 90
    :pswitch_0
    const-string v0, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;->registerOnCustomClickListener([Ljava/lang/String;)V

    .line 94
    return v1

    .line 60
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_1
    const-string v2, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    sget-object v2, Lcom/alipay/mobile/aromeservice/ipc/App;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aromeservice/ipc/App;

    .local v2, "_arg0":Lcom/alipay/mobile/aromeservice/ipc/App;
    goto :goto_0

    .line 66
    .end local v2    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/App;
    :cond_0
    move-object v2, v0

    .line 69
    .restart local v2    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/App;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_1

    .line 75
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_1
    nop

    .line 77
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;->sendRequest(Lcom/alipay/mobile/aromeservice/ipc/App;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 78
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_2

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v4, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 84
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    :goto_2
    return v1

    .line 47
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v2    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/App;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_2
    const-string v2, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    sget-object v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;

    .local v0, "_arg0":Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    goto :goto_3

    .line 53
    .end local v0    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    :cond_3
    nop

    .line 55
    .restart local v0    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;->setInitOptions(Lcom/alipay/mobile/aromeservice/ipc/InitOptions;)V

    .line 56
    return v1

    .line 42
    .end local v0    # "_arg0":Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    :cond_4
    const-string v0, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
