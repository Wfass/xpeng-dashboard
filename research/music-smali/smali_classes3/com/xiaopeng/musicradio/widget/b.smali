.class public Lcom/xiaopeng/musicradio/widget/b;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "AccountImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Ljava/lang/String;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->account_image_item:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/b$a;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/b;->c()Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/xiaopeng/musicradio/widget/b$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/b$a;-><init>(Lcom/xiaopeng/musicradio/widget/b;Landroid/view/View;)V

    return-object p2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 36
    check-cast p1, Lcom/xiaopeng/musicradio/widget/b$a;

    .line 37
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/b;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 41
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42880000    # 68.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 42
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 45
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_list_220:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/widget/b$a;->a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    invoke-static {v0, p2, v1, p1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/b;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/b$a;

    move-result-object p1

    return-object p1
.end method
