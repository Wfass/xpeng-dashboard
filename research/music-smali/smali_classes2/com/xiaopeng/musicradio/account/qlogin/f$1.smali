.class Lcom/xiaopeng/musicradio/account/qlogin/f$1;
.super Ljava/lang/Object;
.source "QLoginFlowLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/account/qlogin/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/account/qlogin/f;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/f$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(Lcom/xiaopeng/musicradio/account/qlogin/f;)Lcom/xiaopeng/musicradio/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a(Lcom/xiaopeng/musicradio/account/qlogin/f;)Lcom/xiaopeng/musicradio/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/f$1;->a:Lcom/xiaopeng/musicradio/account/qlogin/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/account/qlogin/f;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
