.class Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->k(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 232
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 234
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->l(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$c;->a(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->setCurrentItem(I)V

    .line 236
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->m(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$2;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->n(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I

    move-result v1

    invoke-interface {v2, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$d;->a(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
