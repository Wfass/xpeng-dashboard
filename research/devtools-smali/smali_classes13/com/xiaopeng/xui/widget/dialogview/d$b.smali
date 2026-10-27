.class Lcom/xiaopeng/xui/widget/dialogview/d$b;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

.field private aiT:Landroid/widget/TextView;

.field private aiU:I

.field private aiV:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;Landroid/widget/TextView;I)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiT:Landroid/widget/TextView;

    .line 512
    iput p3, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiU:I

    .line 513
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->j(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/xiaopeng/xpui/R$string;->x_countdown_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiV:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public fo(Ljava/lang/String;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiT:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->k(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->k(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiU:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/e$c;->c(Lcom/xiaopeng/xui/widget/dialogview/b;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    const-string v0, "onCountDown intercept onClick "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 527
    return-void

    .line 530
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->l(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiT:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 531
    return-void
.end method

.method public fp(Ljava/lang/String;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiT:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method public h(Ljava/lang/String;II)V
    .locals 3

    .line 518
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiT:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$b;->aiV:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method
