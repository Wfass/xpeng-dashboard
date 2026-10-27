.class public final enum Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;
.super Ljava/lang/Enum;
.source "AiffAudioHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/aiff/AiffAudioHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Endian"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

.field public static final enum BIG_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

.field public static final enum LITTLE_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    const/4 v1, 0x0

    const-string v2, "BIG_ENDIAN"

    invoke-direct {v0, v2, v1}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->BIG_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    .line 18
    new-instance v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    const/4 v2, 0x1

    const-string v3, "LITTLE_ENDIAN"

    invoke-direct {v0, v3, v2}, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->LITTLE_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    sget-object v3, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->BIG_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->LITTLE_ENDIAN:Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->$VALUES:[Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;
    .locals 1

    .line 15
    const-class v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;
    .locals 1

    .line 15
    sget-object v0, Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->$VALUES:[Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/aiff/AiffAudioHeader$Endian;

    return-object v0
.end method
