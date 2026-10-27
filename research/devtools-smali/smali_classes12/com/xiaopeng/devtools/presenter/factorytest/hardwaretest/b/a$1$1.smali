.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;
.super Ljava/lang/Object;
.source "BluetoothPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->onBtPairStatus(ILandroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wL:Ljava/lang/String;

.field final synthetic wM:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;->wM:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;

    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;->wL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;->wM:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;

    iget-object v0, v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1;->wK:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a$1$1;->wL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b/a;->bW(Ljava/lang/String;)V

    .line 54
    return-void
.end method
