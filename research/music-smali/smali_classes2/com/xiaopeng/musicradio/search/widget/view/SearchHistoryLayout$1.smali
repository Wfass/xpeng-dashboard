.class Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$1;
.super Ljava/lang/Object;
.source "SearchHistoryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d()V
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

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    sget p1, Lcom/xiaopeng/musicradio/search/a$d;->txt_history_title:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Lbnw$b;

    invoke-direct {p1}, Lbnw$b;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->clearFocus()V

    :cond_0
    return-void
.end method
