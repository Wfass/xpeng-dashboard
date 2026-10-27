.class public final enum Lnet/lingala/zip4j/headers/HeaderSignature;
.super Ljava/lang/Enum;
.source "HeaderSignature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/HeaderSignature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ame:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amf:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amg:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amh:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ami:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amj:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amk:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum aml:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amm:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amn:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amo:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum amp:Lnet/lingala/zip4j/headers/HeaderSignature;

.field private static final synthetic amq:[Lnet/lingala/zip4j/headers/HeaderSignature;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "LOCAL_FILE_HEADER"

    const/4 v2, 0x0

    const-wide/32 v3, 0x4034b50

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ame:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 6
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "EXTRA_DATA_RECORD"

    const-wide/32 v3, 0x8074b50

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v3, v4}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amf:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 7
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "CENTRAL_DIRECTORY"

    const/4 v6, 0x2

    const-wide/32 v7, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v1, v6, v7, v8}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 8
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "END_OF_CENTRAL_DIRECTORY"

    const/4 v7, 0x3

    const-wide/32 v8, 0x6054b50

    invoke-direct {v0, v1, v7, v8, v9}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 9
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "TEMPORARY_SPANNING_MARKER"

    const/4 v8, 0x4

    const-wide/32 v9, 0x30304b50

    invoke-direct {v0, v1, v8, v9, v10}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ami:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 10
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "DIGITAL_SIGNATURE"

    const/4 v9, 0x5

    const-wide/32 v10, 0x5054b50

    invoke-direct {v0, v1, v9, v10, v11}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amj:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 11
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ARCEXTDATREC"

    const/4 v10, 0x6

    const-wide/32 v11, 0x8064b50

    invoke-direct {v0, v1, v10, v11, v12}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amk:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 12
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "SPLIT_ZIP"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v3, v4}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->aml:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 13
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    const/16 v3, 0x8

    const-wide/32 v12, 0x7064b50

    invoke-direct {v0, v1, v3, v12, v13}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amm:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 14
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    const/16 v4, 0x9

    const-wide/32 v12, 0x6064b50

    invoke-direct {v0, v1, v4, v12, v13}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amn:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 15
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_EXTRA_FIELD_SIGNATURE"

    const/16 v12, 0xa

    const-wide/16 v13, 0x1

    invoke-direct {v0, v1, v12, v13, v14}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "AES_EXTRA_DATA_RECORD"

    const/16 v13, 0xb

    const-wide/32 v14, 0x9901

    invoke-direct {v0, v1, v13, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ame:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v2

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amf:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v5

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amg:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v6

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v7

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ami:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v8

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amj:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v9

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amk:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v10

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->aml:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v11

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amm:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v3

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amn:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v4

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v12

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v13

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amq:[Lnet/lingala/zip4j/headers/HeaderSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-wide p3, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    .line 3
    const-class v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    .line 3
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amq:[Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/HeaderSignature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    return-wide v0
.end method
