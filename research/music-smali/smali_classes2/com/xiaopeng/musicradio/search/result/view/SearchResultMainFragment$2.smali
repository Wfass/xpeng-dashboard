.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;
.super Ljava/lang/Object;
.source "SearchResultMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    .line 181
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
