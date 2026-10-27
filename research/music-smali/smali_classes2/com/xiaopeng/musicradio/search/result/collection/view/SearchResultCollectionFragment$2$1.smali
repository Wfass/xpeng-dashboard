.class Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2$1;
.super Ljava/lang/Object;
.source "SearchResultCollectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/result/collection/view/SearchResultCollectionFragment;->refreshData()V

    return-void
.end method
