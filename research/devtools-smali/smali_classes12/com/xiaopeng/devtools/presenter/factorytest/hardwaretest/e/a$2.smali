.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;
.super Landroid/os/Handler;
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

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;->cY(I)V

    .line 146
    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;->dj(Ljava/lang/String;)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a$2;->wX:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/lcd/a;->d(Ljava/util/ArrayList;)V

    .line 140
    nop

    .line 151
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
