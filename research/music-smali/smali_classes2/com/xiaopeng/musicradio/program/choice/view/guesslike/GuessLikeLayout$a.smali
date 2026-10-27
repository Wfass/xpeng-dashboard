.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;
.super Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.source "GuessLikeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;Landroid/content/Context;I)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    .line 293
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;
    .locals 0

    .line 299
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/program/b$f;->item_guess_like:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/utils/ae;->b(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->c()Landroid/view/View;

    move-result-object p1

    .line 303
    :cond_0
    new-instance p2, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;Landroid/view/View;)V

    return-object p2
.end method

.method public a(JI)V
    .locals 0

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;I)V
    .locals 12

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 309
    invoke-static {v0}, Lbmy;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getShortIntro()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPlayCount()J

    move-result-wide v1

    long-to-double v6, v1

    move-object v1, p1

    move v2, p2

    .line 309
    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 312
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a(J)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    move v1, v5

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    move v1, v3

    .line 318
    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 319
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->c(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 320
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 321
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 323
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    sget v7, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_vip:I

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getPaymentType()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 325
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    sget v7, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_payment:I

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 327
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    :goto_1
    iget-object v6, p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->itemView:Landroid/view/View;

    check-cast v6, Lcom/xiaopeng/xui/vui/VuiView;

    add-int/lit8 v7, p2, 0x1

    .line 330
    invoke-interface {v6, v7}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 331
    iget-object v8, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v8

    iget-object v9, p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->itemView:Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "guess_like_layout_item_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, v9, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 332
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v8, Lcom/xiaopeng/musicradio/program/b$g;->vui_play_position:I

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 333
    sget-object p2, Lbxx;->CLICK:Lbxx;

    invoke-virtual {p2}, Lbxx;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 335
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setVuiPosition(I)V

    .line 336
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setVuiElementId(Ljava/lang/String;)V

    .line 337
    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->e(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/program/b$a;->x_theme_text_03:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 287
    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;

    move-result-object p1

    return-object p1
.end method
