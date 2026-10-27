.class Lcom/xiaopeng/logictree/handler/a$2;
.super Ljava/lang/Object;
.source "BluetoothLogicAction.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/b/g/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yi:Lcom/xiaopeng/logictree/handler/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/a;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBtConnectStatus(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    .line 72
    return-void
.end method

.method public onBtPairStatus(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 67
    return-void
.end method

.method public onBtPower(Z)V
    .locals 3

    .line 52
    const/16 v0, 0x3e8

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    invoke-static {v1}, Lcom/xiaopeng/logictree/handler/a;->a(Lcom/xiaopeng/logictree/handler/a;)I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    invoke-static {p1, v0}, Lcom/xiaopeng/logictree/handler/a;->a(Lcom/xiaopeng/logictree/handler/a;I)I

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/a;->b(Lcom/xiaopeng/logictree/handler/a;)Lcom/xiaopeng/commonfunc/b/c/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/c/a/a;->dK()V

    goto :goto_0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/a;->a(Lcom/xiaopeng/logictree/handler/a;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a$2;->Yi:Lcom/xiaopeng/logictree/handler/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/logictree/handler/a;->a(Lcom/xiaopeng/logictree/handler/a;I)I

    .line 57
    invoke-static {}, Lcom/xiaopeng/logictree/handler/a;->qa()Landroid/os/Handler;

    move-result-object p1

    const v0, 0x186a1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Lcom/xiaopeng/logictree/handler/a;->qa()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public onPairRequest(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 92
    return-void
.end method

.method public onScanCallback(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 77
    return-void
.end method

.method public onScanStatus(Z)V
    .locals 0

    .line 82
    return-void
.end method
