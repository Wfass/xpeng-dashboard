.class public final Landroid/app/Notification$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .locals 2

    .line 10845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Bubble requires non-null pending intent"

    .line 10847
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Bubbles require non-null icon"

    .line 10850
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10852
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 10853
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    .line 10854
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10858
    :cond_0
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10859
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10822
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    return-void

    .line 10820
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bubble requires a non-null shortcut id"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroid/app/Notification$BubbleMetadata;
    .locals 10

    .line 11077
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "Must supply pending intent or shortcut to bubble"

    .line 11078
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    if-nez v0, :cond_1

    .line 11081
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    .line 11082
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11085
    :cond_1
    new-instance v0, Landroid/app/Notification$BubbleMetadata;

    iget-object v3, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v6, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v7, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget-object v8, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification$1;)V

    .line 11087
    iget v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    return-object v0
.end method

.method public createIntentBubble(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 10892
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 10893
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    .line 10894
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 10898
    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 10899
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10900
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0

    .line 10890
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bubbles require non-null icon"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10887
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bubble requires non-null pending intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createShortcutBubble(Ljava/lang/String;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 10871
    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10872
    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10874
    :cond_0
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 11022
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    .line 11066
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 10980
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 10981
    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    return-object p0
.end method

.method public setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    .line 11002
    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    const/4 p1, 0x0

    .line 11003
    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 0

    if-eqz p2, :cond_0

    .line 11096
    iget p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    goto :goto_0

    .line 11098
    :cond_0
    iget p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 2

    .line 10946
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Bubbles require non-null icon"

    .line 10952
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10954
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 10955
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    .line 10956
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10960
    :cond_0
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0

    .line 10947
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    .line 10917
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Bubble requires non-null pending intent"

    .line 10923
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10925
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0

    .line 10918
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 11038
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    return-object p0
.end method

.method public setSuppressableBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .locals 1

    const/4 v0, 0x4

    .line 11055
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    return-object p0
.end method
