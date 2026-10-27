.class Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$2;
.super Ljava/lang/Object;
.source "SearchKugouAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SearchKugouAuthLayout"

    const-string v0, "onClick: kugou"

    .line 121
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchKugouAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kg"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
