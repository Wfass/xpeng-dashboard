.class public Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;
.super Lcom/xiaopeng/xui/widget/XImageView;
.source "LampBeamShowView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LampBeamShowView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLampBeamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLluAiLampBean:Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

.field private mLluAiLampBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mContext:Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->init()V

    return-void
.end method

.method private decodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private initLampBeamList()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getLampBgResId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private releaseLampBeamList()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/xiaopeng/libtheme/ThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->releaseLampBeamList()V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->initLampBeamList()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XImageView;->onDetachedFromWindow()V

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->releaseLampBeamList()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBean:Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLampBeamList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getIndex()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBean:Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getPos()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setLluAiLampBeans(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluAiLampBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->initLampBeamList()V

    return-void
.end method

.method public updateLampBeam(Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluAiLampBean"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLampBeam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->mLluAiLampBean:Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/widget/LampBeamShowView;->postInvalidate()V

    return-void
.end method
