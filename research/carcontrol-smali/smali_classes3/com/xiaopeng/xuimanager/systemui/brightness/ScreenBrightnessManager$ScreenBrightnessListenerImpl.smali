.class Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;
.super Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenBrightnessListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/brightness/IScreenBrightnessListener$Stub;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onScreenAngleChange(IIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;-><init>(IIZLjava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 327
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onScreenStateChange(IIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;-><init>(IIZLjava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 334
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$ScreenBrightnessListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
