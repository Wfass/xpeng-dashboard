.class public final enum Lcom/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum iA:Lcom/google/zxing/EncodeHintType;

.field public static final enum iB:Lcom/google/zxing/EncodeHintType;

.field public static final enum iC:Lcom/google/zxing/EncodeHintType;

.field public static final enum iD:Lcom/google/zxing/EncodeHintType;

.field public static final enum iE:Lcom/google/zxing/EncodeHintType;

.field public static final enum iF:Lcom/google/zxing/EncodeHintType;

.field public static final enum iG:Lcom/google/zxing/EncodeHintType;

.field private static final synthetic iH:[Lcom/google/zxing/EncodeHintType;

.field public static final enum ix:Lcom/google/zxing/EncodeHintType;

.field public static final enum iy:Lcom/google/zxing/EncodeHintType;

.field public static final enum iz:Lcom/google/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 33
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->ix:Lcom/google/zxing/EncodeHintType;

    .line 38
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iy:Lcom/google/zxing/EncodeHintType;

    .line 43
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iz:Lcom/google/zxing/EncodeHintType;

    .line 48
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "MIN_SIZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iA:Lcom/google/zxing/EncodeHintType;

    .line 53
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iB:Lcom/google/zxing/EncodeHintType;

    .line 60
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "MARGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iC:Lcom/google/zxing/EncodeHintType;

    .line 65
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "PDF417_COMPACT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iD:Lcom/google/zxing/EncodeHintType;

    .line 71
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "PDF417_COMPACTION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iE:Lcom/google/zxing/EncodeHintType;

    .line 77
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "PDF417_DIMENSIONS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iF:Lcom/google/zxing/EncodeHintType;

    .line 85
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "AZTEC_LAYERS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iG:Lcom/google/zxing/EncodeHintType;

    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/EncodeHintType;->ix:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iy:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iz:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iA:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iB:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iC:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iD:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iE:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iF:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/zxing/EncodeHintType;->iG:Lcom/google/zxing/EncodeHintType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/google/zxing/EncodeHintType;->iH:[Lcom/google/zxing/EncodeHintType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/EncodeHintType;
    .locals 1

    .line 24
    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/EncodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/EncodeHintType;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/zxing/EncodeHintType;->iH:[Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v0}, [Lcom/google/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/EncodeHintType;

    return-object v0
.end method
