.class Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKaraoke.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1024
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1029
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1032
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1035
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1036
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    throw p1
.end method

.method public XMS_Distroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1094
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1099
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Distroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    throw p1
.end method

.method public XMS_GetEcho(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1306
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1310
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1311
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetEcho(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1314
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1320
    throw p1
.end method

.method public XMS_GetHandShakeStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1166
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1168
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1169
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetHandShakeStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1172
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1178
    throw p1
.end method

.method public XMS_GetMicPowerStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1212
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1214
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1215
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetMicPowerStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1218
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1224
    throw p1
.end method

.method public XMS_GetMicStatus(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1189
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1191
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1192
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetMicStatus(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1195
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1201
    throw p1
.end method

.method public XMS_GetToken(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1121
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1122
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetToken(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw p1
.end method

.method public XMS_GetVolume(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1258
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1263
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1264
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetVolume(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1267
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1273
    throw p1
.end method

.method public XMS_MicCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1835
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1843
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1846
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1847
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1852
    throw p1
.end method

.method public XMS_MicDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1912
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1914
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1915
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1924
    throw p1
.end method

.method public XMS_MicGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1861
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1863
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1865
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1866
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1869
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1870
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1875
    throw p1
.end method

.method public XMS_MicGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1810
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1816
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1817
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1820
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1826
    throw p1
.end method

.method public XMS_MicRead(Ljava/lang/String;[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1884
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1890
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1891
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicRead(Ljava/lang/String;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1894
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1896
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    throw p1
.end method

.method public XMS_Pause(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1478
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1481
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Pause(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1484
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1490
    throw p1
.end method

.method public XMS_PausePlay(Ljava/lang/String;)I
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
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1593
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1595
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1596
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_PausePlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1599
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw p1
.end method

.method public XMS_Read(Ljava/lang/String;[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1761
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1764
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1765
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1767
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1768
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Read(Ljava/lang/String;[BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1771
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1773
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1778
    throw p1
.end method

.method public XMS_RecCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1688
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1695
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1696
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1699
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw p1
.end method

.method public XMS_RecDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1791
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1792
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1795
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1796
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    throw p1
.end method

.method public XMS_RecGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1714
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1719
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1722
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1728
    throw p1
.end method

.method public XMS_RecGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1663
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1669
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1670
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1674
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1679
    throw p1
.end method

.method public XMS_RecStart(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1524
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1526
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1527
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecStart(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1530
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1531
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1536
    throw p1
.end method

.method public XMS_RecStop(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1499
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1501
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1503
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1504
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecStop(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1507
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    throw p1
.end method

.method public XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1051
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1052
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1054
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1055
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1059
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1064
    throw p1
.end method

.method public XMS_Resume(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1545
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1547
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1549
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1550
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Resume(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1553
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1559
    throw p1
.end method

.method public XMS_ResumePlay(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1570
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1573
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_ResumePlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1576
    :cond_0
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

.method public XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1619
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1621
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1622
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1625
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1631
    throw p1
.end method

.method public XMS_SetEcho(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1285
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1287
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1288
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetEcho(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1297
    throw p1
.end method

.method public XMS_SetRecMode(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1737
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1743
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetRecMode(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1746
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1752
    throw p1
.end method

.method public XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1146
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    throw p1
.end method

.method public XMS_SetVolume(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1240
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetVolume(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1243
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    throw p1
.end method

.method public XMS_ShowToast(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2108
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2110
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2111
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_ShowToast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2115
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2120
    throw p1
.end method

.method public XMS_StopSaveRec(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1640
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1642
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1644
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1645
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_StopSaveRec(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1648
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1649
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1654
    throw p1
.end method

.method public XMS_TrackCreate(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1361
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1362
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1365
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1371
    throw p1
.end method

.method public XMS_TrackDestroy(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1453
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1455
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1457
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1458
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackDestroy(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1461
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1462
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1467
    throw p1
.end method

.method public XMS_TrackGetAvail(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1432
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1435
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackGetAvail(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1438
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    throw p1
.end method

.method public XMS_TrackGetLatency(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1384
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1385
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackGetLatency(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1388
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1394
    throw p1
.end method

.method public XMS_TrackGetMinBuf(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1329
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1335
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1336
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1339
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1345
    throw p1
.end method

.method public XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1071
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1073
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1074
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1076
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1077
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1081
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    throw p1
.end method

.method public XMS_Write(Ljava/lang/String;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1406
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1408
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1410
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1411
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Write(Ljava/lang/String;[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1414
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1415
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1416
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1421
    throw p1
.end method

.method public XMS_aiWakeUp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1960
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_aiWakeUp()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    throw v2
.end method

.method public XMS_atlSwitch(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1934
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1937
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1938
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_atlSwitch(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1941
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    throw p1
.end method

.method public XMS_clientDied()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2175
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2177
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2178
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_clientDied()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2181
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2187
    throw v2
.end method

.method public XMS_connectMicFlow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2087
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2089
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2090
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_connectMicFlow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2094
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 2097
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2098
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2099
    throw v2
.end method

.method public XMS_getBuyMicUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2065
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2066
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2068
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2069
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getBuyMicUrl()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2072
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2078
    throw v2
.end method

.method public XMS_getMicName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2000
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2003
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2004
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getMicName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2007
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2008
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    throw v2
.end method

.method public XMS_getMicSoundEffectMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2196
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2197
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2199
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2200
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getMicSoundEffectMap()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2203
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2205
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 2208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2210
    throw v2
.end method

.method public XMS_hasAtl()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 1978
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1981
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1982
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_hasAtl()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1985
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1989
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1991
    throw v2
.end method

.method public XMS_isAtlEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2044
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2046
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2047
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_isAtlEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2050
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2054
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2056
    throw v2
.end method

.method public XMS_releaseKaraokeResource(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2247
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2249
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2250
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_releaseKaraokeResource(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2253
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    throw p1
.end method

.method public XMS_requestKaraokeResource(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2226
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2227
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_requestKaraokeResource(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2236
    throw p1
.end method

.method public XMS_setAtlEnable(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2019
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2022
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2025
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2026
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setAtlEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2030
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    throw p1
.end method

.method public XMS_setMusicInfo([Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2128
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2130
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2132
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2133
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setMusicInfo([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2136
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    throw p1
.end method

.method public XMS_setMusicLyric([Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2151
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2153
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2155
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2156
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setMusicLyric([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2165
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enableCarMicrophone(ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2268
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2269
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2273
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2274
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableCarMicrophone(ZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2277
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2278
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2283
    throw p1
.end method

.method public enableVocalRemove(ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2337
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2341
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2342
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableVocalRemove(ZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 2345
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2346
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    throw p1
.end method

.method public enableVocalRemoveDynamic(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2404
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2405
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2407
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2408
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableVocalRemoveDynamic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2412
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2417
    throw p1
.end method

.method public getBgmVolume()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2468
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2469
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2471
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2472
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getBgmVolume()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2475
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2481
    throw v2
.end method

.method public getCarMicrophonePosition()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2315
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2317
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2318
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getCarMicrophonePosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2321
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    return-object v0
.end method

.method public getVocalRemoveLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2383
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2385
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2386
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getVocalRemoveLevel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2389
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    throw v2
.end method

.method public hasBuiltIntMicKaraoke()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2493
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2494
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->hasBuiltIntMicKaraoke()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2497
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2501
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    throw v2
.end method

.method public isCarMicrophoneEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2295
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2296
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isCarMicrophoneEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2299
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2303
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2303
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    throw v2
.end method

.method public isVocalRemoveDynamicEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2426
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2428
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2429
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isVocalRemoveDynamicEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2436
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2438
    throw v2
.end method

.method public isVocalRemoveEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2363
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2364
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isVocalRemoveEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 2367
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2368
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 2371
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2373
    throw v2
.end method

.method public setBgmVolume(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.karaoke.IKaraoke"

    .line 2446
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2448
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2450
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2451
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->setBgmVolume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2455
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    throw p1
.end method
