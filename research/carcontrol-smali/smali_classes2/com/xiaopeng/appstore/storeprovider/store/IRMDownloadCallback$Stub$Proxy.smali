.class Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRMDownloadCallback.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    .line 152
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 153
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v5, p2

    .line 154
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 155
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 156
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    move-wide/from16 v9, p6

    .line 157
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    move-object/from16 v11, p8

    .line 158
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 159
    :try_start_1
    iget-object v7, v12, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 161
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 164
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 167
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    return-object v0
.end method

.method public onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    .line 176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 179
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 190
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw p1
.end method

.method public onMenuOpenCallback(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    .line 202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->onMenuOpenCallback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw p1
.end method

.method public unbindService()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    .line 221
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->unbindService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v2
.end method
