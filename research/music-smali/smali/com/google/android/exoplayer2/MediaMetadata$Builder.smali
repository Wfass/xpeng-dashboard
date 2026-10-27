.class public final Lcom/google/android/exoplayer2/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private albumArtist:Ljava/lang/CharSequence;

.field private albumTitle:Ljava/lang/CharSequence;

.field private artist:Ljava/lang/CharSequence;

.field private artworkData:[B

.field private artworkDataType:Ljava/lang/Integer;

.field private artworkUri:Landroid/net/Uri;

.field private compilation:Ljava/lang/CharSequence;

.field private composer:Ljava/lang/CharSequence;

.field private conductor:Ljava/lang/CharSequence;

.field private description:Ljava/lang/CharSequence;

.field private discNumber:Ljava/lang/Integer;

.field private displayTitle:Ljava/lang/CharSequence;

.field private extras:Landroid/os/Bundle;

.field private folderType:Ljava/lang/Integer;

.field private genre:Ljava/lang/CharSequence;

.field private isPlayable:Ljava/lang/Boolean;

.field private recordingDay:Ljava/lang/Integer;

.field private recordingMonth:Ljava/lang/Integer;

.field private recordingYear:Ljava/lang/Integer;

.field private releaseDay:Ljava/lang/Integer;

.field private releaseMonth:Ljava/lang/Integer;

.field private releaseYear:Ljava/lang/Integer;

.field private station:Ljava/lang/CharSequence;

.field private subtitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private totalDiscCount:Ljava/lang/Integer;

.field private totalTrackCount:Ljava/lang/Integer;

.field private trackNumber:Ljava/lang/Integer;

.field private writer:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    .line 87
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    .line 88
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 89
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 90
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    .line 91
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    .line 92
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    .line 94
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    .line 95
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    .line 96
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    .line 97
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    .line 98
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    .line 99
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    .line 100
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    .line 101
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    .line 103
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    .line 104
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    .line 109
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/MediaMetadata$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/net/Uri;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)[B
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 2

    .line 478
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;-><init>(Lcom/google/android/exoplayer2/MediaMetadata$Builder;Lcom/google/android/exoplayer2/MediaMetadata$1;)V

    return-object v0
.end method

.method public maybeSetArtworkData([BI)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    :cond_1
    return-object p0
.end method

.method public populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 385
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 388
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artist:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 391
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 394
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 395
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 397
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 398
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 400
    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 401
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 403
    :cond_6
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 404
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->description:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 406
    :cond_7
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_8

    .line 407
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkData:[B

    iget-object v1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 409
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->artworkUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 412
    :cond_9
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 413
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 415
    :cond_a
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 416
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 418
    :cond_b
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 419
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->folderType:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 421
    :cond_c
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 422
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 424
    :cond_d
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 425
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->year:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 427
    :cond_e
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 428
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 430
    :cond_f
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 431
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 433
    :cond_10
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 434
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 436
    :cond_11
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 437
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 439
    :cond_12
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 440
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 442
    :cond_13
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 443
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 445
    :cond_14
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 446
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->writer:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 448
    :cond_15
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    .line 449
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->composer:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 451
    :cond_16
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    .line 452
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 454
    :cond_17
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 455
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->discNumber:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 457
    :cond_18
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 458
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 460
    :cond_19
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 461
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->genre:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 463
    :cond_1a
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 464
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 466
    :cond_1b
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    .line 467
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->station:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    .line 469
    :cond_1c
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    .line 470
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaMetadata;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    :cond_1d
    return-object p0
.end method

.method public populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 352
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 353
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 354
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaMetadata$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 370
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 371
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    move v3, v0

    .line 372
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 373
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 374
    invoke-interface {v4, p0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAlbumArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setAlbumTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtist(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setArtworkData([B)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArtworkData([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkData:[B

    .line 175
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setArtworkUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setCompilation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setComposer(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setConductor(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDiscNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDisplayTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFolderType(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setGenre(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIsPlayable(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRecordingDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseDay(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseMonth(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setReleaseYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStation(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTotalDiscCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTotalTrackCount(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTrackNumber(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public setWriter(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p1

    return-object p1
.end method
