.class Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;
.super Ljava/lang/Object;
.source "CommonTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;->a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;->a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;->a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;->a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->a(Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$2;->a:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout$a;->a(Z)V

    :cond_0
    return-void
.end method
