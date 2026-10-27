.class Lblw$1;
.super Ljava/lang/Object;
.source "AlbumCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lblw;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lblw;


# direct methods
.method constructor <init>(Lblw;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lblw$1;->b:Lblw;

    iput p2, p0, Lblw$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lblw$1;->b:Lblw;

    invoke-static {p1}, Lblw;->a(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lblw$1;->b:Lblw;

    invoke-static {p1}, Lblw;->b(Lblw;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lblw$1;->a:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    :cond_0
    return-void
.end method
