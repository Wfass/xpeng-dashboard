.class Lcom/xiaopeng/speech/IRemoteDataSensor$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteDataSensor.java"

# interfaces
.implements Lcom/xiaopeng/speech/IRemoteDataSensor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "com.xiaopeng.speech.IRemoteDataSensor"

    return-object v0
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 5
    .param p1, "dataApi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.speech.IRemoteDataSensor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/xiaopeng/speech/common/bean/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/Value;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/xiaopeng/speech/common/bean/Value;
    goto :goto_0

    .line 101
    .end local v2    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    :cond_0
    const/4 v2, 0x0

    .line 105
    .restart local v2    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    nop

    .line 108
    return-object v2

    .line 105
    .end local v2    # "_result":Lcom/xiaopeng/speech/common/bean/Value;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw v2
.end method
