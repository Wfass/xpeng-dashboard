.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$2;
.super Ljava/lang/Object;
.source "WlanPresenter.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xz:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$2;->xz:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 48
    const-string v0, "WlanPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForgetListener onFailure reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 42
    const-string v0, "WlanPresenter"

    const-string v1, "mForgetListener onSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$2;->xz:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->closeWifi()V

    .line 44
    return-void
.end method
