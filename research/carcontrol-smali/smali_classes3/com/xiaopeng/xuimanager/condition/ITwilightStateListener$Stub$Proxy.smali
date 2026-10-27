.class Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITwilightStateListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.condition.ITwilightStateListener"

    return-object v0
.end method

.method public onTwilightStateChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaopeng.xuimanager.condition.ITwilightStateListener"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xuimanager/condition/TwilightState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;->onTwilightStateChanged(Lcom/xiaopeng/xuimanager/condition/TwilightState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw p1
.end method
