.class Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IA2dpStatusListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IA2dpStatusListener"

    return-object v0
.end method

.method public onA2dpConnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IA2dpStatusListener"

    .line 134
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;->onA2dpConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 142
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw v2
.end method

.method public onA2dpDisconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IA2dpStatusListener"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;->onA2dpDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 162
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v2
.end method

.method public onA2dpServiceReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.mediacenter.IA2dpStatusListener"

    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/mediacenter/IA2dpStatusListener;->onA2dpServiceReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    throw v2
.end method
