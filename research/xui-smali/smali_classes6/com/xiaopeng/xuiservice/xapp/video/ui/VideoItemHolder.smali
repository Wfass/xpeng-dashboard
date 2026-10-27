.class public Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VideoItemHolder.java"


# static fields
.field private static final MEDIA_ROUND_RADIUS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "VideoItemHolder"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogoIcon:Landroid/widget/ImageView;

.field private mVideoCover:Landroid/widget/ImageView;

.field private mVideoIndex:Landroid/widget/TextView;

.field private mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mVideoName:Landroid/widget/TextView;

.field private mVideoTag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f0900bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 43
    const v0, 0x7f0900ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoCover:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0900ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mLogoIcon:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoTag:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f09017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoName:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f09017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoIndex:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method private loadLogoImg(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 94
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 95
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 96
    return-void
.end method

.method private loadMediaImg(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "defaultId"    # I

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 87
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 88
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 89
    return-void
.end method

.method private setVideoTagView(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "id"    # I

    .line 72
    if-gez p2, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video_icon_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "stringId":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video_icon_info_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "colorId":I
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 79
    .local v2, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    const v4, 0x7f0600e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public setData(ILcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "item"    # Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoIndex:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0e00c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoTag:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getIconInfo()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->setVideoTagView(Landroid/widget/TextView;I)V

    .line 58
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPoster()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoCover:Landroid/widget/ImageView;

    const v2, 0x7f080227

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->loadMediaImg(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "VideoItemHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mLogoIcon:Landroid/widget/ImageView;

    const v1, 0x7f080229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult$Data;->getLogo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mLogoIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->loadLogoImg(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 65
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/ui/VideoItemHolder;->mVideoLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
