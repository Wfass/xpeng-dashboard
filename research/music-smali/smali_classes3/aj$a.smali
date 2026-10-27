.class public final enum Laj$a;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laj$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laj$a;

.field public static final enum CONSTANT:Laj$a;

.field public static final enum ERROR:Laj$a;

.field public static final enum SLACK:Laj$a;

.field public static final enum UNKNOWN:Laj$a;

.field public static final enum UNRESTRICTED:Laj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 79
    new-instance v0, Laj$a;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, Laj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj$a;->UNRESTRICTED:Laj$a;

    .line 83
    new-instance v0, Laj$a;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, Laj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj$a;->CONSTANT:Laj$a;

    .line 87
    new-instance v0, Laj$a;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, Laj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj$a;->SLACK:Laj$a;

    .line 91
    new-instance v0, Laj$a;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Laj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj$a;->ERROR:Laj$a;

    .line 95
    new-instance v0, Laj$a;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Laj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laj$a;->UNKNOWN:Laj$a;

    const/4 v0, 0x5

    .line 75
    new-array v0, v0, [Laj$a;

    sget-object v6, Laj$a;->UNRESTRICTED:Laj$a;

    aput-object v6, v0, v1

    sget-object v1, Laj$a;->CONSTANT:Laj$a;

    aput-object v1, v0, v2

    sget-object v1, Laj$a;->SLACK:Laj$a;

    aput-object v1, v0, v3

    sget-object v1, Laj$a;->ERROR:Laj$a;

    aput-object v1, v0, v4

    sget-object v1, Laj$a;->UNKNOWN:Laj$a;

    aput-object v1, v0, v5

    sput-object v0, Laj$a;->$VALUES:[Laj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laj$a;
    .locals 1

    .line 75
    const-class v0, Laj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laj$a;

    return-object p0
.end method

.method public static values()[Laj$a;
    .locals 1

    .line 75
    sget-object v0, Laj$a;->$VALUES:[Laj$a;

    invoke-virtual {v0}, [Laj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laj$a;

    return-object v0
.end method
