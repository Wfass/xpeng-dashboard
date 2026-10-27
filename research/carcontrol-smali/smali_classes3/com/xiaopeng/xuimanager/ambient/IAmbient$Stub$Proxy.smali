.class Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAmbient.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambient/IAmbient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/ambient/IAmbient;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAmbientLightBright(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1029
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1034
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightBright(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1037
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1043
    throw p1
.end method

.method public getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1098
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1100
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1103
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1107
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    throw p1
.end method

.method public getAmbientLightDoubleColor(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1195
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1198
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightDoubleColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1201
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1207
    throw p1
.end method

.method public getAmbientLightEnable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 755
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 758
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 759
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightEnable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 762
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 766
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    throw v2
.end method

.method public getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;
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
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 960
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 964
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 965
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 968
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw p1
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1149
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1150
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1153
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1159
    throw p1
.end method

.method public getAmbientLightPartitionModes()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 986
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 987
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightPartitionModes()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 990
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 996
    throw v2
.end method

.method public getAmbientLightPermission()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1406
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1409
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightPermission()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1412
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 1416
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 1416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    throw v2
.end method

.method public getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1384
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1386
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1387
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1390
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw p1
.end method

.method public getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1332
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1335
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1337
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1338
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1341
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1347
    throw p1
.end method

.method public getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1262
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1264
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1267
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1270
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1271
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    throw p1
.end method

.method public getFlowingAmbientLightBright()I
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
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1545
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1546
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1548
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1549
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getFlowingAmbientLightBright()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1552
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1558
    throw v2
.end method

.method public getFlowingAmbientLightColor()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1590
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1593
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1594
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->getFlowingAmbientLightColor()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1597
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.ambient.IAmbient"

    return-object v0
.end method

.method public playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 821
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 824
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 828
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 831
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    throw p1
.end method

.method public playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1457
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1460
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1466
    throw p1
.end method

.method public playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1478
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1481
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1482
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1485
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 667
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 668
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 671
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->registerListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 675
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw p1
.end method

.method public requestAmbientLightPermission(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 709
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 710
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 714
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->requestAmbientLightPermission(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 717
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 718
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 722
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 723
    throw p1
.end method

.method public setAmbientLightBright(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1005
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1011
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightBright(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1014
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1020
    throw p1
.end method

.method public setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1074
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1083
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1087
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1089
    throw p1
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1168
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1174
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1175
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightDoubleColor(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1178
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1184
    throw p1
.end method

.method public setAmbientLightEnable(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 732
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 733
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 736
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 737
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightEnable(Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 740
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    throw p1
.end method

.method public setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 917
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 918
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 921
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    throw p1
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1126
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightMonoColor(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1130
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    throw p1
.end method

.method public setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1363
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1366
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    throw p1
.end method

.method public setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1307
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1313
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1314
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1317
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1318
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1323
    throw p1
.end method

.method public setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1238
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1243
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1244
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1247
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    throw p1
.end method

.method public setFlowingAmbientLightBright(I)I
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
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1522
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1526
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1527
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setFlowingAmbientLightBright(I)I

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

.method public setFlowingAmbientLightColor(I)I
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
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1567
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1571
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1572
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->setFlowingAmbientLightColor(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 1575
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 1579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1581
    throw p1
.end method

.method public showAmbientLightColorTypes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1052
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1053
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1055
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1056
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightColorTypes()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1059
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1060
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1065
    throw v2
.end method

.method public showAmbientLightEffectPartitions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 778
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 781
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightEffectPartitions()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 784
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw v2
.end method

.method public showAmbientLightEffects()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 799
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 802
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 803
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightEffects()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 806
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw v2
.end method

.method public showAmbientLightModePartitions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 868
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 871
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 872
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightModePartitions()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 875
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 881
    throw v2
.end method

.method public showAmbientLightModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 890
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 891
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 893
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 894
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightModes()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 897
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 903
    throw v2
.end method

.method public showAmbientLightRegions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1288
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1289
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightRegions()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1292
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1298
    throw v2
.end method

.method public showAmbientLightThemesColor()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1220
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showAmbientLightThemesColor()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1223
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1229
    throw v2
.end method

.method public showFlowingAmbientLightEffects()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1427
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1430
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1431
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->showFlowingAmbientLightEffects()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 1434
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 1438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    throw v2
.end method

.method public stopAmbientLightEffect()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 846
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 850
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->stopAmbientLightEffect()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 853
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 854
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    throw v2
.end method

.method public stopFlowingAmbientLightEffect()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 1500
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1501
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1503
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1504
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->stopFlowingAmbientLightEffect()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 1507
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    throw v2
.end method

.method public subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 936
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 942
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 945
    :cond_0
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

.method public unregisterListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 687
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 688
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 689
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 691
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 692
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient;->unregisterListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 696
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    throw p1
.end method
