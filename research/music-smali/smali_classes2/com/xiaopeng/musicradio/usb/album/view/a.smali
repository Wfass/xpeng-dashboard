.class public Lcom/xiaopeng/musicradio/usb/album/view/a;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/usb/album/view/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Landroid/content/Context;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->usb_album_detail_item:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->g:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->i:Z

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->h:Landroid/content/Context;

    return-void
.end method

.method private a(ILcom/xiaopeng/musicradio/usb/album/view/a$a;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 191
    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->h(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_btn_playall:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->h(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_btn_playall:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->h(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_btn_stop:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {p2}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->h(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_btn_stop:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/usb/album/view/a$a;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/view/a;->c()Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/xiaopeng/musicradio/usb/album/view/a$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;-><init>(Lcom/xiaopeng/musicradio/usb/album/view/a;Landroid/view/View;)V

    return-object p2
.end method

.method public g()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->g:I

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/view/a;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 86
    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/a$a;

    .line 87
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/usb/album/view/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    if-eqz v0, :cond_5

    .line 89
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->b(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 90
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->b(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 91
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->c(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 92
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->c(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 93
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->d(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 95
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->b()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->pic_covers_music_220:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 96
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->a()J

    .line 98
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_0

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "usb_album_prefix_"

    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    .line 107
    iput p2, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->g:I

    .line 108
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v1

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_2

    .line 119
    invoke-direct {p0, v2, p1}, Lcom/xiaopeng/musicradio/usb/album/view/a;->a(ILcom/xiaopeng/musicradio/usb/album/view/a$a;)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/musicradio/usb/album/view/a;->a(ILcom/xiaopeng/musicradio/usb/album/view/a$a;)V

    move v1, v3

    goto :goto_2

    .line 116
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/musicradio/usb/album/view/a;->a(ILcom/xiaopeng/musicradio/usb/album/view/a$a;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/xiaopeng/musicradio/usb/album/view/a;->a(ILcom/xiaopeng/musicradio/usb/album/view/a$a;)V

    :goto_1
    move v1, v2

    .line 125
    :goto_2
    iget-object v6, p1, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->itemView:Landroid/view/View;

    check-cast v6, Lcom/xiaopeng/xui/vui/VuiView;

    add-int/2addr p2, v3

    .line 126
    invoke-interface {v6, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 127
    iget-object v7, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v7

    iget-object v8, p1, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->itemView:Landroid/view/View;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ms_rm_list_item_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->a(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/musicradio/usb/a$d;->vui_play_position:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 130
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->g(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiPosition(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->g(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ms_rm_list_play_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/a;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->g(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 136
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->f(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-interface {v6, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->a(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 143
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->a(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    goto :goto_4

    .line 145
    :cond_5
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p1

    sget p2, Lcom/xiaopeng/musicradio/usb/a$a;->pic_covers_music_220:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 67
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/usb/album/view/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/usb/album/view/a$a;

    const/4 v1, 0x0

    .line 71
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 72
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string v2, "payload_speech"

    .line 73
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 74
    invoke-static {v0}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->a(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/usb/album/view/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/usb/album/view/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_1
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/usb/album/view/a;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/usb/album/view/a$a;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 217
    check-cast p1, Lcom/xiaopeng/musicradio/usb/album/view/a$a;

    .line 218
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 219
    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/album/view/a$a;->e(Lcom/xiaopeng/musicradio/usb/album/view/a$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/usb/a$a;->pic_covers_music_220:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    return-void
.end method
