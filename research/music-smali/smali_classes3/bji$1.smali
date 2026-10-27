.class Lbji$1;
.super Ljava/lang/Object;
.source "TypeSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbji;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbji;


# direct methods
.method constructor <init>(Lbji;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbji$1;->b:Lbji;

    iput p2, p0, Lbji$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lbji$1;->b:Lbji;

    invoke-static {p1}, Lbji;->a(Lbji;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    iget v0, p0, Lbji$1;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    .line 60
    iget-object p1, p0, Lbji$1;->b:Lbji;

    iget v0, p0, Lbji$1;->a:I

    invoke-static {p1, v0}, Lbji;->a(Lbji;I)I

    .line 61
    iget-object p1, p0, Lbji$1;->b:Lbji;

    invoke-virtual {p1}, Lbji;->notifyDataSetChanged()V

    return-void
.end method
