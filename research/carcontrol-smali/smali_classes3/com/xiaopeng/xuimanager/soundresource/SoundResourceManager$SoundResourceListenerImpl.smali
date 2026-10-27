.class Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;
.super Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;
.source "SoundResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResourceListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onResourceEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceListenerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
