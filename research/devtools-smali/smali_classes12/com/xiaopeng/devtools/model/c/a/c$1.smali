.class Lcom/xiaopeng/devtools/model/c/a/c$1;
.super Landroid/os/Handler;
.source "HWAndSWInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic su:Lcom/xiaopeng/devtools/model/c/a/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/c/a/c;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$1;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$1;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/a/c;->a(Lcom/xiaopeng/devtools/model/c/a/c;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->d(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 66
    :pswitch_1
    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$1;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/a/c;->a(Lcom/xiaopeng/devtools/model/c/a/c;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->c(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 60
    :pswitch_2
    if-eqz v0, :cond_0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c$1;->su:Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/a/c;->a(Lcom/xiaopeng/devtools/model/c/a/c;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->b(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
