.class public Lato;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "MusicViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lavi;",
        ">;"
    }
.end annotation


# static fields
.field public static h:I = 0x29

.field public static i:I = 0xff


# instance fields
.field private j:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lavi;)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 36
    iget-object v0, p1, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p1, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p1, Lavi;->i:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Lavi;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 43
    iget-object v0, p1, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p1, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p1, Lavi;->i:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->getResources()Landroid/content/res/Resources;

    .line 46
    iput-object p2, p0, Lato;->j:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 150
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_cloudlike_hl:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_cloudlike_nor:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_list_like_hl:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->ic_32_list_like_nor:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 3

    .line 131
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lato;->i:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lato;->h:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageAlpha(I)V

    :goto_0
    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CUSTOM_ADDED"

    .line 138
    invoke-virtual {p0, v1, v0}, Lato;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCustomAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    iget v0, p0, Lato;->d:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/datalist/d;->b(I)V

    .line 182
    invoke-static {}, Laxu;->b()I

    move-result v0

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->h()I

    move-result p1

    iget v2, p0, Lato;->d:I

    if-ne p1, v2, :cond_1

    .line 184
    iget-object p1, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(IZ)V

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->l()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 189
    :cond_2
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->l:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 190
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 193
    :cond_3
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setSelected(Z)V

    .line 194
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    goto :goto_1

    .line 196
    :cond_4
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->l:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 197
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setSelected(Z)V

    .line 198
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 200
    :goto_1
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->a(I)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private c(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 240
    :goto_0
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->f:Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->setVisibility(I)V

    return-void
.end method

.method private e()Z
    .locals 2

    const-string v0, "HISTORY_MUSIC"

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v0, v1}, Lato;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 2

    .line 225
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->f:Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 229
    :cond_0
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 52
    invoke-virtual {p0}, Lato;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 53
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->k:Lcom/xiaopeng/xui/widget/XTextView;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->p:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->i:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->setMusicInfo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 57
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->o:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->p:Lcom/xiaopeng/xui/widget/XTextView;

    .line 59
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v5, Lavi;

    iget-object v5, v5, Lavi;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 58
    invoke-static {v1, v3, v4, v5}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 63
    invoke-direct {p0, v0}, Lato;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v1

    .line 64
    invoke-direct {p0}, Lato;->e()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 66
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 67
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->m:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v6, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 71
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 72
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v6, p0}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {v0, v3}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z

    move-result v6

    .line 74
    invoke-direct {p0, v6}, Lato;->a(Z)V

    .line 75
    iget-object v7, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v7, Lavi;

    iget-object v7, v7, Lavi;->e:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 78
    :goto_0
    iget-object v6, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v6, Lavi;

    iget-object v6, v6, Lavi;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 79
    invoke-direct {p0, v0}, Lato;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object v6

    .line 80
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 81
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 83
    iget-object v8, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/datalist/d;->l()Z

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    .line 85
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 86
    invoke-direct {p0, v5}, Lato;->b(Z)V

    .line 87
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVisibility(I)V

    .line 88
    invoke-direct {p0, v0}, Lato;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XCheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v4, v10}, Lcom/xiaopeng/xui/widget/XCheckBox;->setEnabled(Z)V

    .line 92
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    iget-object v6, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p0}, Lato;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xui/widget/XCheckBox;->setChecked(Z)V

    .line 94
    :goto_1
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->l:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 95
    iget-object v4, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v4, Lavi;

    iget-object v4, v4, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    move v6, v5

    move v4, v9

    goto :goto_2

    .line 98
    :cond_2
    invoke-direct {p0, v10}, Lato;->b(Z)V

    .line 99
    iget-object v8, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v8, Lavi;

    iget-object v8, v8, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v8, v4}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVisibility(I)V

    move v4, v5

    :goto_2
    if-eqz v6, :cond_3

    .line 102
    invoke-direct {p0}, Lato;->f()V

    move v4, v9

    goto :goto_3

    .line 105
    :cond_3
    invoke-direct {p0, v1}, Lato;->c(Z)V

    .line 107
    :goto_3
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->d:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setText(I)V

    .line 111
    iget-object v1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lavi;

    iget-object v1, v1, Lavi;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ms_list_item_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v4, p0, Lato;->j:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v4, :cond_4

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lato;->j:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getVuiPosition()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_4
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 117
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    .line 119
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v10}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLayoutLoadable(Z)V

    .line 121
    sget-object p1, Lbxy;->GROUP:Lbxy;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 122
    invoke-virtual {v1, v10}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->enableViewVuiMode(Z)V

    .line 123
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v7}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 124
    invoke-virtual {p0}, Lato;->d()V

    if-eqz v3, :cond_5

    .line 126
    invoke-static {v0}, Laxu;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_5
    return-void
.end method

.method public d()V
    .locals 2

    .line 146
    iget-object v0, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavi;

    iget-object v0, v0, Lavi;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lato;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 206
    invoke-direct {p0, v0}, Lato;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$c;->iv_icon:I

    if-ne v1, v2, :cond_2

    .line 210
    invoke-direct {p0}, Lato;->e()Z

    move-result v1

    invoke-static {v0, v1}, Laxu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 211
    invoke-static {v0, v1}, Laxu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 213
    invoke-static {v0, v1}, Laxu;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    .line 215
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 217
    :cond_2
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->onClick(Landroid/view/View;)V

    .line 218
    iget-object p1, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 219
    iget-object p1, p0, Lato;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavi;

    iget-object p1, p1, Lavi;->c:Lcom/xiaopeng/xui/widget/XCheckBox;

    iget-object v0, p0, Lato;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p0}, Lato;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method
