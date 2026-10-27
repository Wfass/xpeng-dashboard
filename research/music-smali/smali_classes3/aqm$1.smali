.class Laqm$1;
.super Ljava/lang/Object;
.source "XmlyLoginFlowLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqm;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqm;


# direct methods
.method constructor <init>(Laqm;)V
    .locals 0

    .line 67
    iput-object p1, p0, Laqm$1;->a:Laqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 70
    iget-object v0, p0, Laqm$1;->a:Laqm;

    invoke-static {v0}, Laqm;->a(Laqm;)Lcom/xiaopeng/musicradio/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Laqm$1;->a:Laqm;

    invoke-static {v0}, Laqm;->a(Laqm;)Lcom/xiaopeng/musicradio/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 72
    iget-object v0, p0, Laqm$1;->a:Laqm;

    invoke-virtual {v0}, Laqm;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
