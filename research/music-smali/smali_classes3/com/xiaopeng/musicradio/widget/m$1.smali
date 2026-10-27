.class Lcom/xiaopeng/musicradio/widget/m$1;
.super Ljava/lang/Object;
.source "TabLayoutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/m;->a(Lcom/xiaopeng/musicradio/widget/m$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/m;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/m$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tagLayout onClickfPosition--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/m$1;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--mSelectPosition--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/m;->a(Lcom/xiaopeng/musicradio/widget/m;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabLayoutAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/m$1;->a:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/m;->a(Lcom/xiaopeng/musicradio/widget/m;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/m$1;->a:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/widget/m;->a(Lcom/xiaopeng/musicradio/widget/m;I)I

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/m;->notifyDataSetChanged()V

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/m$1;->b:Lcom/xiaopeng/musicradio/widget/m;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/m$1;->a:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
