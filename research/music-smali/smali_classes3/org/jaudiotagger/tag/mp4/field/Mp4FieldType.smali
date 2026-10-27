.class public final enum Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
.super Ljava/lang/Enum;
.source "Mp4FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DATETIME:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum DURATION:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GENRES:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum GUID:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum HTML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum ISRC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum MI3P:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum RIAAPA:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_JAPANESE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_UTF16BE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum UPC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum URL:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field public static final enum XML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

.field private static coverArtTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileClassIdFiedTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileClassId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v1, 0x0

    const-string v2, "IMPLICIT"

    invoke-direct {v0, v2, v1, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2, v2}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v3, 0x2

    const-string v4, "TEXT_UTF16BE"

    invoke-direct {v0, v4, v3, v3}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v4, 0x3

    const-string v5, "TEXT_JAPANESE"

    invoke-direct {v0, v5, v4, v4}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v5, 0x6

    const-string v6, "HTML"

    const/4 v7, 0x4

    invoke-direct {v0, v6, v7, v5}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->HTML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v6, 0x7

    const-string v7, "XML"

    const/4 v8, 0x5

    invoke-direct {v0, v7, v8, v6}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->XML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 17
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v7, 0x8

    const-string v8, "GUID"

    invoke-direct {v0, v8, v5, v7}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GUID:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 18
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v8, 0x9

    const-string v9, "ISRC"

    invoke-direct {v0, v9, v6, v8}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->ISRC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 19
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v9, 0xa

    const-string v10, "MI3P"

    invoke-direct {v0, v10, v7, v9}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->MI3P:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 20
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v10, 0xc

    const-string v11, "COVERART_GIF"

    invoke-direct {v0, v11, v8, v10}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 21
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v11, 0xd

    const-string v12, "COVERART_JPEG"

    invoke-direct {v0, v12, v9, v11}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 22
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v12, 0xe

    const-string v13, "COVERART_PNG"

    const/16 v14, 0xb

    invoke-direct {v0, v13, v14, v12}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 23
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v13, 0xf

    const-string v14, "URL"

    invoke-direct {v0, v14, v10, v13}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->URL:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 24
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v14, 0x10

    const-string v15, "DURATION"

    invoke-direct {v0, v15, v11, v14}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DURATION:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 25
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v15, 0x11

    const-string v11, "DATETIME"

    invoke-direct {v0, v11, v12, v15}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DATETIME:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 26
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const-string v11, "GENRES"

    const/16 v12, 0x12

    invoke-direct {v0, v11, v13, v12}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GENRES:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 27
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const-string v11, "INTEGER"

    const/16 v12, 0x15

    invoke-direct {v0, v11, v14, v12}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 28
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const-string v11, "RIAAPA"

    const/16 v12, 0x18

    invoke-direct {v0, v11, v15, v12}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->RIAAPA:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 29
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const-string v11, "UPC"

    const/16 v12, 0x12

    const/16 v15, 0x19

    invoke-direct {v0, v11, v12, v15}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->UPC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 30
    new-instance v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const-string v11, "COVERART_BMP"

    const/16 v12, 0x13

    const/16 v15, 0x1b

    invoke-direct {v0, v11, v12, v15}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v0, 0x14

    .line 9
    new-array v0, v0, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v11, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v11, v0, v1

    sget-object v11, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v11, v0, v2

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->HTML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->XML:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GUID:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v5

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->ISRC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v6

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->MI3P:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v7

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v8

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v9

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0xb

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->URL:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v10

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DURATION:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->DATETIME:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->GENRES:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v13

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    aput-object v2, v0, v14

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->RIAAPA:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->UPC:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 53
    sget-object v4, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    iget v5, v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v2, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    sget-object v3, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    return-void
.end method

.method public static getFieldType(I)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    .line 64
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public static isCoverArtType(Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;)Z
    .locals 1

    .line 80
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    .line 9
    const-class v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;
    .locals 1

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->$VALUES:[Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method


# virtual methods
.method public getFileClassId()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4FieldType;->fileClassId:I

    return v0
.end method
