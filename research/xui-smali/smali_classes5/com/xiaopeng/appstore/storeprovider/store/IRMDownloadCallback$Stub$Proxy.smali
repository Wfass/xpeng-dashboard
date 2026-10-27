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
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 134
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
    .locals 16
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anInt",
            "aLong",
            "aBoolean",
            "aFloat",
            "aDouble",
            "aString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 152
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 153
    move/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    move-wide/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13, v14}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    move/from16 v15, p4

    :try_start_3
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    .line 158
    move-object/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 160
    .local v0, "_status":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    move v4, v12

    move-wide v5, v13

    move v7, v15

    move v8, v11

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-void

    .line 164
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return-void

    .line 167
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v12, p1

    :goto_0
    move-wide/from16 v13, p2

    :goto_1
    move/from16 v15, p4

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    return-object v0
.end method

.method public onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "resourceDownloadInfo"    # Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resourceDownloadInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 179
    const/4 v3, 0x1

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

    .line 186
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 187
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->onDownloadCallback(ILcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 190
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    nop

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v2
.end method

.method public onMenuOpenCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "resId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 205
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 206
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->onMenuOpenCallback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 212
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v2
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
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.store.IRMDownloadCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 223
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;->unbindService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    nop

    .line 233
    return-void

    .line 230
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v2
.end method
