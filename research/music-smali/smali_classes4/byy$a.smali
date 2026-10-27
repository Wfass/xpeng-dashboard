.class public final enum Lbyy$a;
.super Ljava/lang/Enum;
.source "RoundedCornersTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbyy$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbyy$a;

.field public static final enum ALL:Lbyy$a;

.field public static final enum BOTTOM:Lbyy$a;

.field public static final enum BOTTOM_LEFT:Lbyy$a;

.field public static final enum BOTTOM_RIGHT:Lbyy$a;

.field public static final enum DIAGONAL_FROM_TOP_LEFT:Lbyy$a;

.field public static final enum DIAGONAL_FROM_TOP_RIGHT:Lbyy$a;

.field public static final enum LEFT:Lbyy$a;

.field public static final enum OTHER_BOTTOM_LEFT:Lbyy$a;

.field public static final enum OTHER_BOTTOM_RIGHT:Lbyy$a;

.field public static final enum OTHER_TOP_LEFT:Lbyy$a;

.field public static final enum OTHER_TOP_RIGHT:Lbyy$a;

.field public static final enum RIGHT:Lbyy$a;

.field public static final enum TOP:Lbyy$a;

.field public static final enum TOP_LEFT:Lbyy$a;

.field public static final enum TOP_RIGHT:Lbyy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lbyy$a;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->ALL:Lbyy$a;

    .line 38
    new-instance v0, Lbyy$a;

    const/4 v2, 0x1

    const-string v3, "TOP_LEFT"

    invoke-direct {v0, v3, v2}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->TOP_LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/4 v3, 0x2

    const-string v4, "TOP_RIGHT"

    invoke-direct {v0, v4, v3}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->TOP_RIGHT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/4 v4, 0x3

    const-string v5, "BOTTOM_LEFT"

    invoke-direct {v0, v5, v4}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->BOTTOM_LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/4 v5, 0x4

    const-string v6, "BOTTOM_RIGHT"

    invoke-direct {v0, v6, v5}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->BOTTOM_RIGHT:Lbyy$a;

    .line 39
    new-instance v0, Lbyy$a;

    const/4 v6, 0x5

    const-string v7, "TOP"

    invoke-direct {v0, v7, v6}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->TOP:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/4 v7, 0x6

    const-string v8, "BOTTOM"

    invoke-direct {v0, v8, v7}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->BOTTOM:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/4 v8, 0x7

    const-string v9, "LEFT"

    invoke-direct {v0, v9, v8}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/16 v9, 0x8

    const-string v10, "RIGHT"

    invoke-direct {v0, v10, v9}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->RIGHT:Lbyy$a;

    .line 40
    new-instance v0, Lbyy$a;

    const/16 v10, 0x9

    const-string v11, "OTHER_TOP_LEFT"

    invoke-direct {v0, v11, v10}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->OTHER_TOP_LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/16 v11, 0xa

    const-string v12, "OTHER_TOP_RIGHT"

    invoke-direct {v0, v12, v11}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->OTHER_TOP_RIGHT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/16 v12, 0xb

    const-string v13, "OTHER_BOTTOM_LEFT"

    invoke-direct {v0, v13, v12}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->OTHER_BOTTOM_LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/16 v13, 0xc

    const-string v14, "OTHER_BOTTOM_RIGHT"

    invoke-direct {v0, v14, v13}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->OTHER_BOTTOM_RIGHT:Lbyy$a;

    .line 41
    new-instance v0, Lbyy$a;

    const/16 v14, 0xd

    const-string v15, "DIAGONAL_FROM_TOP_LEFT"

    invoke-direct {v0, v15, v14}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->DIAGONAL_FROM_TOP_LEFT:Lbyy$a;

    new-instance v0, Lbyy$a;

    const/16 v15, 0xe

    const-string v14, "DIAGONAL_FROM_TOP_RIGHT"

    invoke-direct {v0, v14, v15}, Lbyy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbyy$a;->DIAGONAL_FROM_TOP_RIGHT:Lbyy$a;

    const/16 v0, 0xf

    .line 36
    new-array v0, v0, [Lbyy$a;

    sget-object v14, Lbyy$a;->ALL:Lbyy$a;

    aput-object v14, v0, v1

    sget-object v1, Lbyy$a;->TOP_LEFT:Lbyy$a;

    aput-object v1, v0, v2

    sget-object v1, Lbyy$a;->TOP_RIGHT:Lbyy$a;

    aput-object v1, v0, v3

    sget-object v1, Lbyy$a;->BOTTOM_LEFT:Lbyy$a;

    aput-object v1, v0, v4

    sget-object v1, Lbyy$a;->BOTTOM_RIGHT:Lbyy$a;

    aput-object v1, v0, v5

    sget-object v1, Lbyy$a;->TOP:Lbyy$a;

    aput-object v1, v0, v6

    sget-object v1, Lbyy$a;->BOTTOM:Lbyy$a;

    aput-object v1, v0, v7

    sget-object v1, Lbyy$a;->LEFT:Lbyy$a;

    aput-object v1, v0, v8

    sget-object v1, Lbyy$a;->RIGHT:Lbyy$a;

    aput-object v1, v0, v9

    sget-object v1, Lbyy$a;->OTHER_TOP_LEFT:Lbyy$a;

    aput-object v1, v0, v10

    sget-object v1, Lbyy$a;->OTHER_TOP_RIGHT:Lbyy$a;

    aput-object v1, v0, v11

    sget-object v1, Lbyy$a;->OTHER_BOTTOM_LEFT:Lbyy$a;

    aput-object v1, v0, v12

    sget-object v1, Lbyy$a;->OTHER_BOTTOM_RIGHT:Lbyy$a;

    aput-object v1, v0, v13

    sget-object v1, Lbyy$a;->DIAGONAL_FROM_TOP_LEFT:Lbyy$a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lbyy$a;->DIAGONAL_FROM_TOP_RIGHT:Lbyy$a;

    aput-object v1, v0, v15

    sput-object v0, Lbyy$a;->$VALUES:[Lbyy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbyy$a;
    .locals 1

    .line 36
    const-class v0, Lbyy$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbyy$a;

    return-object p0
.end method

.method public static values()[Lbyy$a;
    .locals 1

    .line 36
    sget-object v0, Lbyy$a;->$VALUES:[Lbyy$a;

    invoke-virtual {v0}, [Lbyy$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbyy$a;

    return-object v0
.end method
