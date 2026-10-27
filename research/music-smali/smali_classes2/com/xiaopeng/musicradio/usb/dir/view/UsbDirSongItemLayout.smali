.class public Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "UsbDirSongItemLayout.java"

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

.field public mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

.field private mPosition:I

.field private mThemeViewModel:Lapr;

.field private mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mDirType:I

    return p0
.end method

.method private handleState()V
    .locals 5

    .line 134
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 135
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v1

    .line 137
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    .line 140
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

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

    .line 152
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 153
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Laqr;->c(I)Laqt;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Laqt;->getPlayState()I

    move-result v0

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 165
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setStatus(I)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setStatus(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;
    .locals 1

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/dir/present/SongItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->music_list_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->usb_detail_music_list_item:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->handleState()V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->b()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 6

    .line 179
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

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

    .line 120
    iput p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mDirType:I

    if-eqz p1, :cond_0

    .line 122
    iput-object p3, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mInfos:Ljava/util/List;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 124
    iput p2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mPosition:I

    .line 125
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p3

    iget-object p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p3, p5}, Lbnf;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 126
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object p3

    iget-object p5, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p3, p5}, Lbnf;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 127
    iput-object p4, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mUsbMusicTreeBean:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->b()V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setStatus(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->setPlayState(I)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public updateLogo()V
    .locals 6

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicInfo:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mMusicListLayout:Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->mPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbMusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    :cond_0
    return-void
.end method

.method public updatePlayState()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->handleState()V

    return-void
.end method
