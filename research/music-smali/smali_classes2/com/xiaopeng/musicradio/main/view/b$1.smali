.class Lcom/xiaopeng/musicradio/main/view/b$1;
.super Ljava/lang/Object;
.source "MainSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/main/view/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/main/view/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/main/view/b;I)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->b:Lcom/xiaopeng/musicradio/main/view/b;

    iput p2, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->b:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/b;->a(Lcom/xiaopeng/musicradio/main/view/b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->a:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->b:Lcom/xiaopeng/musicradio/main/view/b;

    iget v0, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/main/view/b;->a(Lcom/xiaopeng/musicradio/main/view/b;I)I

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/b$1;->b:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/main/view/b;->notifyDataSetChanged()V

    return-void
.end method
