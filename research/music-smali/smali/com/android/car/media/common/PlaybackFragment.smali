.class public Lcom/android/car/media/common/PlaybackFragment;
.super Landroidx/fragment/app/Fragment;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/media/common/PlaybackFragment$a;
    }
.end annotation


# static fields
.field public static final MEDIA_SOURCE_MODE_PLAYBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlaybackFragmentWidget"


# instance fields
.field private mAlbumArtBinder:Lahs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahs<",
            "Lcom/android/car/media/common/MediaItemMetadata$a;",
            ">;"
        }
    .end annotation
.end field

.field private mAppSelectorIntent:Landroid/content/Intent;

.field private mCar:Landroid/car/Car;

.field private mCarPackageManager:Landroid/car/content/pm/CarPackageManager;

.field private mErrorsHelper:Lcom/android/car/media/common/e;

.field private mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

.field private mIsFatalError:Z

.field private mMediaSourceViewModel:Lcom/android/car/media/common/source/d;

.field private mPlaybackErrorViewController:Lcom/android/car/media/common/d;

.field private mPlaybackViewModel:Laid;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/media/common/PlaybackFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/car/media/common/PlaybackFragment;->mIsFatalError:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/car/media/common/PlaybackFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mIsFatalError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/car/media/common/PlaybackFragment;)Lcom/android/car/media/common/PlaybackFragment$a;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/car/media/common/PlaybackFragment;)Landroid/car/content/pm/CarPackageManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/car/media/common/PlaybackFragment;->mCarPackageManager:Landroid/car/content/pm/CarPackageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/car/media/common/PlaybackFragment;)Lcom/android/car/media/common/d;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackErrorViewController:Lcom/android/car/media/common/d;

    return-object p0
.end method

