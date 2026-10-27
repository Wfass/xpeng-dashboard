.class public Lorg/jaudiotagger/audio/aiff/AiffUtil;
.super Ljava/lang/Object;
.source "AiffUtil.java"


# static fields
.field private static final dateFmt:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/aiff/AiffUtil;->dateFmt:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/jaudiotagger/audio/aiff/AiffUtil;->dateFmt:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read80BitDouble(Ljava/nio/ByteBuffer;)D
    .locals 2

    const/16 v0, 0xa

    .line 20
    new-array v0, v0, [B

    .line 21
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    new-instance p0, Lorg/jaudiotagger/audio/aiff/ExtDouble;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/aiff/ExtDouble;-><init>([B)V

    .line 23
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/aiff/ExtDouble;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static timestampToDate(J)Ljava/util/Date;
    .locals 8

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0x770

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const-wide/16 v0, 0xe10

    .line 42
    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    long-to-int p0, p0

    const/16 p1, 0xb

    .line 44
    invoke-virtual {v7, p1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xd

    .line 45
    invoke-virtual {v7, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 46
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
