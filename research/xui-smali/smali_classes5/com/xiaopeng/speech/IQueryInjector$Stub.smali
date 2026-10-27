.class public abstract Lcom/xiaopeng/speech/IQueryInjector$Stub;
.super Landroid/os/Binder;
.source "IQueryInjector.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/IQueryInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/IQueryInjector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.IQueryInjector"

.field static final TRANSACTION_isQueryInject:I = 0x4

.field static final TRANSACTION_queryApiRouterData:I = 0x5

.field static final TRANSACTION_queryData:I = 0x3

.field static final TRANSACTION_registerDataSensor:I = 0x1

.field static final TRANSACTION_unRegisterDataSensor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.xiaopeng.speech.IQueryInjector"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/IQueryInjector;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.xiaopeng.speech.IQueryInjector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/IQueryInjector;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/IQueryInjector;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/IQueryInjector$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/IQueryInjector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.xiaopeng.speech.IQueryInjector"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->queryApiRouterData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v5

    .line 103
    .local v5, "_result":Lcom/xiaopeng/speech/common/bean/Value;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v5, p3, v2}, Lcom/xiaopeng/speech/common/bean/Value;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_0
    return v2

    .line 87
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->isQueryInject(Ljava/lang/String;)Z

    move-result v3

    .line 91
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v2

    .line 69
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->queryData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v5

    .line 75
    .restart local v5    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v5, :cond_1

    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v5, p3, v2}, Lcom/xiaopeng/speech/common/bean/Value;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    :goto_1
    return v2

    .line 60
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->unRegisterDataSensor([Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v2

    .line 49
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 53
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/IRemoteDataSensor;

    move-result-object v3

    .line 54
    .local v3, "_arg1":Lcom/xiaopeng/speech/IRemoteDataSensor;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/speech/IQueryInjector$Stub;->registerDataSensor([Ljava/lang/String;Lcom/xiaopeng/speech/IRemoteDataSensor;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v2

    .line 44
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/xiaopeng/speech/IRemoteDataSensor;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
