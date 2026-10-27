.class public final enum Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
.super Ljava/lang/Enum;
.source "Mp4ContentTypeValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum AUDIO_BOOK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKLET:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKMARK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MOVIE:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MUSIC_VIDEO:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum NORMAL:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum SHORT_FILM:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum TV_SHOW:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v1, 0x0

    const-string v2, "MOVIE"

    const-string v3, "Movie"

    invoke-direct {v0, v2, v1, v3, v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    const-string v4, "Normal"

    invoke-direct {v0, v3, v2, v4, v2}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v3, 0x2

    const-string v4, "AUDIO_BOOK"

    const-string v5, "AudioBook"

    invoke-direct {v0, v4, v3, v5, v3}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "BOOKMARK"

    const-string v7, "Whacked Bookmark"

    invoke-direct {v0, v6, v4, v7, v5}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v6, 0x4

    const/4 v7, 0x6

    const-string v8, "MUSIC_VIDEO"

    const-string v9, "Music Video"

    invoke-direct {v0, v8, v6, v9, v7}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v8, "SHORT_FILM"

    const-string v9, "Short Film"

    const/16 v10, 0x9

    invoke-direct {v0, v8, v5, v9, v10}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 17
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v8, "TV_SHOW"

    const-string v9, "TV Show"

    const/16 v10, 0xa

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    .line 18
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/4 v8, 0x7

    const-string v9, "BOOKLET"

    const-string v10, "Booklet"

    const/16 v11, 0xb

    invoke-direct {v0, v9, v8, v10, v11}, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v9, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v9, v0, v1

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v8

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    .line 31
    iput p4, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 1

    .line 9
    const-class v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 1

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    return v0
.end method

.method public getIdAsString()Ljava/lang/String;
    .locals 1

    .line 49
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
