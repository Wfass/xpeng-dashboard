.class Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAromeServiceInterface.java"

# interfaces
.implements Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;
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

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 105
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 112
    const-string v0, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    return-object v0
.end method

.method public registerOnCustomClickListener([Ljava/lang/String;)V
    .locals 5
    .param p1, "eventList"    # [Ljava/lang/String;

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendRequest(Lcom/alipay/mobile/aromeservice/ipc/App;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "app"    # Lcom/alipay/mobile/aromeservice/ipc/App;
    .param p2, "what"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v0, v3}, Lcom/alipay/mobile/aromeservice/ipc/App;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    if-eqz p3, :cond_1

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_2

    .line 160
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .line 164
    .restart local v2    # "_result":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 165
    nop

    .line 167
    return-object v2

    .line 164
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setInitOptions(Lcom/alipay/mobile/aromeservice/ipc/InitOptions;)V
    .locals 4
    .param p1, "options"    # Lcom/alipay/mobile/aromeservice/ipc/InitOptions;

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.alipay.mobile.aromeservice.ipc.IAromeServiceInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
