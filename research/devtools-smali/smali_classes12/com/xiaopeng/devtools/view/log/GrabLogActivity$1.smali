.class Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;
.super Landroid/os/Handler;
.source "GrabLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/log/GrabLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->a(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->a(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    goto :goto_0

    .line 119
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->a(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->b(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    nop

    .line 132
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
