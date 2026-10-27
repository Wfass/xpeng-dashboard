.class final enum Lalv$c;
.super Ljava/lang/Enum;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lalv$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lalv$c;

.field public static final enum LARGE:Lalv$c;

.field public static final enum MEDIUM:Lalv$c;

.field public static final enum SMALL:Lalv$c;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    new-instance v0, Lalv$c;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    const-string v3, "version 1-9"

    invoke-direct {v0, v2, v1, v3}, Lalv$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lalv$c;->SMALL:Lalv$c;

    .line 62
    new-instance v0, Lalv$c;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    const-string v4, "version 10-26"

    invoke-direct {v0, v3, v2, v4}, Lalv$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lalv$c;->MEDIUM:Lalv$c;

    .line 63
    new-instance v0, Lalv$c;

    const/4 v3, 0x2

    const-string v4, "LARGE"

    const-string v5, "version 27-40"

    invoke-direct {v0, v4, v3, v5}, Lalv$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lalv$c;->LARGE:Lalv$c;

    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [Lalv$c;

    sget-object v4, Lalv$c;->SMALL:Lalv$c;

    aput-object v4, v0, v1

    sget-object v1, Lalv$c;->MEDIUM:Lalv$c;

    aput-object v1, v0, v2

    sget-object v1, Lalv$c;->LARGE:Lalv$c;

    aput-object v1, v0, v3

    sput-object v0, Lalv$c;->$VALUES:[Lalv$c;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lalv$c;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lalv$c;
    .locals 1

    .line 60
    const-class v0, Lalv$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lalv$c;

    return-object p0
.end method

.method public static values()[Lalv$c;
    .locals 1

    .line 60
    sget-object v0, Lalv$c;->$VALUES:[Lalv$c;

    invoke-virtual {v0}, [Lalv$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lalv$c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lalv$c;->description:Ljava/lang/String;

    return-object v0
.end method
