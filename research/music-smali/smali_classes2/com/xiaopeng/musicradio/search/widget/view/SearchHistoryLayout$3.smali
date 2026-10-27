.class Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;
.super Ljava/lang/Object;
.source "SearchHistoryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;->a(Ljava/lang/String;)V

    .line 154
    new-instance p1, Lbnw$g;

    invoke-direct {p1}, Lbnw$g;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    .line 156
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    const-string v0, "SELECT_MENU_INDEX"

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result p1

    .line 157
    invoke-static {p1}, Lbom;->b(I)V

    :cond_0
    return-void
.end method
