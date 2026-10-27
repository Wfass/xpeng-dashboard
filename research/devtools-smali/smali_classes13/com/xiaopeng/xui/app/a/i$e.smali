.class Lcom/xiaopeng/xui/app/a/i$e;
.super Lcom/xiaopeng/xui/app/a/i$a;
.source "XActivityTemplateExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;-><init>(Landroid/app/Activity;)V

    .line 200
    return-void
.end method


# virtual methods
.method a(Lcom/xiaopeng/xui/app/a/f;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->a(Lcom/xiaopeng/xui/app/a/f;)V

    .line 211
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qC()V

    .line 212
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qE()V

    .line 213
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qD()V

    .line 214
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/j;)V
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_x:I

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/d/h;->e(Landroid/content/Context;I)I

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_y:I

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/d/h;->e(Landroid/content/Context;I)I

    move-result v2

    .line 221
    iget-object v3, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width:I

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/d/h;->e(Landroid/content/Context;I)I

    move-result v3

    .line 222
    iget-object v4, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height:I

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/d/h;->e(Landroid/content/Context;I)I

    move-result v4

    .line 223
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 228
    :pswitch_0
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/a/j;->en(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/a/j;->eo(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/a/j;->ep(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/app/a/j;->eq(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    const v0, 0x800013

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/j;->er(I)Lcom/xiaopeng/xui/app/a/j;

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/a/j;->en(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/a/j;->eo(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/a/j;->ep(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/app/a/j;->eq(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/j;->er(I)Lcom/xiaopeng/xui/app/a/j;

    .line 226
    nop

    .line 231
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/xiaopeng/xui/app/a/k;)V
    .locals 1

    .line 235
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->a(Lcom/xiaopeng/xui/app/a/k;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/k;->bd(Z)V

    .line 237
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->onCreate(Landroid/os/Bundle;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/i$e;->mActivity:Landroid/app/Activity;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 206
    return-void
.end method
