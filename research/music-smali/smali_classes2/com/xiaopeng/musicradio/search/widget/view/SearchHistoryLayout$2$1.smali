.class Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;
.super Ljava/lang/Object;
.source "SearchHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;->a()V

    :cond_0
    return-void
.end method
