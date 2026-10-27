.class public Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
.source "UsbMainActivity.java"

# interfaces
.implements Lbrq;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usbmainview"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity<",
        "Lbrq;",
        "Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;",
        ">;",
        "Lbrq;"
    }
.end annotation


# static fields
.field public static final TAB_ALBUM:I = 0x2

.field public static final TAB_FILE:I = 0x3

.field private static final TAB_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAB_NAME_ALBUM:Ljava/lang/String; = "album"

.field private static final TAB_NAME_FILE:Ljava/lang/String; = "file"

.field private static final TAB_NAME_SINGER:Ljava/lang/String; = "singer"

.field private static final TAB_NAME_SONG:Ljava/lang/String; = "song"

.field public static final TAB_SINGER:I = 0x1

.field public static final TAB_SOMG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbMainActivity"


# instance fields
.field private mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

.field private mIndex:I

.field public mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

.field private mTipsLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "song"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "singer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mIndex:I

    return p0
.end method

.method private navigateFrom3rd(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "tab"

    .line 214
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMainActivity"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 219
    :cond_2
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->TAB_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mIndex:I

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mIndex:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->selectTab(I)V

    :cond_3
    return-void
.end method

.method private searchLogo()V
    .locals 6

    .line 106
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    invoke-virtual {v0}, Lbne;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    .line 112
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 114
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_1

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;
    .locals 1

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 1

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tips_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mTipsLayout:Landroid/widget/RelativeLayout;

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->ms_top_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-void
.end method

.method public getBuildViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->getBuildViewList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->navigateFrom3rd(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->navigateFrom3rd(Landroid/content/Intent;)V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$2;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    sget-object v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->USB_MUSIC_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mTipsLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->showRtLayout(Z)V

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showLoadingTip(I)V

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->btn_test:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$1;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showData(Z)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity$3;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showLoadingTip(I)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    iget v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mIndex:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->selectTab(I)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->onBuildScene()V

    .line 196
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mTipsLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showLoadingTip(I)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showNoDataView()V
    .locals 3

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->showLoadingTip(I)V

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 168
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainActivity;->mTipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
