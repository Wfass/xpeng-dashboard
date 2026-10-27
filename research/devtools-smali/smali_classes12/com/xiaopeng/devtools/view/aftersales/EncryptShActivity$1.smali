.class Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;
.super Landroid/os/Handler;
.source "EncryptShActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Lcom/xiaopeng/devtools/presenter/aftersales/e;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->c(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->bV(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 35
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Lcom/xiaopeng/devtools/presenter/aftersales/e;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;->Eb:Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->c(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->bV(Ljava/lang/String;)V

    .line 38
    nop

    .line 49
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
