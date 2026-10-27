.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;
.super Ljava/util/TimerTask;
.source "ScreenSelftestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 54
    const-string v0, "ScreenSelftestPresenter"

    const-string v1, "run read and parse task "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string v0, "SCREEN_DATA"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v0, "ScreenSelftestPresenter"

    const-string v1, "readString is empty "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 65
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 70
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$1;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
