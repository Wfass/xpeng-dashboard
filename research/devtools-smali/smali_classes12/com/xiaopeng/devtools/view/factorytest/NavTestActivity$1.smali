.class Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;
.super Landroid/os/Handler;
.source "NavTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u62f7\u8d1d\u6210\u529f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    goto :goto_0

    .line 60
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    goto :goto_0

    .line 55
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;->Gh:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    nop

    .line 73
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
