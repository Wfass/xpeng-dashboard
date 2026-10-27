.class public final enum Lna;
.super Ljava/lang/Enum;
.source "FileExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lna;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lna;

.field public static final enum JSON:Lna;

.field public static final enum ZIP:Lna;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lna;

    const/4 v1, 0x0

    const-string v2, "JSON"

    const-string v3, ".json"

    invoke-direct {v0, v2, v1, v3}, Lna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lna;->JSON:Lna;

    .line 11
    new-instance v0, Lna;

    const/4 v2, 0x1

    const-string v3, "ZIP"

    const-string v4, ".zip"

    invoke-direct {v0, v3, v2, v4}, Lna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lna;->ZIP:Lna;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lna;

    sget-object v3, Lna;->JSON:Lna;

    aput-object v3, v0, v1

    sget-object v1, Lna;->ZIP:Lna;

    aput-object v1, v0, v2

    sput-object v0, Lna;->$VALUES:[Lna;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lna;->extension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lna;
    .locals 1

    .line 8
    const-class v0, Lna;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lna;

    return-object p0
.end method

.method public static values()[Lna;
    .locals 1

    .line 8
    sget-object v0, Lna;->$VALUES:[Lna;

    invoke-virtual {v0}, [Lna;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lna;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lna;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lna;->extension:Ljava/lang/String;

    return-object v0
.end method