.method public static synthetic lambda$IHjEgwTKYMVQIeiz5E7IZssyr7A(Lcom/android/car/media/common/PlaybackFragment;Lcom/android/car/media/common/source/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/PlaybackFragment;->onMediaSourceChanged(Lcom/android/car/media/common/source/b;)V

    return-void
.end method

.method public static synthetic lambda$RUwYH3NJU4wqMdaxJh8Y2gDrVY8(Lcom/android/car/media/common/PlaybackFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/media/common/PlaybackFragment;->onBrowseTreeHasChildrenChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$1(ZLandroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 129
    sget p0, Lcom/android/car/media/common/f$f;->app_selector:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/16 p0, 0x8

    .line 133
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$3(Landroid/util/Size;Lcom/android/car/apps/common/CrossfadeImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 160
    invoke-static {p2, p0}, Lcom/android/car/apps/common/a;->a(Landroid/graphics/drawable/Drawable;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p2, 0x1

    .line 161
    invoke-virtual {p1, p0, p2}, Lcom/android/car/apps/common/CrossfadeImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private onBrowseTreeHasChildrenChanged(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mErrorsHelper:Lcom/android/car/media/common/e;

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    invoke-virtual {p1}, Laid;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laid$d;

    .line 207
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mErrorsHelper:Lcom/android/car/media/common/e;

    const/4 v1, 0x0

    const-string v2, "PlaybackFragmentWidget"

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/car/media/common/e;->a(Ljava/lang/String;Laid$d;Z)V

    :cond_0
    return-void
.end method

.method private onMediaSourceChanged(Lcom/android/car/media/common/source/b;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackErrorViewController:Lcom/android/car/media/common/d;

    invoke-virtual {p1}, Lcom/android/car/media/common/d;->b()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$PlaybackFragment(Lcom/android/car/media/common/PlaybackControlsActionBar;Laid$d;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p2}, Laid$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-static {p1, v1}, Laia;->a(Landroid/view/View;Z)V

    .line 108
    iget-object p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mErrorsHelper:Lcom/android/car/media/common/e;

    if-eqz p1, :cond_1

    const-string v1, "PlaybackFragmentWidget"

    .line 109
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/car/media/common/e;->a(Ljava/lang/String;Laid$d;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onCreateView$2$PlaybackFragment(Landroid/view/View;)V
    .locals 1

    .line 149
    iget-boolean p1, p0, Lcom/android/car/media/common/PlaybackFragment;->mIsFatalError:Z

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.car.intent.action.MEDIA_TEMPLATE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/car/media/common/PlaybackFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$4$PlaybackFragment(Lcom/android/car/media/common/MediaItemMetadata;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mAlbumArtBinder:Lahs;

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->f()Lcom/android/car/media/common/MediaItemMetadata$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 165
    :goto_0
    invoke-virtual {v0, v1, p1}, Lahs;->a(Landroid/content/Context;Lahs$a;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$PlaybackFragment(Landroid/view/View;)V
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mAppSelectorIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 86
    invoke-static {p3}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mCar:Landroid/car/Car;

    .line 87
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mCar:Landroid/car/Car;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/content/pm/CarPackageManager;

    iput-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mCarPackageManager:Landroid/car/content/pm/CarPackageManager;

    .line 89
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Laid;->a(Landroid/app/Application;I)Laid;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    .line 91
    invoke-static {v0, v1}, Lcom/android/car/media/common/source/d;->a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/media/common/PlaybackFragment;->mMediaSourceViewModel:Lcom/android/car/media/common/source/d;

    .line 92
    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/car/media/common/source/b;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/media/common/PlaybackFragment;->mAppSelectorIntent:Landroid/content/Intent;

    .line 94
    invoke-static {p3}, Landroidx/lifecycle/ab;->a(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/aa;

    move-result-object v2

    const-class v3, Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/aa;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object v2

    check-cast v2, Lcom/android/car/media/common/PlaybackFragment$a;

    iput-object v2, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    .line 95
    iget-object v2, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    iget-object v3, p0, Lcom/android/car/media/common/PlaybackFragment;->mMediaSourceViewModel:Lcom/android/car/media/common/source/d;

    iget-object v4, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    .line 96
    invoke-static {v0, v1}, Laic;->a(Landroid/app/Application;I)Laic;

    move-result-object v0

    .line 95
    invoke-virtual {v2, p3, v3, v4, v0}, Lcom/android/car/media/common/PlaybackFragment$a;->a(Landroidx/fragment/app/FragmentActivity;Lcom/android/car/media/common/source/d;Laid;Laic;)V

    .line 98
    sget v0, Lcom/android/car/media/common/f$h;->playback_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/android/car/media/common/d;

    invoke-direct {p2, p1}, Lcom/android/car/media/common/d;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackErrorViewController:Lcom/android/car/media/common/d;

    .line 102
    sget p2, Lcom/android/car/media/common/f$f;->playback_controls:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/car/media/common/PlaybackControlsActionBar;

    .line 103
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/android/car/media/common/PlaybackControlsActionBar;->a(Laid;Landroidx/lifecycle/n;)V

    .line 104
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    invoke-virtual {v0}, Laid;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;

    invoke-direct {v3, p0, p2}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$XXrNRvLNetZNvIXSZY-haoKsusw;-><init>(Lcom/android/car/media/common/PlaybackFragment;Lcom/android/car/media/common/PlaybackControlsActionBar;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 113
    sget p2, Lcom/android/car/media/common/f$f;->app_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {v0}, Lcom/android/car/media/common/PlaybackFragment$a;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;

    invoke-direct {v3, p2}, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 116
    sget p2, Lcom/android/car/media/common/f$f;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {v0}, Lcom/android/car/media/common/PlaybackFragment$a;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;

    invoke-direct {v3, p2}, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 119
    sget p2, Lcom/android/car/media/common/f$f;->subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {v0}, Lcom/android/car/media/common/PlaybackFragment$a;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;

    invoke-direct {v3, p2}, Lcom/android/car/media/common/-$$Lambda$RvIl0WhwpWXv9NtkhE_M383MzRA;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/car/media/common/f$c;->use_media_source_logo_for_app_selector:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 125
    sget v0, Lcom/android/car/media/common/f$f;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    sget v2, Lcom/android/car/media/common/f$f;->app_selector_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {v3}, Lcom/android/car/media/common/PlaybackFragment$a;->c()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v4

    new-instance v5, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;

    invoke-direct {v5, p2, v2, v0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$APhxhNehpSTgDijfSEU0Gd9eePw;-><init>(ZLandroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 139
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mInnerViewModel:Lcom/android/car/media/common/PlaybackFragment$a;

    invoke-virtual {p2}, Lcom/android/car/media/common/PlaybackFragment$a;->g()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v0

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$RUwYH3NJU4wqMdaxJh8Y2gDrVY8;

    invoke-direct {v3, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$RUwYH3NJU4wqMdaxJh8Y2gDrVY8;-><init>(Lcom/android/car/media/common/PlaybackFragment;)V

    invoke-virtual {p2, v0, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 142
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mMediaSourceViewModel:Lcom/android/car/media/common/source/d;

    invoke-virtual {p2}, Lcom/android/car/media/common/source/d;->b()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v0

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$IHjEgwTKYMVQIeiz5E7IZssyr7A;

    invoke-direct {v3, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$IHjEgwTKYMVQIeiz5E7IZssyr7A;-><init>(Lcom/android/car/media/common/PlaybackFragment;)V

    invoke-virtual {p2, v0, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 145
    sget p2, Lcom/android/car/media/common/f$f;->playback_scrim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 146
    new-instance v0, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$Bi31baoShPL9pyCkSYr7H7p5hNo;

    invoke-direct {v0, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$Bi31baoShPL9pyCkSYr7H7p5hNo;-><init>(Lcom/android/car/media/common/PlaybackFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget p2, Lcom/android/car/media/common/f$f;->album_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/car/apps/common/CrossfadeImageView;

    .line 155
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/car/media/common/f$g;->media_items_bitmap_max_size_px:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 156
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v0}, Landroid/util/Size;-><init>(II)V

    .line 157
    new-instance v0, Lahs;

    sget-object v4, Lahs$b;->FOREGROUND:Lahs$b;

    new-instance v5, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;

    invoke-direct {v5, v3, p2}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$yUHesymEDEXffC0Ksar2xXo_2mc;-><init>(Landroid/util/Size;Lcom/android/car/apps/common/CrossfadeImageView;)V

    invoke-direct {v0, v4, v3, v5}, Lahs;-><init>(Lahs$b;Landroid/util/Size;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mAlbumArtBinder:Lahs;

    .line 164
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mPlaybackViewModel:Laid;

    invoke-virtual {p2}, Laid;->c()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/car/media/common/PlaybackFragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v0

    new-instance v3, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$m4sF54OgoF5IqVkvaD6zvILYyU0;

    invoke-direct {v3, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$m4sF54OgoF5IqVkvaD6zvILYyU0;-><init>(Lcom/android/car/media/common/PlaybackFragment;)V

    invoke-virtual {p2, v0, v3}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 167
    iget-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mAppSelectorIntent:Landroid/content/Intent;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    new-instance p2, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$GagU3OLA1RFkb3m0kKdULUtryjk;

    invoke-direct {p2, p0}, Lcom/android/car/media/common/-$$Lambda$PlaybackFragment$GagU3OLA1RFkb3m0kKdULUtryjk;-><init>(Lcom/android/car/media/common/PlaybackFragment;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance p2, Lcom/android/car/media/common/PlaybackFragment$1;

    invoke-direct {p2, p0, p3}, Lcom/android/car/media/common/PlaybackFragment$1;-><init>(Lcom/android/car/media/common/PlaybackFragment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/media/common/PlaybackFragment;->mErrorsHelper:Lcom/android/car/media/common/e;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 200
    iget-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/car/media/common/PlaybackFragment;->mErrorsHelper:Lcom/android/car/media/common/e;

    return-void
.end method
