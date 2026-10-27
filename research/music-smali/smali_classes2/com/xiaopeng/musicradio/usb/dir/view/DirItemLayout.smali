.class public Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "DirItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/dir/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/usb/dir/view/a;",
        "Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/dir/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SongItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirName:Lcom/xiaopeng/xui/widget/XTextView;

.field private mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private mThemeViewModel:Lapr;

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method private setMsNumState(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;
    .locals 1

    .line 82
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/present/DirItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->dir_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mDirName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->iv_play_list_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->lottie_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->usb_dir_detail_item:I

    return v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 4

    .line 241
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usb_dir_prefix_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->updatePlayState()V

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->updateSpeechState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->updateSpeechState()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mDirName:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 132
    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usb_dir_item_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lbez$g;->vui_dir_position:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/musicradio/utils/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/z;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 134
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiPosition(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    sget-object v1, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiElementType(Lbxy;)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    sget-object v1, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiAction(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiLayoutLoadable(Z)V

    .line 143
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "defaultExecElementId"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setStatus(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/16 v2, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToHide()V

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mPlayState:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mListLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method public updatePlayState()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->isPlayCurrentCollect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setStatus(I)V

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setMsNumState(Z)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setStatus(I)V

    .line 204
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setMsNumState(Z)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setStatus(I)V

    .line 208
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->setMsNumState(Z)V

    :goto_0
    return-void
.end method

.method public updateSpeechState()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirItemLayout;->mSpeechNumTv:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

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
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    return-void
.end method
