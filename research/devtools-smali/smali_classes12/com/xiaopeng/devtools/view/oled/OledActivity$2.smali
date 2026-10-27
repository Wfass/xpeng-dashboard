.class Lcom/xiaopeng/devtools/view/oled/OledActivity$2;
.super Ljava/lang/Object;
.source "OledActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/oled/OledActivity;->z(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

.field final synthetic RH:Lcom/xiaopeng/devtools/bean/oled/OledData;

.field final synthetic RI:I

.field final synthetic RJ:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/oled/OledActivity;Lcom/xiaopeng/devtools/bean/oled/OledData;ILjava/util/List;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RH:Lcom/xiaopeng/devtools/bean/oled/OledData;

    iput p3, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RI:I

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RJ:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->e(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Lcom/xiaopeng/devtools/presenter/oled/c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RH:Lcom/xiaopeng/devtools/bean/oled/OledData;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/bean/oled/OledData;)V

    .line 175
    iget p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RI:I

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->g(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->d(Landroid/view/View;I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->g(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->d(Landroid/view/View;I)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->e(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Lcom/xiaopeng/devtools/presenter/oled/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/oled/c;->gZ()V

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->h(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->h(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->f(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/oled/OledActivity$2;->RG:Lcom/xiaopeng/devtools/view/oled/OledActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/oled/OledActivity;->f(Lcom/xiaopeng/devtools/view/oled/OledActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 187
    :cond_2
    :goto_0
    return-void
.end method
