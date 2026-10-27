.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# static fields
.field private static final NUMBER_OF_HISTORY_ALLOWED_UNTIL_REDUCTION:I = 0x1


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9277
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9275
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9284
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9275
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 9285
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 9324
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9326
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 9327
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1

    .line 9309
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 9425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 9428
    :cond_0
    check-cast p1, Landroid/app/Notification$InboxStyle;

    .line 9430
    invoke-virtual {p0}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v1

    .line 9431
    invoke-virtual {p1}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object p1

    .line 9432
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 9433
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 9439
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9440
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9438
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public getLines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 9317
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 14

    .line 9347
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 9348
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9349
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 9350
    new-instance v2, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v2, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$1;)V

    .line 9351
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->access$4700(Landroid/app/Notification$Builder;)I

    move-result v1

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$InboxStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v2, 0x7

    new-array v9, v2, [I

    .line 9353
    fill-array-data v9, :array_0

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_0

    .line 9357
    aget v4, v9, v3

    const/16 v5, 0x8

    .line 9358
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9362
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 9367
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x6

    .line 9370
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9371
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v4, Landroid/app/RemoteInputHistoryItem;

    const-string v5, "android.remoteInputHistoryItems"

    .line 9370
    invoke-static {v3, v5, v4}, Landroid/app/Notification;->access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/app/RemoteInputHistoryItem;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 9373
    array-length v5, v3

    if-le v5, v4, :cond_3

    .line 9377
    array-length v3, v3

    const/4 v5, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9379
    iget-object v5, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    if-le v5, v2, :cond_3

    sub-int/2addr v5, v2

    .line 9383
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    sub-int/2addr v2, v5

    goto :goto_1

    :cond_2
    move v12, v4

    move v13, v5

    move v4, v10

    goto :goto_2

    :cond_3
    :goto_1
    move v12, v4

    move v4, v10

    move v13, v4

    .line 9393
    :goto_2
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_6

    if-ge v13, v2, :cond_6

    .line 9394
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 9395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 9396
    aget v4, v9, v13

    invoke-virtual {v1, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9397
    aget v4, v9, v13

    iget-object v5, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9398
    invoke-static {v6, v3}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/app/Notification$Builder;->access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9397
    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9399
    iget-object v3, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    aget v4, v9, v13

    invoke-static {v3, v1, v4, v0}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9400
    aget v4, v9, v13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    if-eqz v12, :cond_4

    .line 9402
    aget v3, v9, v13

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v10

    :goto_3
    move v12, v10

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 9412
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050215

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    .line 9414
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_7
    return-object v1

    nop

    :array_0
    .array-data 4
        0x1020392
        0x1020393
        0x1020394
        0x1020395
        0x1020396
        0x1020397
        0x1020398
    .end array-data
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 9335
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9337
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "android.textLines"

    .line 9338
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9339
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0

    .line 9293
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0

    .line 9301
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
