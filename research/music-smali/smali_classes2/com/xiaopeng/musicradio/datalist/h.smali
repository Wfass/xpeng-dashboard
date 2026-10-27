.class public abstract Lcom/xiaopeng/musicradio/datalist/h;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DataListViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/datalist/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xiaopeng/musicradio/datalist/i;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/res/Resources;

.field public c:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVDB;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Lcom/xiaopeng/musicradio/datalist/d;

.field public g:Lcom/xiaopeng/musicradio/datalist/c;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVDB;Z)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->c:Landroidx/databinding/ViewDataBinding;

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/musicradio/datalist/h;->itemView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->a:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/h;->f:Lcom/xiaopeng/musicradio/datalist/d;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/h;->d:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    instance-of v1, v0, Lcom/xiaopeng/musicradio/datalist/p;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/xiaopeng/musicradio/datalist/p;

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/p;->b()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/h;->g:Lcom/xiaopeng/musicradio/datalist/c;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getProperty dataHolder is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/h;->g:Lcom/xiaopeng/musicradio/datalist/c;

    if-nez v0, :cond_0

    return p2

    .line 120
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/datalist/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return p2

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/h;->f:Lcom/xiaopeng/musicradio/datalist/d;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/h;->d:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/h;->g:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/h;->b()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/h;->f:Lcom/xiaopeng/musicradio/datalist/d;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/datalist/h;->c:Landroidx/databinding/ViewDataBinding;

    iget v3, p0, Lcom/xiaopeng/musicradio/datalist/h;->d:I

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/xiaopeng/musicradio/datalist/d;->a(Landroid/view/View;Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;I)V

    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/h;->g:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method
