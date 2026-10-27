.class Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IScreenTaskListener.java"

# interfaces
.implements Lcom/xiaopeng/screen/IScreenTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/IScreenTaskListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/screen/IScreenTaskListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.screen.IScreenTaskListener"

    return-object v0
.end method

.method public onActivityChanged(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.screen.IScreenTaskListener"

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->getDefaultImpl()Lcom/xiaopeng/screen/IScreenTaskListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->getDefaultImpl()Lcom/xiaopeng/screen/IScreenTaskListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/screen/IScreenTaskListener;->onActivityChanged(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw p1
.end method

.method public onEventChanged(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.screen.IScreenTaskListener"

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-static {}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->getDefaultImpl()Lcom/xiaopeng/screen/IScreenTaskListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->getDefaultImpl()Lcom/xiaopeng/screen/IScreenTaskListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaopeng/screen/IScreenTaskListener;->onEventChanged(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    throw p1
.end method
