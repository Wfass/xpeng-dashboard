.class Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;
.super Ljava/lang/Object;
.source "RealtimeStatusPresenter.java"

# interfaces
.implements Lcom/xpeng/test/callback/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindSuccess()V
    .locals 0

    .line 136
    return-void
.end method

.method public onBtConnectStatus(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 121
    return-void
.end method

.method public onBtPairStatus(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 116
    return-void
.end method

.method public onBtPower(Z)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$1;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V

    .line 111
    return-void
.end method

.method public onPairRequest(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 141
    return-void
.end method

.method public onScanCallback(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 126
    return-void
.end method

.method public onScanStatus(Z)V
    .locals 0

    .line 131
    return-void
.end method
