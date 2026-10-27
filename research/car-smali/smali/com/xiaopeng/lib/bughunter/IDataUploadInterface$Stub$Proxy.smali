.class Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataUploadInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;


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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 154
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    return-object v0
.end method

.method public uploadCan(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 204
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 207
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadCan(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    return-void

    .line 213
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v1
.end method

.method public uploadFiles(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 240
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadFiles(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return-void

    .line 246
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v1
.end method

.method public uploadFilesWithParam(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePaths",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 273
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadFilesWithParam(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 279
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 279
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v1
.end method

.method public uploadLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 174
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return-void

    .line 180
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v1
.end method

.method public uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 224
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 230
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v1
.end method

.method public uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 191
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-void

    .line 197
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw v1
.end method

.method public uploadSystemLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "ossUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ossUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.xiaopeng.lib.bughunter.IDataUploadInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 256
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 257
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/bughunter/IDataUploadInterface;->uploadSystemLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    return-void

    .line 262
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v1
.end method
