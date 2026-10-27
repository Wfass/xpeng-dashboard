.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;
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
.field final synthetic RX:Landroid/widget/Button;

.field final synthetic SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;Landroid/widget/Button;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->RX:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->RX:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 88
    :goto_0
    return-void
.end method
