.class final enum Lbu$a;
.super Ljava/lang/Enum;
.source "DependencyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbu$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbu$a;

.field public static final enum BASELINE:Lbu$a;

.field public static final enum BOTTOM:Lbu$a;

.field public static final enum HORIZONTAL_DIMENSION:Lbu$a;

.field public static final enum LEFT:Lbu$a;

.field public static final enum RIGHT:Lbu$a;

.field public static final enum TOP:Lbu$a;

.field public static final enum UNKNOWN:Lbu$a;

.field public static final enum VERTICAL_DIMENSION:Lbu$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    new-instance v0, Lbu$a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->UNKNOWN:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v2, 0x1

    const-string v3, "HORIZONTAL_DIMENSION"

    invoke-direct {v0, v3, v2}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->HORIZONTAL_DIMENSION:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v3, 0x2

    const-string v4, "VERTICAL_DIMENSION"

    invoke-direct {v0, v4, v3}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->VERTICAL_DIMENSION:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v4, 0x3

    const-string v5, "LEFT"

    invoke-direct {v0, v5, v4}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->LEFT:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v5, 0x4

    const-string v6, "RIGHT"

    invoke-direct {v0, v6, v5}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->RIGHT:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v6, 0x5

    const-string v7, "TOP"

    invoke-direct {v0, v7, v6}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->TOP:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v7, 0x6

    const-string v8, "BOTTOM"

    invoke-direct {v0, v8, v7}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->BOTTOM:Lbu$a;

    new-instance v0, Lbu$a;

    const/4 v8, 0x7

    const-string v9, "BASELINE"

    invoke-direct {v0, v9, v8}, Lbu$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbu$a;->BASELINE:Lbu$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lbu$a;

    sget-object v9, Lbu$a;->UNKNOWN:Lbu$a;

    aput-object v9, v0, v1

    sget-object v1, Lbu$a;->HORIZONTAL_DIMENSION:Lbu$a;

    aput-object v1, v0, v2

    sget-object v1, Lbu$a;->VERTICAL_DIMENSION:Lbu$a;

    aput-object v1, v0, v3

    sget-object v1, Lbu$a;->LEFT:Lbu$a;

    aput-object v1, v0, v4

    sget-object v1, Lbu$a;->RIGHT:Lbu$a;

    aput-object v1, v0, v5

    sget-object v1, Lbu$a;->TOP:Lbu$a;

    aput-object v1, v0, v6

    sget-object v1, Lbu$a;->BOTTOM:Lbu$a;

    aput-object v1, v0, v7

    sget-object v1, Lbu$a;->BASELINE:Lbu$a;

    aput-object v1, v0, v8

    sput-object v0, Lbu$a;->$VALUES:[Lbu$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbu$a;
    .locals 1

    .line 27
    const-class v0, Lbu$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbu$a;

    return-object p0
.end method

.method public static values()[Lbu$a;
    .locals 1

    .line 27
    sget-object v0, Lbu$a;->$VALUES:[Lbu$a;

    invoke-virtual {v0}, [Lbu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbu$a;

    return-object v0
.end method
