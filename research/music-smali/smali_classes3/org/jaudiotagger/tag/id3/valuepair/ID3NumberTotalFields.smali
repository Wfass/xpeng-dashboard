.class public Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;
.super Ljava/lang/Object;
.source "ID3NumberTotalFields.java"


# static fields
.field private static numberField:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static totalField:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lorg/jaudiotagger/tag/FieldKey;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    .line 13
    const-class v0, Lorg/jaudiotagger/tag/FieldKey;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    .line 17
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_NO:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_NO:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->DISC_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumber(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 28
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTotal(Lorg/jaudiotagger/tag/FieldKey;)Z
    .locals 1

    .line 33
    sget-object v0, Lorg/jaudiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
