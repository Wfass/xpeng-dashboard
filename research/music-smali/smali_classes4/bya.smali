.class public final enum Lbya;
.super Ljava/lang/Enum;
.source "VuiMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbya;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbya;

.field public static final enum DISABLED:Lbya;

.field public static final enum NORMAL:Lbya;

.field public static final enum SILENT:Lbya;

.field public static final enum UNDERSTOOD:Lbya;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lbya;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    const-string v3, "Disabled"

    invoke-direct {v0, v2, v1, v3}, Lbya;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbya;->DISABLED:Lbya;

    .line 5
    new-instance v0, Lbya;

    const/4 v2, 0x1

    const-string v3, "SILENT"

    const-string v4, "Silent"

    invoke-direct {v0, v3, v2, v4}, Lbya;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbya;->SILENT:Lbya;

    .line 6
    new-instance v0, Lbya;

    const/4 v3, 0x2

    const-string v4, "UNDERSTOOD"

    const-string v5, "Understood"

    invoke-direct {v0, v4, v3, v5}, Lbya;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbya;->UNDERSTOOD:Lbya;

    .line 7
    new-instance v0, Lbya;

    const/4 v4, 0x3

    const-string v5, "NORMAL"

    const-string v6, "Normal"

    invoke-direct {v0, v5, v4, v6}, Lbya;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbya;->NORMAL:Lbya;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lbya;

    sget-object v5, Lbya;->DISABLED:Lbya;

    aput-object v5, v0, v1

    sget-object v1, Lbya;->SILENT:Lbya;

    aput-object v1, v0, v2

    sget-object v1, Lbya;->UNDERSTOOD:Lbya;

    aput-object v1, v0, v3

    sget-object v1, Lbya;->NORMAL:Lbya;

    aput-object v1, v0, v4

    sput-object v0, Lbya;->$VALUES:[Lbya;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lbya;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbya;
    .locals 1

    .line 3
    const-class v0, Lbya;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbya;

    return-object p0
.end method

.method public static values()[Lbya;
    .locals 1

    .line 3
    sget-object v0, Lbya;->$VALUES:[Lbya;

    invoke-virtual {v0}, [Lbya;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbya;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lbya;->a:Ljava/lang/String;

    return-object v0
.end method
