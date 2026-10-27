.class Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;
.super Ljava/lang/Object;
.source "NrCategoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbjv;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lbkg;->d()V

    .line 118
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getBizVal()I

    move-result v1

    const-string v2, "radio_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "radio_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "arguments"

    .line 122
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    iget-object p2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "/xpnetradio/activity/category_detail"

    invoke-static {p2, v1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbkg;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
