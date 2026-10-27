.class public Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;
.super Ljava/lang/Object;
.source "IVideoView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/IVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XVideoItem"
.end annotation


# instance fields
.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field private path:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->path:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->title:Ljava/lang/String;

    .line 102
    return-void
.end method
