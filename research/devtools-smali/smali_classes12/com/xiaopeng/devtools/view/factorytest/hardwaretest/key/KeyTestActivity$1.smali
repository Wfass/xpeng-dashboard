.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;
.super Ljava/lang/Object;
.source "KeyTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/system/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/KeyEvent;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const v0, 0x1060012

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 116
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->g(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->g(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->h(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    goto/16 :goto_0

    .line 124
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->k(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->k(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->l(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->i(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->i(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->j(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    goto :goto_0

    .line 104
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    goto :goto_0

    .line 112
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    goto :goto_0

    .line 108
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity$1;->Km:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/key/KeyTestActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    nop

    .line 128
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
