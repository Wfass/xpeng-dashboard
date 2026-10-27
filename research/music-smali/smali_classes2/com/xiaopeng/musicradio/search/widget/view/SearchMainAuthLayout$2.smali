.class Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$2;
.super Ljava/lang/Object;
.source "SearchMainAuthLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SearchMainAuthLayout"

    const-string v0, "onClick: qq"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMainAuthLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qq"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
