.class public final enum Lorg/jaudiotagger/audio/SupportedFileFormat;
.super Ljava/lang/Enum;
.source "SupportedFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/SupportedFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

.field public static final enum WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;


# instance fields
.field private filesuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v1, 0x0

    const-string v2, "OGG"

    const-string v3, "ogg"

    invoke-direct {v0, v2, v1, v3}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 10
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v2, 0x1

    const-string v3, "MP3"

    const-string v4, "mp3"

    invoke-direct {v0, v3, v2, v4}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 11
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v3, 0x2

    const-string v4, "FLAC"

    const-string v5, "flac"

    invoke-direct {v0, v4, v3, v5}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 12
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v4, 0x3

    const-string v5, "MP4"

    const-string v6, "mp4"

    invoke-direct {v0, v5, v4, v6}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 13
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v5, 0x4

    const-string v6, "M4A"

    const-string v7, "m4a"

    invoke-direct {v0, v6, v5, v7}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 14
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v6, 0x5

    const-string v7, "M4P"

    const-string v8, "m4p"

    invoke-direct {v0, v7, v6, v8}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 15
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v7, 0x6

    const-string v8, "WMA"

    const-string v9, "wma"

    invoke-direct {v0, v8, v7, v9}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 16
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/4 v8, 0x7

    const-string v9, "WAV"

    const-string v10, "wav"

    invoke-direct {v0, v9, v8, v10}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v9, 0x8

    const-string v10, "RA"

    const-string v11, "ra"

    invoke-direct {v0, v10, v9, v11}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v10, 0x9

    const-string v11, "RM"

    const-string v12, "rm"

    invoke-direct {v0, v11, v10, v12}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 19
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v11, 0xa

    const-string v12, "M4B"

    const-string v13, "m4b"

    invoke-direct {v0, v12, v11, v13}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 20
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v12, 0xb

    const-string v13, "AIF"

    const-string v14, "aif"

    invoke-direct {v0, v13, v12, v14}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 21
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v13, 0xc

    const-string v14, "AIFF"

    const-string v15, "aiff"

    invoke-direct {v0, v14, v13, v15}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 22
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v14, 0xd

    const-string v15, "AIFC"

    const-string v13, "aifc"

    invoke-direct {v0, v15, v14, v13}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    .line 23
    new-instance v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v13, 0xe

    const-string v15, "DSF"

    const-string v14, "dsf"

    invoke-direct {v0, v15, v13, v14}, Lorg/jaudiotagger/audio/SupportedFileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v0, 0xf

    .line 7
    new-array v0, v0, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    sget-object v14, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v14, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP3:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4B:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v12

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    aput-object v1, v0, v13

    sput-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/SupportedFileFormat;
    .locals 1

    .line 7
    const-class v0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/SupportedFileFormat;
    .locals 1

    .line 7
    sget-object v0, Lorg/jaudiotagger/audio/SupportedFileFormat;->$VALUES:[Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/SupportedFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/SupportedFileFormat;

    return-object v0
.end method


# virtual methods
.method public getFilesuffix()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jaudiotagger/audio/SupportedFileFormat;->filesuffix:Ljava/lang/String;

    return-object v0
.end method
