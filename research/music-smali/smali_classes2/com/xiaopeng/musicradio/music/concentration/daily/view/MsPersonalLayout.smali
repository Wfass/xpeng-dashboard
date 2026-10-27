.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsPersonalLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsPersonalLayout"


# instance fields
.field private mAccountType:I

.field private mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLastVuiPlay:Z

.field private mPersonalContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mPersonalIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mPersonalLogoUrl0:Ljava/lang/String;

.field private mPersonalLogoUrl1:Ljava/lang/String;

.field private mPersonalLogoUrl2:Ljava/lang/String;

.field private mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mLastVuiPlay:Z

    .line 69
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 45
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    const/4 p3, 0x0

    .line 206
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mLastVuiPlay:Z

    .line 74
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private refreshLogo()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    sget v3, Lbez$c;->pic_covers_music_220:I

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    sget v3, Lbez$c;->pic_covers_music_220:I

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_2
    return-void
.end method

.method private showLoadingTip(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;
    .locals 1

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 85
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 86
    sget v0, Lbez$d;->personal_img_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 87
    sget v0, Lbez$d;->personal_img_two:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 88
    sget v0, Lbez$d;->personal_img_three:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 89
    sget v0, Lbez$d;->personal_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 90
    sget v0, Lbez$d;->personal_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 92
    sget v0, Lbez$d;->personal_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 93
    sget v0, Lbez$d;->personal_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_personal_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 98
    sget v0, Lbez$d;->daily_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 128
    sget v0, Lbez$f;->ms_layout_personal:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->showLoadingTip(I)V

    .line 158
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 160
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 162
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    .line 163
    sget-object v3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/16 v5, 0x3c

    sget v6, Lbez$c;->img_blur_810:I

    const/16 v7, 0x320

    const/16 v8, 0x320

    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static/range {v3 .. v9}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;IIIILandroid/widget/ImageView;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    sget v3, Lbez$c;->pic_covers_music_220:I

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 167
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl1:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgTwo:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalLogoUrl2:Ljava/lang/String;

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 175
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->showNoDataView(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 246
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 254
    :cond_1
    :goto_0
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mAccountType:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->setMusicAccountResource(I)V

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->refreshLogo()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reload()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResource(I)V
    .locals 1

    .line 102
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mAccountType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_logo_kugou_white:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->personal_qq_txt:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->img_banner_cloud_logo:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->personal_netease_txt:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateRadioPlayState(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 212
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    move v0, v1

    goto :goto_0

    .line 215
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 231
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 233
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method
