.class Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISystemUIService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public canDockEdit(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1352
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1356
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1357
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->canDockEdit(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1364
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1366
    throw p1
.end method

.method public cancelSystemBar(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1267
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->cancelSystemBar(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1270
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    throw p1
.end method

.method public dismissMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1159
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1160
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1163
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1164
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->dismissMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1167
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    throw p1
.end method

.method public enterDockEdit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1330
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1335
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->enterDockEdit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1339
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1344
    throw p1
.end method

.method public forceSetXpScreenOnEx(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1719
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1721
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1723
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1724
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->forceSetXpScreenOnEx(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1727
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    throw p1
.end method

.method public getDockItems(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1289
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1290
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getDockItems(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1293
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1294
    sget-object p1, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    return-object v0
.end method

.method public getPopPanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1079
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1080
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1083
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getPopPanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1086
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    sget-object v2, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1095
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1097
    throw v2
.end method

.method public getPopPanelContainer()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1109
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1110
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getPopPanelContainer()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1113
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1114
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1115
    sget-object v2, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1122
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    throw v2
.end method

.method public getScreenAngle(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1742
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1746
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1747
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getScreenAngle(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1750
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1751
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1756
    throw p1
.end method

.method public getScreenState(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1769
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1770
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getScreenState(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1773
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1777
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw p1
.end method

.method public getShortcutAndComponents(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1308
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1312
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1313
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getShortcutAndComponents(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1316
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1317
    sget-object p1, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    throw p1
.end method

.method public getSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1615
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1617
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1619
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1620
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1623
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1624
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1627
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1629
    throw p1
.end method

.method public hideAllOsd(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1033
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1037
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1038
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hideAllOsd(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1041
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw p1
.end method

.method public hideOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1009
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1010
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1011
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1012
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1014
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1015
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hideOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1018
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    throw p1
.end method

.method public hidePopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 960
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 961
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 962
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 966
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 967
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hidePopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 970
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 976
    throw p1
.end method

.method public isPopPanelShowing(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1056
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1060
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1061
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->isPopPanelShowing(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1064
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1065
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 1068
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 1068
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1069
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1070
    throw p1
.end method

.method public isSystemBarDark(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2064
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2065
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->isSystemBarDark(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2068
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 2072
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 2072
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2074
    throw p1
.end method

.method public notifyServerEdit(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1424
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1427
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1428
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyServerEdit(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1432
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1437
    throw p1
.end method

.method public notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1444
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 1447
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1455
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1456
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1460
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    throw p1
.end method

.method public notifyUIReady()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1522
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1524
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1525
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyUIReady()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1528
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    throw v2
.end method

.method public registerBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2082
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2083
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2084
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2086
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2087
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2091
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2094
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    throw p1
.end method

.method public registerCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1473
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1475
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1476
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1478
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1479
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1482
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1488
    throw p1
.end method

.method public registerDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1377
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1378
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1380
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1381
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1384
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1390
    throw p1
.end method

.method public registerSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1213
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1215
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1216
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1218
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1219
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1222
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1228
    throw p1
.end method

.method public registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1543
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1545
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1546
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1548
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1549
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1552
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1558
    throw p1
.end method

.method public registerUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2013
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2015
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2017
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2018
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2020
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2021
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2025
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2028
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw p1
.end method

.method public removeScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1808
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1809
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1810
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1812
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1813
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->removeScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1817
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1822
    throw p1
.end method

.method public requestSystemBarColor(ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2124
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 2127
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2131
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x33

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2135
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2136
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->requestSystemBarColor(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2140
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    throw p1
.end method

.method public resetDock(ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1858
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 1861
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1865
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1869
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1870
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->resetDock(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1874
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1877
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    throw p1
.end method

.method public sendAppState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1594
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1596
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendAppState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1600
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    throw p1
.end method

.method public sendSysUIData(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1937
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 1941
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    invoke-virtual {p3, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1945
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1949
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1950
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendSysUIData(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1953
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    throw p1
.end method

.method public sendSysUIDataArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/systemstate/SysUIData;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1916
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1918
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1919
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendSysUIDataArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1922
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    throw p1
.end method

.method public sendUIEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1988
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1992
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1996
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2000
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2001
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2008
    throw p1
.end method

.method public setDockEditDisable(IZLandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1829
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1831
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    .line 1833
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1837
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1841
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1842
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setDockEditDisable(IZLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1846
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1851
    throw p1
.end method

.method public setOsdViewEnable(IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 987
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 990
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 991
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setOsdViewEnable(IZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 994
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1000
    throw p1
.end method

.method public setScreenAngle(IIZLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1693
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1696
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1698
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1700
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1701
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenAngle(IIZLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1704
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1710
    throw p1
.end method

.method public setScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1788
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1789
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1791
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1792
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenBrightnessListener(Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1796
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    throw p1
.end method

.method public setScreenDisable(IILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1884
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1887
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1891
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1893
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1894
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenDisable(IILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw p1
.end method

.method public setScreenState(IIZLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1670
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1674
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1675
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setScreenState(IIZLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1678
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    throw p1
.end method

.method public setStatusBarColor(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1967
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1969
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1972
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1973
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setStatusBarColor(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1977
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1980
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1982
    throw p1
.end method

.method public showMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1133
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1134
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1135
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1139
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1140
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1143
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1149
    throw p1
.end method

.method public showOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 909
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 910
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 911
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 915
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 916
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showOsd(Lcom/xiaopeng/xuimanager/systemui/osd/IOsdListener;ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 919
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw p1
.end method

.method public showPopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 935
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 936
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 941
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 942
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showPopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 945
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    throw p1
.end method

.method public showSystemBar(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 1186
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    invoke-virtual {p3, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1194
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showSystemBar(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1198
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    throw p1
.end method

.method public unRegisterBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2104
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2105
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2107
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2108
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2112
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2117
    throw p1
.end method

.method public unRegisterCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1497
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1499
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1500
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1502
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1503
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterCarCheckListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1506
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1512
    throw p1
.end method

.method public unRegisterDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1399
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1401
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1402
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1404
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1405
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1408
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1414
    throw p1
.end method

.method public unRegisterSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1239
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1240
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1242
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1243
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1246
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    throw p1
.end method

.method public unRegisterSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1569
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1570
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1572
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1573
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterSystemStateListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1576
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    throw p1
.end method

.method public unRegisterUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 2037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2039
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2040
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2042
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2043
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2047
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    throw p1
.end method

.method public updateDockOutsideInvalidRect(ILjava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.ISystemUIService"

    .line 1637
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 1641
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1645
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1649
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1650
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->updateDockOutsideInvalidRect(ILjava/lang/String;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1654
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    throw p1
.end method
