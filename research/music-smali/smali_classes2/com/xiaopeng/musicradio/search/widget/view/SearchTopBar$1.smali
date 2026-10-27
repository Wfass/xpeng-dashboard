.class Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;
.super Ljava/lang/Object;
.source "SearchTopBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$1;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar$a;->a()V

    :cond_0
    return-void
.end method
