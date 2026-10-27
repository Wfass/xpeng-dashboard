.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
.super Ljava/lang/Enum;
.source "Mp4FtypBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum AES_ENCRYPTED_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AAC_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_12_MPEG7_METADATA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_1:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum JVT_AVC:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum QUICKTIME_MOVIE:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

.field public static final enum THREEG_MOBILE_MP4:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 117
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v1, "ISO 14496-1"

    const/4 v2, 0x0

    const-string v3, "ISO14496_1_BASE_MEDIA"

    const-string v4, "isom"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 118
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v3, 0x1

    const-string v4, "ISO14496_12_BASE_MEDIA"

    const-string v5, "iso2"

    const-string v6, "ISO 14496-12"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 119
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v4, 0x2

    const-string v5, "ISO14496_1_VERSION_1"

    const-string v6, "mp41"

    invoke-direct {v0, v5, v4, v6, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_1:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 120
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v1, 0x3

    const-string v5, "ISO14496_1_VERSION_2"

    const-string v6, "mp42"

    const-string v7, "ISO 14496-2:Multi track with BIFS scenes"

    invoke-direct {v0, v5, v1, v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 121
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v5, 0x4

    const-string v6, "QUICKTIME_MOVIE"

    const-string v7, "qt  "

    const-string v8, "Original Quicktime"

    invoke-direct {v0, v6, v5, v7, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->QUICKTIME_MOVIE:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 122
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v6, 0x5

    const-string v7, "JVT_AVC"

    const-string v8, "avc1"

    const-string v9, "JVT"

    invoke-direct {v0, v7, v6, v8, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->JVT_AVC:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 123
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/4 v7, 0x6

    const-string v8, "THREEG_MOBILE_MP4"

    const-string v9, "MPA "

    const-string v10, "3G Mobile"

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->THREEG_MOBILE_MP4:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 124
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v8, "Apple Audio"

    const/4 v9, 0x7

    const-string v10, "APPLE_AAC_AUDIO"

    const-string v11, "M4P "

    invoke-direct {v0, v10, v9, v11, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AAC_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 125
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/16 v10, 0x8

    const-string v11, "AES_ENCRYPTED_AUDIO"

    const-string v12, "M4B "

    const-string v13, "Apple encrypted Audio"

    invoke-direct {v0, v11, v10, v12, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->AES_ENCRYPTED_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 126
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const-string v11, "mp71"

    const/16 v12, 0x9

    const-string v13, "APPLE_AUDIO"

    invoke-direct {v0, v13, v12, v11, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 127
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/16 v8, 0xa

    const-string v13, "ISO14496_12_MPEG7_METADATA"

    const-string v14, "MAIN_SYNTHESIS"

    invoke-direct {v0, v13, v8, v11, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_MPEG7_METADATA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    .line 128
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/16 v11, 0xb

    const-string v13, "APPLE_AUDIO_ONLY"

    const-string v14, "M4A "

    const-string v15, "M4A Audio"

    invoke-direct {v0, v13, v11, v14, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    const/16 v0, 0xc

    .line 115
    new-array v0, v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    sget-object v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v13, v0, v2

    sget-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_BASE_MEDIA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_1:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_1_VERSION_2:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v2, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->QUICKTIME_MOVIE:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->JVT_AVC:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->THREEG_MOBILE_MP4:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AAC_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->AES_ENCRYPTED_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->ISO14496_12_MPEG7_METADATA:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->APPLE_AUDIO_ONLY:Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    aput-object v1, v0, v11

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .locals 1

    .line 115
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;
    .locals 1

    .line 115
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox$Brand;->id:Ljava/lang/String;

    return-object v0
.end method
