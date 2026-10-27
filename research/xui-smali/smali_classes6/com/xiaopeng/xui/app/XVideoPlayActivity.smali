.class public Lcom/xiaopeng/xui/app/XVideoPlayActivity;
.super Lcom/xiaopeng/xui/app/XActivity;
.source "XVideoPlayActivity.java"


# static fields
.field protected static final EXTRA_VIDEO_ITEM:Ljava/lang/String; = "extra_video_item"

.field protected static final EXTRA_VIDEO_PATH:Ljava/lang/String; = "extra_video_path"


# instance fields
.field videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

.field protected x_video_layout:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

.field protected x_video_root:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XActivity;-><init>()V

    return-void
.end method

.method public static start(Ljava/lang/Class;Landroid/content/Context;Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoItem"    # Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;",
            ")V"
        }
    .end annotation

    .line 24
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "extra_video_item"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method

.method public static start(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "extra_video_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_activity_video_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    if-nez v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "videoPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->finish()V

    .line 45
    return-void

    .line 47
    :cond_0
    new-instance v1, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-direct {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->setPath(Ljava/lang/String;)V

    .line 51
    .end local v0    # "videoPath":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_video_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->x_video_layout:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    .line 52
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_video_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->x_video_root:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->x_video_layout:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XVideoPlayActivity;->videoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    .line 54
    return-void
.end method
