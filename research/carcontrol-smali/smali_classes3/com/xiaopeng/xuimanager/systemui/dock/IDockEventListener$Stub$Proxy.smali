.class Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDockEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    return-object v0
.end method

.method public onDockEvent(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 232
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 236
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->onDockEvent(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    throw p1
.end method

.method public onDockItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
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
    const-string v2, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {p2, v0, v3}, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->onDockItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    throw p1
.end method

.method public onDockItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 185
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {p2, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->onDockItemRemoved(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 198
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw p1
.end method

.method public onEnterEdit(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.dock.IDockEventListener"

    .line 210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 212
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;->onEnterEdit(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 220
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw p1
.end method
