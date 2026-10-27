.class Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;
.super Ljava/lang/Object;
.source "SearchResultNetradioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;Ljava/util/List;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;->b:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;->b:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment;)Lbnq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetradioFragment$2$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbnq;->a(Ljava/util/List;)V

    return-void
.end method
