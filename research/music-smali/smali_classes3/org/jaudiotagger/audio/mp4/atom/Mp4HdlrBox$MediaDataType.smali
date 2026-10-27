.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
.super Ljava/lang/Enum;
.source "Mp4HdlrBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum APPL:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum CRSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum HINT:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum IPSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum M7SM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MDIR:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum META:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MJSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MP7B:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum MP7T:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum OCSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum ODSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum SDSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum SOUN:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

.field public static final enum VIDE:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;


# instance fields
.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 111
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v1, 0x0

    const-string v2, "ODSM"

    const-string v3, "odsm"

    const-string v4, "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->ODSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 112
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v2, 0x1

    const-string v3, "CRSM"

    const-string v4, "crsm"

    const-string v5, "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v3, v2, v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->CRSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 113
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v3, 0x2

    const-string v4, "SDSM"

    const-string v5, "sdsm"

    const-string v6, "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SDSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 114
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v4, 0x3

    const-string v5, "M7SM"

    const-string v6, "m7sm"

    const-string v7, "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v5, v4, v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->M7SM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 115
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v5, 0x4

    const-string v6, "OCSM"

    const-string v7, "ocsm"

    const-string v8, "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v6, v5, v7, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->OCSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 116
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v6, 0x5

    const-string v7, "IPSM"

    const-string v8, "ipsm"

    const-string v9, "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v7, v6, v8, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->IPSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 117
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v7, 0x6

    const-string v8, "MJSM"

    const-string v9, "mjsm"

    const-string v10, "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v8, v7, v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MJSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 118
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/4 v8, 0x7

    const-string v9, "MDIR"

    const-string v10, "mdir"

    const-string v11, "Apple Meta Data iTunes Reader"

    invoke-direct {v0, v9, v8, v10, v11}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MDIR:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 119
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v9, 0x8

    const-string v10, "MP7B"

    const-string v11, "mp7b"

    const-string v12, "MPEG-7 binary XML"

    invoke-direct {v0, v10, v9, v11, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7B:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 120
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v10, 0x9

    const-string v11, "MP7T"

    const-string v12, "mp7t"

    const-string v13, "MPEG-7 XML"

    invoke-direct {v0, v11, v10, v12, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7T:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 121
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v11, 0xa

    const-string v12, "VIDE"

    const-string v13, "vide"

    const-string v14, "Video Track"

    invoke-direct {v0, v12, v11, v13, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->VIDE:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 122
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v12, 0xb

    const-string v13, "SOUN"

    const-string v14, "soun"

    const-string v15, "Sound Track"

    invoke-direct {v0, v13, v12, v14, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SOUN:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 123
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v13, 0xc

    const-string v14, "HINT"

    const-string v15, "hint"

    const-string v12, "Hint Track"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->HINT:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 124
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v12, 0xd

    const-string v14, "APPL"

    const-string v15, "appl"

    const-string v13, "Apple specific"

    invoke-direct {v0, v14, v12, v15, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->APPL:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    .line 125
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v13, 0xe

    const-string v14, "META"

    const-string v15, "meta"

    const-string v12, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->META:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v0, 0xf

    .line 109
    new-array v0, v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    sget-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->ODSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v12, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->CRSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SDSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->M7SM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->OCSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->IPSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MJSM:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MDIR:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7B:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->MP7T:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->VIDE:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->SOUN:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->HINT:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->APPL:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->META:Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    aput-object v1, v0, v13

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

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

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->id:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .locals 1

    .line 109
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;
    .locals 1

    .line 109
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox$MediaDataType;->id:Ljava/lang/String;

    return-object v0
.end method
