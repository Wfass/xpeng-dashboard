.class final enum Lbrave/internal/IpLiteral$IpFamily;
.super Ljava/lang/Enum;
.source "IpLiteral.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/IpLiteral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IpFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbrave/internal/IpLiteral$IpFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbrave/internal/IpLiteral$IpFamily;

.field public static final enum IPv4:Lbrave/internal/IpLiteral$IpFamily;

.field public static final enum IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

.field public static final enum IPv6:Lbrave/internal/IpLiteral$IpFamily;

.field public static final enum Unknown:Lbrave/internal/IpLiteral$IpFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lbrave/internal/IpLiteral$IpFamily;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {v0, v2, v1}, Lbrave/internal/IpLiteral$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    .line 21
    new-instance v0, Lbrave/internal/IpLiteral$IpFamily;

    const/4 v2, 0x1

    const-string v3, "IPv4"

    invoke-direct {v0, v3, v2}, Lbrave/internal/IpLiteral$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/internal/IpLiteral$IpFamily;->IPv4:Lbrave/internal/IpLiteral$IpFamily;

    .line 22
    new-instance v0, Lbrave/internal/IpLiteral$IpFamily;

    const/4 v3, 0x2

    const-string v4, "IPv4Embedded"

    invoke-direct {v0, v4, v3}, Lbrave/internal/IpLiteral$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    .line 23
    new-instance v0, Lbrave/internal/IpLiteral$IpFamily;

    const/4 v4, 0x3

    const-string v5, "IPv6"

    invoke-direct {v0, v5, v4}, Lbrave/internal/IpLiteral$IpFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbrave/internal/IpLiteral$IpFamily;->IPv6:Lbrave/internal/IpLiteral$IpFamily;

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Lbrave/internal/IpLiteral$IpFamily;

    sget-object v5, Lbrave/internal/IpLiteral$IpFamily;->Unknown:Lbrave/internal/IpLiteral$IpFamily;

    aput-object v5, v0, v1

    sget-object v1, Lbrave/internal/IpLiteral$IpFamily;->IPv4:Lbrave/internal/IpLiteral$IpFamily;

    aput-object v1, v0, v2

    sget-object v1, Lbrave/internal/IpLiteral$IpFamily;->IPv4Embedded:Lbrave/internal/IpLiteral$IpFamily;

    aput-object v1, v0, v3

    sget-object v1, Lbrave/internal/IpLiteral$IpFamily;->IPv6:Lbrave/internal/IpLiteral$IpFamily;

    aput-object v1, v0, v4

    sput-object v0, Lbrave/internal/IpLiteral$IpFamily;->$VALUES:[Lbrave/internal/IpLiteral$IpFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbrave/internal/IpLiteral$IpFamily;
    .locals 1

    .line 19
    const-class v0, Lbrave/internal/IpLiteral$IpFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbrave/internal/IpLiteral$IpFamily;

    return-object p0
.end method

.method public static values()[Lbrave/internal/IpLiteral$IpFamily;
    .locals 1

    .line 19
    sget-object v0, Lbrave/internal/IpLiteral$IpFamily;->$VALUES:[Lbrave/internal/IpLiteral$IpFamily;

    invoke-virtual {v0}, [Lbrave/internal/IpLiteral$IpFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbrave/internal/IpLiteral$IpFamily;

    return-object v0
.end method
