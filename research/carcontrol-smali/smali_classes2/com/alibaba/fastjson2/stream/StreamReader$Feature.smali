.class public final enum Lcom/alibaba/fastjson2/stream/StreamReader$Feature;
.super Ljava/lang/Enum;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/stream/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/stream/StreamReader$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

.field public static final enum ErrorAsNull:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

.field public static final enum IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;


# instance fields
.field public final mask:J


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    .line 99
    sget-object v1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->ErrorAsNull:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 100
    new-instance v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    const-string v1, "IgnoreEmptyLine"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    .line 101
    new-instance v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    const-string v1, "ErrorAsNull"

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->ErrorAsNull:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    .line 99
    invoke-static {}, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->$values()[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-wide p3, p0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/stream/StreamReader$Feature;
    .locals 1

    .line 99
    const-class v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;
    .locals 1

    .line 99
    sget-object v0, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    return-object v0
.end method
