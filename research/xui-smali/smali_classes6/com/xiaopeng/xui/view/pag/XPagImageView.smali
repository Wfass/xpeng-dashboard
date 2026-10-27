.class public Lcom/xiaopeng/xui/view/pag/XPagImageView;
.super Lorg/libpag/PAGImageView;
.source "XPagImageView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# static fields
.field public static final PLAY_MODE_LOOP:I = 0x2

.field public static final PLAY_MODE_NO_PLAY:I = 0x0

.field public static final PLAY_MODE_ONCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XPagImageView"


# instance fields
.field defaultColorStateList:Landroid/content/res/ColorStateList;

.field protected endFrame:I

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

.field protected mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

.field protected pagFile:Lorg/libpag/PAGFile;

.field protected pagFileName:Ljava/lang/String;

.field playMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/libpag/PAGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->playMode:I

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-nez v1, :cond_0

    .line 56
    invoke-static {p0, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xui/view/pag/XPagImageView$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView$1;-><init>(Lcom/xiaopeng/xui/view/pag/XPagImageView;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 64
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XPagImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XPagImageView_pag_play_mode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->playMode:I

    .line 66
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XPagImageView_pag_solid_default_color:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 67
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XPagImageView_pag_file_name:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFileName:Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->init()V

    .line 70
    return-void
.end method

.method private init()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 158
    iget v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->playMode:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->play(I)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->updateTheme()V

    .line 160
    new-instance v0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;-><init>(Lcom/xiaopeng/xui/view/pag/XPagImageView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->addListener(Lorg/libpag/PAGImageView$PAGImageViewListener;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 149
    invoke-super {p0}, Lorg/libpag/PAGImageView;->drawableStateChanged()V

    .line 151
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 117
    invoke-super {p0}, Lorg/libpag/PAGImageView;->finalize()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->releaseVui()V

    .line 119
    return-void
.end method

.method public getMarker(Ljava/lang/String;)Lorg/libpag/PAGMarker;
    .locals 11
    .param p1, "markerName"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "XPagImageView"

    const-string v2, "pagFile is null"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->numChildren()I

    move-result v0

    if-gtz v0, :cond_1

    .line 253
    const-string v0, "XPagImageView"

    const-string v2, "pagFile.numChildren() <= 0"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object v1

    .line 256
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v3}, Lorg/libpag/PAGFile;->numChildren()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 257
    iget-object v3, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v3, v2}, Lorg/libpag/PAGFile;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/libpag/PAGLayer;->markers()[Lorg/libpag/PAGMarker;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 258
    .local v6, "marker":Lorg/libpag/PAGMarker;
    const-string v7, "XPagImageView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "marker.mComment:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lorg/libpag/PAGMarker;->mComment:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " marker.mStartTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lorg/libpag/PAGMarker;->mStartTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " marker.mDuration"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lorg/libpag/PAGMarker;->mDuration:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v7, v6, Lorg/libpag/PAGMarker;->mComment:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    return-object v6

    .line 257
    .end local v6    # "marker":Lorg/libpag/PAGMarker;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Lorg/libpag/PAGImageView;->onAttachedToWindow()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->vuiViewAttachedToWindow()V

    .line 92
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 79
    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 96
    invoke-super {p0}, Lorg/libpag/PAGImageView;->onDetachedFromWindow()V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->vuiViewDetachedFromWindow()V

    .line 101
    return-void
.end method

.method public onViewCreated(Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewMirrorDrawable:Lcom/xiaopeng/xui/view/delegate/XViewMirrorDrawable;

    .line 75
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 135
    invoke-super {p0, p1, p2}, Lorg/libpag/PAGImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->onVuiVisibilityChanged(I)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->onVisibilityChangedThemeRefresh(I)V

    .line 138
    return-void
.end method

.method public play(I)V
    .locals 1
    .param p1, "playMode"    # I

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    .line 231
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setRepeatCount(I)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->play()V

    goto :goto_0

    .line 237
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setRepeatCount(I)V

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->play()V

    .line 239
    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setRepeatCount(I)V

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pause()V

    .line 235
    nop

    .line 245
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public play(Ljava/lang/String;)V
    .locals 5
    .param p1, "markerName"    # Ljava/lang/String;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    .line 221
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getMarker(Ljava/lang/String;)Lorg/libpag/PAGMarker;

    move-result-object v0

    .line 222
    .local v0, "marker":Lorg/libpag/PAGMarker;
    if-eqz v0, :cond_0

    .line 223
    iget-wide v1, v0, Lorg/libpag/PAGMarker;->mStartTime:J

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setCurrentFrame(I)V

    .line 224
    iget-wide v1, v0, Lorg/libpag/PAGMarker;->mStartTime:J

    iget-wide v3, v0, Lorg/libpag/PAGMarker;->mDuration:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->play()V

    .line 227
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 123
    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->setEnabled(Z)V

    .line 124
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setAlpha(F)V

    goto :goto_0

    .line 128
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setAlpha(F)V

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method public setPagFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "pagFile"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/libpag/PAGFile;->Load(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/libpag/PAGFile;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    .line 196
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 111
    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->setSelected(Z)V

    .line 112
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setVuiSelected(Landroid/view/View;Z)V

    .line 113
    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 105
    invoke-super {p0, p1}, Lorg/libpag/PAGImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->setVuiVisibility(Landroid/view/View;I)V

    .line 107
    return-void
.end method

.method public updateTheme()V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v1}, Lorg/libpag/PAGFile;->numChildren()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->pagFile:Lorg/libpag/PAGFile;

    invoke-virtual {v1, v0}, Lorg/libpag/PAGFile;->getLayerAt(I)Lorg/libpag/PAGLayer;

    move-result-object v1

    .line 204
    .local v1, "layer":Lorg/libpag/PAGLayer;
    const-string v2, "XPagImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/libpag/PAGLayer;->layerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " layerType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/libpag/PAGLayer;->layerType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    instance-of v2, v1, Lorg/libpag/PAGSolidLayer;

    if-eqz v2, :cond_2

    .line 206
    move-object v2, v1

    check-cast v2, Lorg/libpag/PAGSolidLayer;

    .line 208
    .local v2, "solidLayer":Lorg/libpag/PAGSolidLayer;
    const-string v3, "XPagImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "solidLayer.modifyColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/libpag/PAGSolidLayer;->solidColor()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " solidLayer.layerName()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/libpag/PAGSolidLayer;->layerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lorg/libpag/PAGSolidLayer;->layerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 210
    .local v3, "id":I
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/libpag/PAGSolidLayer;->setSolidColor(I)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$color;->x_icon_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/libpag/PAGSolidLayer;->setSolidColor(I)V

    .line 202
    .end local v1    # "layer":Lorg/libpag/PAGLayer;
    .end local v2    # "solidLayer":Lorg/libpag/PAGSolidLayer;
    .end local v3    # "id":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
