.class public Lcom/android/car/media/common/MediaItemMetadata;
.super Ljava/lang/Object;
.source "MediaItemMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/media/common/MediaItemMetadata$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaItemMetadata"

.field static final a:I

.field private static sPlaceHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lahs$b;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlbumTitle:Ljava/lang/String;

.field private final mArtist:Ljava/lang/String;

.field private final mArtworkKey:Lcom/android/car/media/common/MediaItemMetadata$a;

.field private final mIsBrowsable:Z

.field private final mIsPlayable:Z

.field private final mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final mQueueId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/16 v2, 0xff

    .line 60
    invoke-static {v1, v2, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/car/media/common/MediaItemMetadata;->a:I

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/car/media/common/MediaItemMetadata;->sPlaceHolders:Ljava/util/Map;

    .line 389
    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata$1;

    invoke-direct {v0}, Lcom/android/car/media/common/MediaItemMetadata$1;-><init>()V

    sput-object v0, Lcom/android/car/media/common/MediaItemMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata$a;

    invoke-direct {v0, p0}, Lcom/android/car/media/common/MediaItemMetadata$a;-><init>(Lcom/android/car/media/common/MediaItemMetadata;)V

    iput-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtworkKey:Lcom/android/car/media/common/MediaItemMetadata$a;

    .line 92
    const-class v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 93
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 7

    .line 87
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isBrowsable()Z

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->isPlayable()Z

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaDescriptionCompat;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata$a;

    invoke-direct {v0, p0}, Lcom/android/car/media/common/MediaItemMetadata$a;-><init>(Lcom/android/car/media/common/MediaItemMetadata;)V

    iput-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtworkKey:Lcom/android/car/media/common/MediaItemMetadata$a;

    .line 104
    iput-object p1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 105
    iput-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    .line 106
    iput-boolean p4, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    .line 107
    iput-boolean p3, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    .line 108
    iput-object p5, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    .line 109
    iput-object p6, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 7

    .line 75
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    const-string v0, "android.media.metadata.ALBUM"

    .line 76
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.media.metadata.ARTIST"

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)V
    .locals 7

    .line 82
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p0
.end method

.method static synthetic a(Lahs$b;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/android/car/media/common/MediaItemMetadata;->b(Lahs$b;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/android/car/media/common/MediaItemMetadata;)Landroid/net/Uri;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/car/media/common/MediaItemMetadata;->i()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lahs$b;Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs$b;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/android/car/media/common/MediaItemMetadata;->sPlaceHolders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lahs$b;->FOREGROUND:Lahs$b;

    if-ne p0, v0, :cond_0

    sget v0, Lcom/android/car/media/common/f$a;->placeholder_images:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/car/media/common/f$a;->placeholder_backgrounds:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 276
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 277
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    sget-object p1, Lcom/android/car/media/common/MediaItemMetadata;->sPlaceHolders:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object p1, Lcom/android/car/media/common/MediaItemMetadata;->sPlaceHolders:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_2

    .line 283
    :cond_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placeholders should not be empty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No placeholders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private i()Landroid/net/Uri;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 350
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    check-cast p1, Lcom/android/car/media/common/MediaItemMetadata;

    .line 352
    iget-boolean v2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    iget-boolean v3, p1, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    iget-boolean v3, p1, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    if-ne v2, v3, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/android/car/media/common/MediaItemMetadata;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/car/media/common/MediaItemMetadata;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/android/car/media/common/MediaItemMetadata;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1}, Lcom/android/car/media/common/MediaItemMetadata;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    .line 360
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Lcom/android/car/media/common/MediaItemMetadata$a;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtworkKey:Lcom/android/car/media/common/MediaItemMetadata$a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 365
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const-string v2, "-"

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Queue Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 409
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-, subtitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 411
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-, album title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-, artist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-, album art URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz v1, :cond_6

    .line 417
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 375
    iget-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mMediaDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 376
    iget-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 377
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 379
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 380
    iget-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mQueueId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    :goto_0
    iget-boolean p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsBrowsable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 383
    iget-boolean p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mIsPlayable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 384
    iget-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/android/car/media/common/MediaItemMetadata;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
