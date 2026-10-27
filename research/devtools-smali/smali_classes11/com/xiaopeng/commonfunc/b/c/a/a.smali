.class public Lcom/xiaopeng/commonfunc/b/c/a/a;
.super Ljava/lang/Object;
.source "BluetoothModel.java"


# instance fields
.field private final nV:Lcom/xiaopeng/commonfunc/b/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/b/g/a/a;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/b/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Lcom/xiaopeng/commonfunc/b/g/a/a;)V

    .line 22
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/g/a;->registerReceiver()V

    .line 24
    return-void
.end method


# virtual methods
.method public dK()V
    .locals 2

    .line 46
    const-string v0, "BluetoothModel"

    const-string v1, "powerOnBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->enable()Z

    .line 48
    return-void
.end method

.method public dL()V
    .locals 2

    .line 51
    const-string v0, "BluetoothModel"

    const-string v1, "powerOffBluetooth"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->disable()Z

    .line 53
    return-void
.end method

.method public dM()I
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->getState()I

    move-result v0

    .line 61
    const-string v1, "BluetoothModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBtPowerStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->unregisterReceiver()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->releaseCallback()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/c/a/a;->nV:Lcom/xiaopeng/commonfunc/b/g/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/g/a;->closeProfileProxy()V

    .line 112
    return-void
.end method
