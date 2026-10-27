.class public final enum Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
.super Ljava/lang/Enum;
.source "Mp4NonStandardFieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ADCP:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ALFN:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AMIM:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum APTY:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;


# instance fields
.field private description:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private tagger:Lorg/jaudiotagger/tag/reference/Tagger;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v5, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v1, "AAPR"

    const/4 v2, 0x0

    const-string v3, "AApr"

    const-string v4, "MM3 Album Art Attributes"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    sput-object v6, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v12, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v8, "ALFN"

    const/4 v9, 0x1

    const-string v10, "Alfn"

    const-string v11, "MM3 Album Art Unknown"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v6, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v2, "AMIM"

    const/4 v3, 0x2

    const-string v4, "AMIM"

    const-string v5, "MM3 Album Art MimeType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 15
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v12, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v8, "ADCP"

    const/4 v9, 0x3

    const-string v10, "Adcp"

    const-string v11, "MM3 Album Art Description"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    .line 16
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v6, Lorg/jaudiotagger/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/jaudiotagger/tag/reference/Tagger;

    const-string v2, "APTY"

    const/4 v3, 0x4

    const-string v4, "Apty"

    const-string v5, "MM3 Album Art ID3 Picture Type"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jaudiotagger/tag/reference/Tagger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/reference/Tagger;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/jaudiotagger/tag/reference/Tagger;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .locals 1

    .line 10
    const-class v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;
    .locals 1

    .line 10
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->$VALUES:[Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;

    return-object v0
.end method


# virtual methods
.method public geTagger()Lorg/jaudiotagger/tag/reference/Tagger;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/jaudiotagger/tag/reference/Tagger;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method
