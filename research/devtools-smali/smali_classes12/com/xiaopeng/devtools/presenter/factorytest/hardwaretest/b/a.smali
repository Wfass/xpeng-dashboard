.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;
.super Ljava/lang/Object;
.source "BluetoothPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;
    }
.end annotation


# static fields
.field private static wJ:[B


# instance fields
.field private vK:Lcom/xpeng/test/callback/BluetoothCallback;

.field private wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

.field private wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

.field private wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

.field private wI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wJ:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;

    .line 31
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->vK:Lcom/xpeng/test/callback/BluetoothCallback;

    .line 126
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/b/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->vK:Lcom/xpeng/test/callback/BluetoothCallback;

    invoke-direct {v0, p2, v1}, Lcom/xiaopeng/devtools/model/c/a/b/a;-><init>(Landroid/content/Context;Lcom/xpeng/test/callback/BluetoothCallback;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    return-object p0
.end method

.method private bX(Ljava/lang/String;)V
    .locals 3

    .line 215
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectHeadsetClient address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->q(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method private bY(Ljava/lang/String;)V
    .locals 3

    .line 220
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectA2dpSink address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->q(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/model/c/a/b/b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;

    return-object p0
.end method

.method static synthetic iT()[B
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wJ:[B

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$a;

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->stopScan()V

    .line 181
    return-void
.end method

.method public bA(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->bA(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public bB(Ljava/lang/String;)V
    .locals 3

    .line 184
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairDevice address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/b;->bD(Ljava/lang/String;)Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->bB(Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public bC(Ljava/lang/String;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->bC(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public bW(Ljava/lang/String;)V
    .locals 3

    .line 204
    const-string v0, "BluetoothPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectDevice address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bY(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bX(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public dK()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->dK()V

    .line 153
    return-void
.end method

.method public dL()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->dL()V

    .line 157
    return-void
.end method

.method public dM()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->dM()I

    move-result v0

    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getProfileProxy(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/b/a;->getProfileProxy(I)V

    .line 145
    return-void
.end method

.method public gj()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->gj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gk()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->gk()V

    .line 149
    return-void
.end method

.method public gl()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->gl()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->onDestroy()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    .line 231
    return-void
.end method

.method public onInit()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wF:Lcom/xiaopeng/devtools/model/c/a/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/b/a;->onInit()V

    .line 136
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/b/b;->gm()Lcom/xiaopeng/devtools/model/c/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wH:Lcom/xiaopeng/devtools/model/c/a/b/b;

    .line 137
    return-void
.end method

.method public setScanDeviceItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/factorytest/ScanDevice;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->wG:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/bluetooth/b;->setScanDeviceItem(Ljava/util/List;)V

    .line 176
    :cond_0
    return-void
.end method
