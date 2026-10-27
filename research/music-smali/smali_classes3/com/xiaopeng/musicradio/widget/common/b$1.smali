.class Lcom/xiaopeng/musicradio/widget/common/b$1;
.super Ljava/lang/Object;
.source "SongListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/common/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/common/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/common/b;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b$1;->b:Lcom/xiaopeng/musicradio/widget/common/b;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/common/b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "SongListAdapter"

    const-string v0, "onClick: "

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b$1;->b:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(Lcom/xiaopeng/musicradio/widget/common/b;)Lcom/xiaopeng/musicradio/widget/common/b$a;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/common/b$1;->a:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/b$a;->a(I)V

    return-void
.end method
