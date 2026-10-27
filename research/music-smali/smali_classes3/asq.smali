.class public Lasq;
.super Ljava/lang/Object;
.source "HomePreLoadHelper.java"


# direct methods
.method private static a(I)I
    .locals 2

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->music_item_selection_top_low:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 44
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->music_item_kugou_top:I

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lasq;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    invoke-virtual {v0}, Lbfr;->b()I

    move-result v0

    .line 23
    new-instance v1, Lcom/xiaopeng/musicradio/utils/ae$c;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/utils/ae$c;-><init>()V

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->layout_select_menu:I

    .line 24
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(I)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->music_stub_layout_qq_main:I

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    .line 26
    invoke-static {v0}, Lasq;->a(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->music_item_rm_title_layout:I

    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->music_item_rm_item_layout:I

    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->music_item_rm_item_layout:I

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->music_item_rm_item_layout:I

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->left_select_item:I

    .line 31
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(I)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->left_select_item:I

    .line 32
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(I)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->left_select_item:I

    .line 33
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(I)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->left_select_item:I

    .line 34
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(I)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/main/a$e;->layout_search_topbar:I

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a(II)Lcom/xiaopeng/musicradio/utils/ae$c;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ae$c;->a()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/musicradio/utils/ae;->a(Landroid/view/LayoutInflater;Ljava/util/List;)V

    return-void
.end method
