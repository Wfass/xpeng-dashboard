.class public Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "UsbMainFragment.java"

# interfaces
.implements Lbrq;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usb_main_fragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
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

.field private static final TAG:Ljava/lang/String; = "UsbMainFragment"


# instance fields
.field private mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLeftView:Landroid/view/View;

.field public mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mRightContentLayout:Landroid/widget/RelativeLayout;

.field private mTipsLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->TAB_MAP:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "song"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "singer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->TAB_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;
    .locals 1

    .line 160
    new-instance v0, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tips_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mTipsLayout:Landroid/widget/LinearLayout;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->loadingview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->fragment_usb_main:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Usb_Main_Page"

    return-object v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UsbMainFragment"

    const-string v0, "onCreate: ================"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    const-string v0, "UsbMainFragment"

    const-string v1, "onPause: =========="

    .line 174
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_USB"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    const-string v0, "UsbMainFragment"

    const-string v1, "onResume: ====== "

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_USB"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mRightContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 194
    sget v1, Lcom/xiaopeng/musicradio/usb/a$b;->left_view:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 197
    sget v1, Lcom/xiaopeng/musicradio/usb/a$b;->item_space:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mRightContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    const-string v0, "UsbMainFragment"

    const-string v1, "setView: ==========="

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 86
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->l()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mTipsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showLoadingTip(I)V

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->btn_test:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->left_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mLeftView:Landroid/view/View;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 99
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mRightContentLayout:Landroid/widget/RelativeLayout;

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->reviewOnScreenChange()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData(Z)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showLoadingTip(I)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mTipsLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLoadingTip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showLoadingTip(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showNoDataView()V
    .locals 3

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->showLoadingTip(I)V

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mContent:Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 126
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->setVisibility(I)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainFragment;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "Usb_Main_Page"

    const-string v2, "Music_Usb_SubPage_Empty"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
