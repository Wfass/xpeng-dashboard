.class Lcom/xiaopeng/musicradio/music/widget/a$2;
.super Ljava/lang/Object;
.source "AuthSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/widget/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/widget/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/widget/a;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/widget/a$2;->b:Lcom/xiaopeng/musicradio/music/widget/a;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/widget/a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/widget/a$2;->b:Lcom/xiaopeng/musicradio/music/widget/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/widget/a;->b(Lcom/xiaopeng/musicradio/music/widget/a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/widget/a$2;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    return-void
.end method
