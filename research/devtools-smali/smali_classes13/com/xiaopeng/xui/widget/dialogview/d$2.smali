.class Lcom/xiaopeng/xui/widget/dialogview/d$2;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiP:Lcom/xiaopeng/xui/widget/dialogview/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->c(Lcom/xiaopeng/xui/widget/dialogview/d;)Z

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/dialogview/d;->d(Lcom/xiaopeng/xui/widget/dialogview/d;)Z

    move-result v1

    .line 116
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_dialog_button1:I

    if-ne p1, v2, :cond_1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->e(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  positiveIntercept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mPositiveListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    .line 119
    invoke-static {v2}, Lcom/xiaopeng/xui/widget/dialogview/d;->e(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {p1, v1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->e(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/e$a;->onClick(Lcom/xiaopeng/xui/widget/dialogview/b;I)V

    .line 121
    if-eqz v0, :cond_5

    .line 122
    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    const-string v0, "onClick mPositiveListener is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_1
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_button2:I

    if-ne p1, v0, :cond_3

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->f(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick negativeIntercept "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mNegativeListener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    .line 130
    invoke-static {v2}, Lcom/xiaopeng/xui/widget/dialogview/d;->f(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->f(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    const/4 v2, -0x2

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/xui/widget/dialogview/e$a;->onClick(Lcom/xiaopeng/xui/widget/dialogview/b;I)V

    .line 132
    if-eqz v1, :cond_5

    .line 133
    return-void

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    const-string v0, "onClick mNegativeListener is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_dialog_close:I

    if-ne p1, v0, :cond_4

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    const-string v0, "onClick close"

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->g(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->g(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/e$b;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/d;->aix:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/e$b;->onClose(Lcom/xiaopeng/xui/widget/dialogview/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    const-string v0, "onClick close intercept dismiss "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 143
    return-void

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick invalid id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Ljava/lang/String;)V

    .line 149
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$2;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->h(Lcom/xiaopeng/xui/widget/dialogview/d;)V

    .line 150
    return-void
.end method
