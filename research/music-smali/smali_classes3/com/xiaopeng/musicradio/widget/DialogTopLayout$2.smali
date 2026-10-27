.class Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;
.super Ljava/lang/Object;
.source "DialogTopLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;->a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;->a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->access$100(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;->a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->access$200(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;->a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->access$100(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;->a:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->toggle()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;->a(Z)V

    :cond_0
    return-void
.end method
