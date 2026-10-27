.class public Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SongItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/dir/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/usb/dir/view/c;",
        "Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/dir/view/c;"
    }
.end annotation


# static fields
.field public static final MAIN:I = 0x1

.field public static final SUB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SongItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirType:I

.field private mInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field public mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

.field private mPosition:I

.field private mThemeViewModel:Lapr;

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mDirType:I

    return p0
.end method

.method private handleState()V
    .locals 5

    .line 135
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 136
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v1

    .line 138
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    .line 141
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 153
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 154
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 166
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->setStatus(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;
    .locals 1

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->music_list_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->music_list_item:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 209
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->handleState()V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 6

    .line 180
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "I",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    iput p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mDirType:I

    if-eqz p1, :cond_0

    .line 123
    iput-object p3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mInfos:Ljava/util/List;

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 125
    iput p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mPosition:I

    .line 126
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p3

    iget-object p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p3, p5}, Lbnf;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 127
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p3

    iget-object p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p3, p5}, Lbnf;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 128
    iput-object p4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->b()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setStatus(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setPlayState(I)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public updateLogo()V
    .locals 6

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->mPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    :cond_0
    return-void
.end method

.method public updatePlayState()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/SongItemLayout;->handleState()V

    return-void
.end method
