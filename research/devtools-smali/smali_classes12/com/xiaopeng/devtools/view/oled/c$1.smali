.class Lcom/xiaopeng/devtools/view/oled/c$1;
.super Ljava/lang/Object;
.source "OledMusicBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/oled/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RI:I

.field final synthetic RX:Landroid/widget/Button;

.field final synthetic RY:I

.field final synthetic RZ:Lcom/xiaopeng/devtools/view/oled/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/oled/c;Landroid/widget/Button;II)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RZ:Lcom/xiaopeng/devtools/view/oled/c;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RX:Landroid/widget/Button;

    iput p3, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RI:I

    iput p4, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RZ:Lcom/xiaopeng/devtools/view/oled/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/c;->a(Lcom/xiaopeng/devtools/view/oled/c;)[[I

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RI:I

    aget-object p1, p1, v0

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RY:I

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RZ:Lcom/xiaopeng/devtools/view/oled/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/c;->a(Lcom/xiaopeng/devtools/view/oled/c;)[[I

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RI:I

    aget-object p1, p1, v0

    iget v0, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RY:I

    const/4 v1, 0x1

    aput v1, p1, v0

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RX:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/c$1;->RZ:Lcom/xiaopeng/devtools/view/oled/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/c;->b(Lcom/xiaopeng/devtools/view/oled/c;)V

    .line 114
    return-void
.end method
