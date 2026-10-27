.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3

.field private static final MEDIA_BUTTON_IDS:[I


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 9499
    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1020217
        0x1020218
        0x1020219
        0x102021a
        0x102021b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 9510
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    .line 9507
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9517
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    const/4 v0, 0x0

    .line 9507
    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 9518
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method

.method private bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 4

    .line 9620
    iget-object v0, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 9621
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9622
    invoke-virtual {p3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 9626
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p4}, Landroid/app/Notification$Builder;->access$4800(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    .line 9628
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 9631
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p4}, Landroid/app/Notification$Builder;->access$4900(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Notification$Colors;->getRippleAlpha()I

    move-result p4

    .line 9632
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 9633
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 9632
    invoke-static {p4, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    .line 9634
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/widget/RemoteViews;->setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V

    if-nez v0, :cond_1

    .line 9637
    iget-object p4, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, p4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 9639
    :cond_1
    iget-object p3, p3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 9581
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9583
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    const-string v1, "android.mediaSession"

    .line 9584
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9586
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    const-string v1, "android.compactActions"

    .line 9587
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 9611
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1

    .line 9547
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 9548
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "transport"

    .line 9549
    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    .line 9567
    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    .line 9559
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    .line 9575
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method protected makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 8

    .line 9685
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9686
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 9687
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    const/4 v3, 0x1

    .line 9688
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9689
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9690
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 9691
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v5, 0x10900ae

    invoke-static {v4, v5, v2, v3}, Landroid/app/Notification$Builder;->access$5000(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    if-ge v5, v0, :cond_0

    .line 9696
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9697
    invoke-static {v7}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 9696
    invoke-direct {p0, v4, v6, v7, v2}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_1

    .line 9699
    :cond_0
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9702
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, p1, v2, v3}, Landroid/app/Notification;->access$2400(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-object v4
.end method

.method protected makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 10

    .line 9644
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9645
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 9646
    :cond_0
    array-length v1, v1

    :goto_0
    const/4 v3, 0x3

    .line 9645
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x1

    if-gt v1, v0, :cond_8

    .line 9653
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 9654
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    if-le v1, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    .line 9655
    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    if-le v1, v4, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v2

    .line 9656
    :goto_2
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 9657
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    if-lez v1, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v2

    .line 9658
    :goto_3
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 9659
    invoke-virtual {v0, v4}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9660
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 9661
    new-instance v5, Landroid/app/Notification$TemplateBindResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 9662
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10900b6

    invoke-static {v7, v8, v0, v6}, Landroid/app/Notification$Builder;->access$5000(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v6

    move v7, v2

    :goto_4
    const/16 v8, 0x8

    if-ge v7, v3, :cond_5

    if-ge v7, v1, :cond_4

    .line 9668
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$Action;

    .line 9669
    sget-object v9, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v9, v9, v7

    invoke-direct {p0, v6, v9, v8, v0}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_5

    .line 9671
    :cond_4
    sget-object v9, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v9, v9, v7

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    const v1, 0x10203ef

    if-eqz v4, :cond_7

    goto :goto_7

    :cond_7
    move v2, v8

    .line 9676
    :goto_7
    invoke-virtual {v6, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9679
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, p1, v0, v5}, Landroid/app/Notification;->access$2400(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    return-object v6

    .line 9648
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 9650
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string/jumbo v0, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 9648
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 9596
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.mediaSession"

    .line 9598
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9599
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_0
    const-string v0, "android.compactActions"

    .line 9601
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9602
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0

    .line 9537
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0

    .line 9528
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    return-object p0
.end method
