.class Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;
.super Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener$Stub;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/device/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceManagerListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/device/IDeviceManagerListener$Stub;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onDeviceAngleChange(IIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;-><init>(IIZLjava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeviceStateChange(IIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;-><init>(IIZLjava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 345
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$DeviceManagerListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
