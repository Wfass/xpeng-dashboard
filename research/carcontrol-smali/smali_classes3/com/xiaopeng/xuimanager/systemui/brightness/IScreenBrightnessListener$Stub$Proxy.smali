.class Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IScreenBrightnessListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.systemui.brightness.IScreenBrightnessListener"

    return-object v0
.end method

.method public onScreenAngleChange(IIZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.brightness.IScreenBrightnessListener"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 120
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;->onScreenAngleChange(IIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 129
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw p1
.end method

.method public onScreenStateChange(IIZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.systemui.brightness.IScreenBrightnessListener"

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 144
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener;->onScreenStateChange(IIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 153
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw p1
.end method
