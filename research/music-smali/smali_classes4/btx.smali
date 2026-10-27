.class public abstract Lbtx;
.super Ljava/lang/Object;
.source "BaseLayoutPreload.java"


# instance fields
.field protected o:Lcom/xiaopeng/musicradio/commonui/base/b;

.field protected p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 24
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/commonui/base/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbtx;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    .line 25
    invoke-virtual {p0}, Lbtx;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbtx;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public c()V
    .locals 3

    .line 29
    iget-object v0, p0, Lbtx;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 30
    iget-object v0, p0, Lbtx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lbtx;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 32
    iget-object v2, p0, Lbtx;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Laqx;->a()Laqx;

    move-result-object v1

    iget-object v2, p0, Lbtx;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Laqx;->a(Landroid/view/LayoutInflater;[I)V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 1

    .line 40
    iget-object v0, p0, Lbtx;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lbtx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public r()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 46
    iget-object v0, p0, Lbtx;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    return-object v0
.end method
