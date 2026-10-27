.class Lcom/xiaopeng/xui/app/a/i$b;
.super Lcom/xiaopeng/xui/app/a/i$a;
.source "XActivityTemplateExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;-><init>(Landroid/app/Activity;)V

    .line 157
    return-void
.end method


# virtual methods
.method a(Lcom/xiaopeng/xui/app/a/f;)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->a(Lcom/xiaopeng/xui/app/a/f;)V

    .line 167
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qC()V

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/a/f;->qE()V

    .line 169
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/j;)V
    .locals 1

    .line 173
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/j;->ep(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    .line 174
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/j;->eq(I)Lcom/xiaopeng/xui/app/a/j;

    move-result-object p1

    .line 175
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/j;->er(I)Lcom/xiaopeng/xui/app/a/j;

    .line 176
    return-void
.end method

.method a(Lcom/xiaopeng/xui/app/a/k;)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->a(Lcom/xiaopeng/xui/app/a/k;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/a/k;->bd(Z)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/a/i$a;->onCreate(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method
