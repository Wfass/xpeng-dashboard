.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public df(I)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iput p1, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    return-void
.end method

.method public dg(I)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;I)I

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public dh(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->di(I)V

    .line 254
    return-void
.end method

.method public dk(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method

.method public dl(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iget-object v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 259
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    const/4 p1, 0x4

    iput p1, v0, Landroid/os/Message;->what:I

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    iget-object p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    return-void
.end method
