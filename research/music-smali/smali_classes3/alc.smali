.class public final enum Lalc;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lalc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lalc;

.field public static final enum AZTEC_LAYERS:Lalc;

.field public static final enum CHARACTER_SET:Lalc;

.field public static final enum CODE128_COMPACT:Lalc;

.field public static final enum DATA_MATRIX_COMPACT:Lalc;

.field public static final enum DATA_MATRIX_SHAPE:Lalc;

.field public static final enum ERROR_CORRECTION:Lalc;

.field public static final enum FORCE_C40:Lalc;

.field public static final enum FORCE_CODE_SET:Lalc;

.field public static final enum GS1_FORMAT:Lalc;

.field public static final enum MARGIN:Lalc;

.field public static final enum MAX_SIZE:Lalc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIN_SIZE:Lalc;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PDF417_AUTO_ECI:Lalc;

.field public static final enum PDF417_COMPACT:Lalc;

.field public static final enum PDF417_COMPACTION:Lalc;

.field public static final enum PDF417_DIMENSIONS:Lalc;

.field public static final enum QR_COMPACT:Lalc;

.field public static final enum QR_MASK_PATTERN:Lalc;

.field public static final enum QR_VERSION:Lalc;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lalc;

    const/4 v1, 0x0

    const-string v2, "ERROR_CORRECTION"

    invoke-direct {v0, v2, v1}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->ERROR_CORRECTION:Lalc;

    .line 40
    new-instance v0, Lalc;

    const/4 v2, 0x1

    const-string v3, "CHARACTER_SET"

    invoke-direct {v0, v3, v2}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->CHARACTER_SET:Lalc;

    .line 45
    new-instance v0, Lalc;

    const/4 v3, 0x2

    const-string v4, "DATA_MATRIX_SHAPE"

    invoke-direct {v0, v4, v3}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->DATA_MATRIX_SHAPE:Lalc;

    .line 61
    new-instance v0, Lalc;

    const/4 v4, 0x3

    const-string v5, "DATA_MATRIX_COMPACT"

    invoke-direct {v0, v5, v4}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->DATA_MATRIX_COMPACT:Lalc;

    .line 69
    new-instance v0, Lalc;

    const/4 v5, 0x4

    const-string v6, "MIN_SIZE"

    invoke-direct {v0, v6, v5}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->MIN_SIZE:Lalc;

    .line 77
    new-instance v0, Lalc;

    const/4 v6, 0x5

    const-string v7, "MAX_SIZE"

    invoke-direct {v0, v7, v6}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->MAX_SIZE:Lalc;

    .line 85
    new-instance v0, Lalc;

    const/4 v7, 0x6

    const-string v8, "MARGIN"

    invoke-direct {v0, v8, v7}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->MARGIN:Lalc;

    .line 91
    new-instance v0, Lalc;

    const/4 v8, 0x7

    const-string v9, "PDF417_COMPACT"

    invoke-direct {v0, v9, v8}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->PDF417_COMPACT:Lalc;

    .line 98
    new-instance v0, Lalc;

    const/16 v9, 0x8

    const-string v10, "PDF417_COMPACTION"

    invoke-direct {v0, v10, v9}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->PDF417_COMPACTION:Lalc;

    .line 104
    new-instance v0, Lalc;

    const/16 v10, 0x9

    const-string v11, "PDF417_DIMENSIONS"

    invoke-direct {v0, v11, v10}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->PDF417_DIMENSIONS:Lalc;

    .line 114
    new-instance v0, Lalc;

    const/16 v11, 0xa

    const-string v12, "PDF417_AUTO_ECI"

    invoke-direct {v0, v12, v11}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->PDF417_AUTO_ECI:Lalc;

    .line 123
    new-instance v0, Lalc;

    const/16 v12, 0xb

    const-string v13, "AZTEC_LAYERS"

    invoke-direct {v0, v13, v12}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->AZTEC_LAYERS:Lalc;

    .line 129
    new-instance v0, Lalc;

    const/16 v13, 0xc

    const-string v14, "QR_VERSION"

    invoke-direct {v0, v14, v13}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->QR_VERSION:Lalc;

    .line 137
    new-instance v0, Lalc;

    const/16 v14, 0xd

    const-string v15, "QR_MASK_PATTERN"

    invoke-direct {v0, v15, v14}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->QR_MASK_PATTERN:Lalc;

    .line 148
    new-instance v0, Lalc;

    const/16 v15, 0xe

    const-string v14, "QR_COMPACT"

    invoke-direct {v0, v14, v15}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->QR_COMPACT:Lalc;

    .line 154
    new-instance v0, Lalc;

    const-string v14, "GS1_FORMAT"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->GS1_FORMAT:Lalc;

    .line 161
    new-instance v0, Lalc;

    const-string v14, "FORCE_CODE_SET"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->FORCE_CODE_SET:Lalc;

    .line 167
    new-instance v0, Lalc;

    const-string v14, "FORCE_C40"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->FORCE_C40:Lalc;

    .line 175
    new-instance v0, Lalc;

    const-string v14, "CODE128_COMPACT"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lalc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lalc;->CODE128_COMPACT:Lalc;

    const/16 v0, 0x13

    .line 24
    new-array v0, v0, [Lalc;

    sget-object v14, Lalc;->ERROR_CORRECTION:Lalc;

    aput-object v14, v0, v1

    sget-object v1, Lalc;->CHARACTER_SET:Lalc;

    aput-object v1, v0, v2

    sget-object v1, Lalc;->DATA_MATRIX_SHAPE:Lalc;

    aput-object v1, v0, v3

    sget-object v1, Lalc;->DATA_MATRIX_COMPACT:Lalc;

    aput-object v1, v0, v4

    sget-object v1, Lalc;->MIN_SIZE:Lalc;

    aput-object v1, v0, v5

    sget-object v1, Lalc;->MAX_SIZE:Lalc;

    aput-object v1, v0, v6

    sget-object v1, Lalc;->MARGIN:Lalc;

    aput-object v1, v0, v7

    sget-object v1, Lalc;->PDF417_COMPACT:Lalc;

    aput-object v1, v0, v8

    sget-object v1, Lalc;->PDF417_COMPACTION:Lalc;

    aput-object v1, v0, v9

    sget-object v1, Lalc;->PDF417_DIMENSIONS:Lalc;

    aput-object v1, v0, v10

    sget-object v1, Lalc;->PDF417_AUTO_ECI:Lalc;

    aput-object v1, v0, v11

    sget-object v1, Lalc;->AZTEC_LAYERS:Lalc;

    aput-object v1, v0, v12

    sget-object v1, Lalc;->QR_VERSION:Lalc;

    aput-object v1, v0, v13

    sget-object v1, Lalc;->QR_MASK_PATTERN:Lalc;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lalc;->QR_COMPACT:Lalc;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lalc;->GS1_FORMAT:Lalc;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lalc;->FORCE_CODE_SET:Lalc;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lalc;->FORCE_C40:Lalc;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lalc;->CODE128_COMPACT:Lalc;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lalc;->$VALUES:[Lalc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lalc;
    .locals 1

    .line 24
    const-class v0, Lalc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lalc;

    return-object p0
.end method

.method public static values()[Lalc;
    .locals 1

    .line 24
    sget-object v0, Lalc;->$VALUES:[Lalc;

    invoke-virtual {v0}, [Lalc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lalc;

    return-object v0
.end method
