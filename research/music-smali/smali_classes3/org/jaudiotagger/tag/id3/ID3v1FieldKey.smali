.class public final enum Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
.super Ljava/lang/Enum;
.source "ID3v1FieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

.field public static final enum YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v1, 0x0

    const-string v2, "ARTIST"

    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 9
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v2, 0x1

    const-string v3, "ALBUM"

    invoke-direct {v0, v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 10
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v3, 0x2

    const-string v4, "GENRE"

    invoke-direct {v0, v4, v3}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 11
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v4, 0x3

    const-string v5, "TITLE"

    invoke-direct {v0, v5, v4}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v5, 0x4

    const-string v6, "YEAR"

    invoke-direct {v0, v6, v5}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v6, 0x5

    const-string v7, "TRACK"

    invoke-direct {v0, v7, v6}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    .line 14
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v7, 0x6

    const-string v8, "COMMENT"

    invoke-direct {v0, v8, v7}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    const/4 v0, 0x7

    .line 6
    new-array v0, v0, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    sget-object v8, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ARTIST:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v8, v0, v1

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->ALBUM:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->GENRE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TITLE:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->YEAR:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->COMMENT:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    aput-object v1, v0, v7

    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
    .locals 1

    .line 6
    const-class v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;
    .locals 1

    .line 6
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->$VALUES:[Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    return-object v0
.end method
