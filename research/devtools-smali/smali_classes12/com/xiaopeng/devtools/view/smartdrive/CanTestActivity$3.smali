.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;
.super Ljava/lang/Object;
.source "CanTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->e(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->e(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;I)I

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->e(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;I)I

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->f(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->g(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->h(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    .line 119
    return-void
.end method
