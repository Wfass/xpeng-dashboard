.class public Lcom/xiaopeng/xui/app/e;
.super Landroid/app/Dialog;
.source "XLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/e$a;
    }
.end annotation


# instance fields
.field private ZY:Landroid/widget/ImageButton;

.field private ZZ:Lcom/xiaopeng/xui/app/e$a;

.field private aaa:I

.field private aab:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/e;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/e;
    .locals 7

    .line 94
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xui/app/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/e$a;)Lcom/xiaopeng/xui/app/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/e$a;)Lcom/xiaopeng/xui/app/e;
    .locals 2

    .line 142
    new-instance v0, Lcom/xiaopeng/xui/app/e;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog_Loading:I

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/e;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->create()V

    .line 144
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/app/e;->setCancelable(Z)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/app/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 147
    invoke-virtual {v0, p6}, Lcom/xiaopeng/xui/app/e;->a(Lcom/xiaopeng/xui/app/e$a;)V

    .line 148
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/app/e;->aZ(Z)V

    .line 149
    invoke-virtual {v0, p5}, Lcom/xiaopeng/xui/app/e;->dY(I)V

    .line 150
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 151
    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/xui/app/e;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/e;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 248
    const-string v0, "xpui-XLoadingDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/app/e$a;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/app/e;->ZZ:Lcom/xiaopeng/xui/app/e$a;

    .line 183
    return-void
.end method

.method public aZ(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/e;->aab:Z

    .line 196
    iget-boolean p1, p0, Lcom/xiaopeng/xui/app/e;->aab:Z

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/xui/app/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method

.method public dY(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/xiaopeng/xui/app/e;->aaa:I

    .line 192
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/e;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 157
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_loading_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/xui/app/e;->mMessageView:Landroid/widget/TextView;

    .line 159
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/xiaopeng/xui/app/e;->ZY:Landroid/widget/ImageButton;

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/xui/app/e;->ZY:Landroid/widget/ImageButton;

    new-instance v2, Lcom/xiaopeng/xui/app/e$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/e$1;-><init>(Lcom/xiaopeng/xui/app/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/e;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public run()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->ZZ:Lcom/xiaopeng/xui/app/e$a;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->ZZ:Lcom/xiaopeng/xui/app/e$a;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/app/e$a;->a(Lcom/xiaopeng/xui/app/e;)V

    .line 222
    :cond_0
    const-string v0, "time out"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/e;->log(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 224
    return-void
.end method

.method public setCancelable(Z)V
    .locals 2

    .line 177
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xui/app/e;->ZY:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public show()V
    .locals 3

    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 204
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/e;->aab:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/app/e;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xui/app/e;->aaa:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_0
    return-void
.end method
