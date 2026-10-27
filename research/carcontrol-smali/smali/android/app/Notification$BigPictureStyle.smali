.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPictureContentDescription:Ljava/lang/CharSequence;

.field private mPictureIcon:Landroid/graphics/drawable/Icon;

.field private mShowBigPictureWhenCollapsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7802
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    .line 7798
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7809
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    .line 7798
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7810
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method private static areIconsObviouslyDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_1

    .line 8113
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 8116
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    .line 8117
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    if-eq v2, v1, :cond_5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 8121
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 8122
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 8124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 8125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 8126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result p1

    if-eq p0, p1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public static getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.picture"

    .line 8076
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 8078
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "android.pictureIcon"

    .line 8080
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 5

    .line 8024
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8026
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    .line 8027
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8029
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v1, "android.pictureContentDescription"

    .line 8030
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8033
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    const-string v1, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8038
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.pictureIcon"

    const/4 v2, 0x0

    const-string v3, "android.picture"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 8039
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8040
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 8042
    :cond_2
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8043
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 8099
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8102
    :cond_0
    check-cast p1, Landroid/app/Notification$BigPictureStyle;

    .line 8103
    invoke-virtual {p0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/app/Notification$BigPictureStyle;->areIconsObviouslyDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    if-eqz p1, :cond_0

    .line 7887
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    return-object p1
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 1

    const/4 v0, 0x1

    .line 7895
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7896
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7858
    :cond_0
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    .line 7867
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getBigPicture()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 7847
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 7

    .line 7985
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7986
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 7987
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v3}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 7991
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7992
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iput-object v1, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 7995
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, v3, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v3}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    sget v4, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 7996
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 7997
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->access$3100(Landroid/app/Notification$Builder;)I

    move-result v4

    invoke-virtual {p0, v4, v3, v1}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 7999
    iget-boolean v4, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v4, :cond_1

    .line 8000
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 8001
    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 8000
    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x1020558

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8002
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v1, v5, v3}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    const/4 v3, 0x0

    .line 8003
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8006
    :cond_1
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v3, :cond_2

    .line 8007
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 8008
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iput-object v2, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8011
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const v2, 0x1020278

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 8013
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 8014
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_3
    return-object v1
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 7947
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7951
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object p1, p1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 7952
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7953
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7954
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 7955
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$2900(Landroid/app/Notification$Builder;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 7948
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 7963
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7967
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object p1, p1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {p1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7968
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7969
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7970
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 7971
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3000(Landroid/app/Notification$Builder;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 7964
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public purgeResources()V
    .locals 1

    .line 7908
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 7909
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 7910
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 7912
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 7913
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_1
    return-void
.end method

.method public reduceImageSizes(Landroid/content/Context;)V
    .locals 4

    .line 7922
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 7923
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7924
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 7925
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    const v1, 0x10501df

    goto :goto_0

    :cond_0
    const v1, 0x10501de

    .line 7926
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v0, :cond_1

    const v2, 0x10501e1

    goto :goto_1

    :cond_1
    const v2, 0x10501e0

    .line 7929
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7932
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7934
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const v0, 0x1050211

    goto :goto_2

    :cond_3
    const v0, 0x1050210

    .line 7935
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7938
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_4
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 8052
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.largeIcon.big"

    .line 8054
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 8055
    iput-boolean v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 8056
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    const-string v0, "android.pictureContentDescription"

    .line 8059
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8061
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    :cond_1
    const-string v0, "android.showBigPictureWhenCollapsed"

    .line 8064
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    .line 8066
    invoke-static {p1}, Landroid/app/Notification$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    .line 7819
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    .line 7838
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    .line 7828
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;
    .locals 0

    .line 7878
    iput-boolean p1, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    return-object p0
.end method
