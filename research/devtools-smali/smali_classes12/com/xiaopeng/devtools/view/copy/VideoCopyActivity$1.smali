.class Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;
.super Landroid/os/Handler;
.source "VideoCopyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->a(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->b(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->b(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    goto :goto_0

    .line 50
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->a(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;->FB:Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->b(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    nop

    .line 63
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
