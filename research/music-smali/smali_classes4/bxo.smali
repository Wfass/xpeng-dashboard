.class public Lbxo;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public static a(I)I
    .locals 1

    .line 226
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static a(ILcom/xiaopeng/xui/widget/XButton;)V
    .locals 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 301
    sget p0, Lcom/xiaopeng/musicradio/common/k$g;->common_play:I

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 302
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 304
    :cond_1
    sget p0, Lcom/xiaopeng/musicradio/common/k$g;->common_play:I

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 305
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_play_s:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 298
    :cond_2
    :goto_0
    sget p0, Lcom/xiaopeng/musicradio/common/k$g;->common_pause:I

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 299
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_pause_s:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 307
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, p0, v0, v0, v0}, Lcom/xiaopeng/xui/widget/XButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Ljava/lang/String;II)V
    .locals 0

    const/16 p0, 0x8

    .line 204
    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 205
    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 206
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 207
    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p4, Lbxo$3;

    invoke-direct {p4, p1, p5, p2}, Lbxo$3;-><init>(Lcom/xiaopeng/xui/widget/XImageView;ILcom/xiaopeng/xui/widget/XFrameLayout;)V

    const/4 p2, 0x0

    invoke-static {p0, p3, p2, p1, p4}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V
    .locals 1

    .line 71
    invoke-static {p0}, Lbxo;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 73
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    new-instance v0, Lbxo$1;

    invoke-direct {v0, p1, p2}, Lbxo$1;-><init>(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;)V

    invoke-static {p4, p3, p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 1

    .line 257
    invoke-static {p0}, Lbxo;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 261
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;I)V
    .locals 1

    .line 247
    invoke-static {p0}, Lbxo;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 252
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, v0, p1}, Lbxo;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 373
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    .line 374
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V
    .locals 3

    .line 413
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_playall:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 414
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_stop:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 417
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 423
    sget p3, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_stop:I

    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 425
    :cond_2
    sget p3, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_playall:I

    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 428
    :goto_0
    sget p0, Lcom/xiaopeng/musicradio/common/k$d;->album_play_icon_mask:I

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    .line 429
    sget p0, Lcom/xiaopeng/musicradio/common/k$d;->album_play_icon_selector:I

    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;)V
    .locals 2

    .line 234
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_ximg_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    invoke-static {v0, p1, v1, p0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 237
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_ximg_logo:I

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    invoke-static {v0, p1, v1, p0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 241
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_ximg_logo:I

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(ZILcom/xiaopeng/xui/widget/XImageView;)V
    .locals 2

    .line 313
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_playall:I

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_stop:I

    invoke-static {p0, p1, p2, v0, v1}, Lbxo;->b(ZILcom/xiaopeng/xui/widget/XImageView;II)V

    return-void
.end method

.method public static a(ZILcom/xiaopeng/xui/widget/XImageView;II)V
    .locals 0

    .line 317
    invoke-static {p0, p1, p2, p3, p4}, Lbxo;->b(ZILcom/xiaopeng/xui/widget/XImageView;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 378
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 379
    check-cast p0, Landroid/app/Activity;

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)I
    .locals 1

    .line 230
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->x_color_bg_light:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setBackgroundColor(I)V

    .line 129
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lbxo$2;

    invoke-direct {v0, p1, p2}, Lbxo$2;-><init>(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;)V

    invoke-static {p0, p3, p4, p1, v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    return-void
.end method

.method public static b(ZILcom/xiaopeng/xui/widget/XImageView;II)V
    .locals 1

    .line 321
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 322
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 332
    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p2, p4}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .line 200
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
