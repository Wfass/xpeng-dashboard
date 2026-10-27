.class public final enum Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
.super Ljava/lang/Enum;
.source "Mp4RatingValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum CLEAN:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum EXPLICIT:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "CLEAN"

    const-string v4, "Clean"

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 13
    new-instance v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    const/4 v3, 0x1

    const-string v4, "EXPLICIT"

    const-string v5, "Explicit"

    const/4 v6, 0x4

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    .line 10
    new-array v0, v1, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    .line 26
    iput p4, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
    .locals 1

    .line 10
    const-class v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;
    .locals 1

    .line 10
    sget-object v0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    invoke-virtual {v0}, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/jaudiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    return v0
.end method
