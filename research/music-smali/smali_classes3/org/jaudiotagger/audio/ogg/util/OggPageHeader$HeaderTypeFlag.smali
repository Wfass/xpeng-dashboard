.class public final enum Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
.super Ljava/lang/Enum;
.source "OggPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderTypeFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum END_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum FRESH_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum START_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;


# instance fields
.field fileValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 389
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const/4 v1, 0x0

    const-string v2, "FRESH_PACKET"

    invoke-direct {v0, v2, v1, v1}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 390
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const/4 v2, 0x1

    const-string v3, "CONTINUED_PACKET"

    invoke-direct {v0, v3, v2, v2}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 391
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const/4 v3, 0x2

    const-string v4, "START_OF_BITSTREAM"

    invoke-direct {v0, v4, v3, v3}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 392
    new-instance v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "END_OF_BITSTREAM"

    invoke-direct {v0, v6, v5, v4}, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    .line 387
    new-array v0, v4, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    sget-object v4, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 398
    iput-byte p3, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 1

    .line 387
    const-class v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 1

    .line 387
    sget-object v0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-object v0
.end method


# virtual methods
.method public getFileValue()B
    .locals 1

    .line 406
    iget-byte v0, p0, Lorg/jaudiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    return v0
.end method
