.class public Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;
.super Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;
.source "Mp4MvhdBox.java"


# static fields
.field public static final CREATED_DATE_LONG_LENGTH:I = 0x8

.field public static final CREATED_DATE_LONG_POS:I = 0x4

.field public static final CREATED_DATE_SHORT_LENGTH:I = 0x4

.field public static final CREATED_DATE_SHORT_POS:I = 0x4

.field public static final DURATION_LONG_LENGTH:I = 0x8

.field public static final DURATION_LONG_POS:I = 0x18

.field public static final DURATION_SHORT_LENGTH:I = 0x4

.field public static final DURATION_SHORT_POS:I = 0x10

.field private static final LONG_FORMAT:I = 0x1

.field public static final MODIFIED_DATE_LONG_LENGTH:I = 0x8

.field public static final MODIFIED_DATE_LONG_POS:I = 0xc

.field public static final MODIFIED_DATE_SHORT_LENGTH:I = 0x4

.field public static final MODIFIED_DATE_SHORT_POS:I = 0x8

.field public static final OTHER_FLAG_LENGTH:I = 0x3

.field public static final OTHER_FLAG_POS:I = 0x1

.field public static final TIMESCALE_LENGTH:I = 0x4

.field public static final TIMESCALE_LONG_POS:I = 0x14

.field public static final TIMESCALE_SHORT_POS:I = 0xc

.field public static final VERSION_FLAG_LENGTH:I = 0x1

.field public static final VERSION_FLAG_POS:I


# instance fields
.field private timeLength:J

.field private timeScale:I


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/jaudiotagger/audio/mp4/atom/AbstractMp4Box;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->header:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 68
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x14

    .line 73
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x18

    .line 74
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    .line 79
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    const/16 p1, 0x10

    .line 80
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Utils;->u(I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 4

    .line 86
    iget-wide v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeLength:J

    iget v2, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->timeScale:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
