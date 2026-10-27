.class Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;
.super Landroid/os/Handler;
.source "AdasCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u65e5\u5fd7\u62f7\u8d1d\u6210\u529f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    goto :goto_0

    .line 67
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    goto :goto_0

    .line 62
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;->Tk:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->b(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    nop

    .line 80
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
