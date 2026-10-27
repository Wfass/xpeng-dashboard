.class Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;
.super Landroid/os/Handler;
.source "AIMediaCopyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    const-string v0, "mounted"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->b(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->d(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)V

    .line 79
    goto :goto_0

    .line 69
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->b(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    goto :goto_0

    .line 63
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->a(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->b(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity$1;->FN:Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;->c(Lcom/xiaopeng/devtools/view/demo/AIMediaCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    nop

    .line 83
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
