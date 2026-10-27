.class final enum Landroidx/constraintlayout/core/parser/i$a;
.super Ljava/lang/Enum;
.source "CLToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/parser/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/parser/i$a;

.field public static final enum FALSE:Landroidx/constraintlayout/core/parser/i$a;

.field public static final enum NULL:Landroidx/constraintlayout/core/parser/i$a;

.field public static final enum TRUE:Landroidx/constraintlayout/core/parser/i$a;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/parser/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Landroidx/constraintlayout/core/parser/i$a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/parser/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/parser/i$a;->UNKNOWN:Landroidx/constraintlayout/core/parser/i$a;

    new-instance v0, Landroidx/constraintlayout/core/parser/i$a;

    const/4 v2, 0x1

    const-string v3, "TRUE"

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/core/parser/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/parser/i$a;->TRUE:Landroidx/constraintlayout/core/parser/i$a;

    new-instance v0, Landroidx/constraintlayout/core/parser/i$a;

    const/4 v3, 0x2

    const-string v4, "FALSE"

    invoke-direct {v0, v4, v3}, Landroidx/constraintlayout/core/parser/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/parser/i$a;->FALSE:Landroidx/constraintlayout/core/parser/i$a;

    new-instance v0, Landroidx/constraintlayout/core/parser/i$a;

    const/4 v4, 0x3

    const-string v5, "NULL"

    invoke-direct {v0, v5, v4}, Landroidx/constraintlayout/core/parser/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/parser/i$a;->NULL:Landroidx/constraintlayout/core/parser/i$a;

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/core/parser/i$a;

    sget-object v5, Landroidx/constraintlayout/core/parser/i$a;->UNKNOWN:Landroidx/constraintlayout/core/parser/i$a;

    aput-object v5, v0, v1

    sget-object v1, Landroidx/constraintlayout/core/parser/i$a;->TRUE:Landroidx/constraintlayout/core/parser/i$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/constraintlayout/core/parser/i$a;->FALSE:Landroidx/constraintlayout/core/parser/i$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/constraintlayout/core/parser/i$a;->NULL:Landroidx/constraintlayout/core/parser/i$a;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/constraintlayout/core/parser/i$a;->$VALUES:[Landroidx/constraintlayout/core/parser/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/i$a;
    .locals 1

    .line 39
    const-class v0, Landroidx/constraintlayout/core/parser/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/parser/i$a;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/parser/i$a;
    .locals 1

    .line 39
    sget-object v0, Landroidx/constraintlayout/core/parser/i$a;->$VALUES:[Landroidx/constraintlayout/core/parser/i$a;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/parser/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/parser/i$a;

    return-object v0
.end method
