.class Lbly$2;
.super Ljava/lang/Object;
.source "RdAlbumDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbly;->a(Lbly$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbly$a;

.field final synthetic b:I

.field final synthetic c:Lbly;


# direct methods
.method constructor <init>(Lbly;Lbly$a;I)V
    .locals 0

    .line 240
    iput-object p1, p0, Lbly$2;->c:Lbly;

    iput-object p2, p0, Lbly$2;->a:Lbly$a;

    iput p3, p0, Lbly$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    iget-object p1, p0, Lbly$2;->a:Lbly$a;

    invoke-static {p1}, Lbly$a;->e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lbly$2;->c:Lbly;

    invoke-static {p1}, Lbly;->c(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lbly$2;->c:Lbly;

    invoke-static {p1}, Lbly;->d(Lbly;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lbly$2;->b:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;->a(II)V

    .line 246
    iget-object p1, p0, Lbly$2;->c:Lbly;

    invoke-static {p1}, Lbly;->e(Lbly;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    instance-of p1, p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lbly$2;->c:Lbly;

    invoke-static {p1}, Lbly;->f(Lbly;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/16 v0, 0x320

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b(I)V

    :cond_0
    return-void
.end method
