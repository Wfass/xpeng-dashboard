.class Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;


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

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$a;->d()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->b()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, v1, :cond_1

    .line 186
    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v5, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->removeAllViews()V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_1
    const/4 v4, -0x1

    if-ge v3, v1, :cond_5

    .line 191
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-ge v3, v0, :cond_2

    .line 194
    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 195
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->d(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 198
    :cond_2
    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->c(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 200
    :goto_2
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 201
    iget-object v7, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->e(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v8}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I

    move-result v8

    if-ne v3, v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7, v6, v3, v8}, Lcom/xiaopeng/musicradio/widget/scrollindicator/b$e;->a(Landroid/view/View;IF)V

    .line 203
    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v6}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->g(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->h(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->i(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0, v4}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->b(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;I)I

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->f(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->a(IZ)V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/a$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/a;->j(Lcom/xiaopeng/musicradio/widget/scrollindicator/a;)V

    return-void
.end method
