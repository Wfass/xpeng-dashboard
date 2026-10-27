.class synthetic Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;
.super Ljava/lang/Object;
.source "VorbisCommentTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

.field static final synthetic $SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 870
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->values()[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    sget-object v3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_ALBUMARTIST_THEN_JRIVER:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistReadOptions:[I

    sget-object v5, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->READ_JRIVER_THEN_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistReadOptions;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 421
    :catch_3
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->values()[Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    :try_start_4
    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    sget-object v5, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    invoke-virtual {v5}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_ALBUMARTIST_AND_DELETE_JRIVER_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    invoke-virtual {v4}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_JRIVER_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_JRIVER_ALBUMARTIST_AND_DELETE_ALBUMARTIST:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag$1;->$SwitchMap$org$jaudiotagger$tag$vorbiscomment$VorbisAlbumArtistSaveOptions:[I

    sget-object v1, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->WRITE_BOTH:Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisAlbumArtistSaveOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
