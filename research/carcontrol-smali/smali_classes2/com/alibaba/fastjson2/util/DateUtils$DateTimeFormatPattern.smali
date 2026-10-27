.class public final enum Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DateTimeFormatPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;


# instance fields
.field public final length:I

.field public final pattern:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11554
    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11555
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_FORMAT_10_DASH"

    const/4 v2, 0x0

    const-string/jumbo v3, "yyyy-MM-dd"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11556
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_FORMAT_10_SLASH"

    const/4 v2, 0x1

    const-string/jumbo v3, "yyyy/MM/dd"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11557
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_FORMAT_10_DOT"

    const/4 v2, 0x2

    const-string v3, "dd.MM.yyyy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11558
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_TIME_FORMAT_19_DASH"

    const/4 v2, 0x3

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11559
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_TIME_FORMAT_19_DASH_T"

    const/4 v2, 0x4

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11560
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_TIME_FORMAT_19_SLASH"

    const/4 v2, 0x5

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11561
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    const-string v1, "DATE_TIME_FORMAT_19_DOT"

    const/4 v2, 0x6

    const-string v3, "dd.MM.yyyy HH:mm:ss"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 11554
    invoke-static {}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->$values()[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->$VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

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

    .line 11566
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11567
    iput-object p3, p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->pattern:Ljava/lang/String;

    .line 11568
    iput p4, p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
    .locals 1

    .line 11554
    const-class v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
    .locals 1

    .line 11554
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->$VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    return-object v0
.end method
