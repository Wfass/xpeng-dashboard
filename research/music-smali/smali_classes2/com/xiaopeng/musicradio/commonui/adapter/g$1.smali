.class Lcom/xiaopeng/musicradio/commonui/adapter/g$1;
.super Ljava/lang/Object;
.source "RvDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/g;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/commonui/adapter/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;Ljava/util/List;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/g$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/commonui/adapter/g;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->a:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/g$a;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$1;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g$1$2;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/g$1;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
