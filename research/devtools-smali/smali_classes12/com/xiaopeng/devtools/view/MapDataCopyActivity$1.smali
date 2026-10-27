.class Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;
.super Landroid/os/Handler;
.source "MapDataCopyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/MapDataCopyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 92
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    const-string v1, "mounted"

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->f(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)V

    .line 96
    goto :goto_0

    .line 83
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->d(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;I)I

    .line 90
    goto :goto_0

    .line 75
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->a(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->b(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->c(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->d(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/MapDataCopyActivity$1;->CY:Lcom/xiaopeng/devtools/view/MapDataCopyActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/MapDataCopyActivity;->e(Lcom/xiaopeng/devtools/view/MapDataCopyActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    nop

    .line 100
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
