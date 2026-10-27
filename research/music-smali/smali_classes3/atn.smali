.class public Latn;
.super Lcom/xiaopeng/musicradio/datalist/h;
.source "MMusicViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/h<",
        "Lavg;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/xiaopeng/xui/widget/XCheckBox;

.field private i:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Lavg;)V
    .locals 2

    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/h;-><init>(Landroidx/databinding/ViewDataBinding;Z)V

    .line 30
    iget-object v0, p1, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p1, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->cb_select:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XCheckBox;

    iput-object v0, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    .line 32
    iget-object p1, p1, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->num:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Latn;->i:Lcom/xiaopeng/xui/widget/XTextView;

    .line 33
    iget-object p1, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->a(I)V

    .line 39
    invoke-virtual {p0}, Latn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 41
    invoke-virtual {p0, v0, p1, v3}, Latn;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v5

    const-class v6, Lbfe;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbfe;

    .line 43
    invoke-interface {v5}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v5

    .line 45
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v6

    invoke-virtual {v6}, Laqr;->b()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 58
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v5

    invoke-virtual {v5}, Laqr;->b()I

    move-result v5

    .line 59
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v6

    invoke-virtual {v6, v5}, Laqr;->c(I)Laqt;

    move-result-object v5

    .line 60
    invoke-interface {v5}, Laqt;->getPlayState()I

    move-result v5

    if-eq v5, v3, :cond_2

    if-eq v5, v1, :cond_1

    if-eq v5, v2, :cond_2

    .line 70
    invoke-virtual {p0, v4}, Latn;->b(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, v5}, Latn;->b(I)V

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v5}, Latn;->b(I)V

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0, v4}, Latn;->b(I)V

    .line 77
    :cond_4
    :goto_1
    iget-object v5, p0, Latn;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/datalist/d;->l()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    iget-object v5, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVisibility(I)V

    .line 79
    iget-object v5, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v5, v3}, Lcom/xiaopeng/xui/widget/XCheckBox;->setEnabled(Z)V

    .line 80
    iget-object v5, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    iget-object v6, p0, Latn;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p0}, Latn;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XCheckBox;->setChecked(Z)V

    .line 81
    iget-object v5, p0, Latn;->i:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 82
    iget-object v5, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    sget-object v6, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVuiElementType(Lbxy;)V

    .line 83
    sget v5, Lcom/xiaopeng/musicradio/mine/a$e;->vui_check_position:I

    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 83
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVuiLabel(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-static {v0, v3}, Lbxp;->a(Landroid/view/View;Z)V

    .line 87
    iget-object v0, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    const-string v1, ""

    const-string v2, "alb_del_"

    invoke-static {v0, p1, v1, v2}, Lbxp;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_5
    iget-object p1, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Latn;->i:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 92
    :goto_2
    iget-object p1, p0, Latn;->c:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lavg;

    iget-object p1, p1, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b()V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 1

    .line 96
    iget-object v0, p0, Latn;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavg;

    iget-object v0, v0, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V

    return-void
.end method

.method protected b(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Latn;->c:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lavg;

    iget-object v0, v0, Lavg;->c:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setPlayState(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Latn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 106
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/datalist/h;->onClick(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Latn;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/datalist/d;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Latn;->h:Lcom/xiaopeng/xui/widget/XCheckBox;

    iget-object v0, p0, Latn;->f:Lcom/xiaopeng/musicradio/datalist/d;

    invoke-virtual {p0}, Latn;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
