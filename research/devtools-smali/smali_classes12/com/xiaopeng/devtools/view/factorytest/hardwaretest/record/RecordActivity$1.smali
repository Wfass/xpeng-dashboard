.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;
.super Landroid/os/Handler;
.source "RecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 56
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;->Ly:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    nop

    .line 70
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
