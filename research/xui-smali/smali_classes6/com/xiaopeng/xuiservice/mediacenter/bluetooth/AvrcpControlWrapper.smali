.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;
.super Ljava/lang/Object;
.source "AvrcpControlWrapper.java"


# instance fields
.field private mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

.field private mAvrcpControlCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

.field private mAvrcpEventListener:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControlCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    .line 16
    new-instance v0, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControlCallback:Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;-><init>(Landroid/content/Context;Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    .line 17
    invoke-static {}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->getInstance()Lcom/xiaopeng/btservice/util/BtBoxesUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/btservice/util/BtBoxesUtil;->registerCallback(Lcom/xiaopeng/btservice/base/AbsControl;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()[J
    .locals 1

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 48
    .local v0, "position":[J
    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public next()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->forward()Z

    .line 34
    return-void
.end method

.method public pause()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->pause()Z

    .line 30
    return-void
.end method

.method public play()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->play()Z

    .line 26
    return-void
.end method

.method public previous()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpControl:Lcom/xiaopeng/btservice/avrcp/AvrcpControl;

    invoke-virtual {v0}, Lcom/xiaopeng/btservice/avrcp/AvrcpControl;->backward()Z

    .line 38
    return-void
.end method

.method public setAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;->mAvrcpEventListener:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 22
    return-void
.end method
