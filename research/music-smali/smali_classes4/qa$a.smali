.class public final enum Lqa$a;
.super Ljava/lang/Enum;
.source "JSONCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqa$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqa$a;

.field public static final enum DEFAULT:Lqa$a;

.field public static final enum LAMBDA:Lqa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lqa$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqa$a;->DEFAULT:Lqa$a;

    .line 15
    new-instance v0, Lqa$a;

    const-string v1, "LAMBDA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lqa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqa$a;->LAMBDA:Lqa$a;

    .line 13
    invoke-static {}, Lqa$a;->a()[Lqa$a;

    move-result-object v0

    sput-object v0, Lqa$a;->$VALUES:[Lqa$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lqa$a;
    .locals 3

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lqa$a;

    sget-object v1, Lqa$a;->DEFAULT:Lqa$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lqa$a;->LAMBDA:Lqa$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lqa$a;
    .locals 1

    .line 13
    const-class v0, Lqa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqa$a;

    return-object p0
.end method

.method public static values()[Lqa$a;
    .locals 1

    .line 13
    sget-object v0, Lqa$a;->$VALUES:[Lqa$a;

    invoke-virtual {v0}, [Lqa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqa$a;

    return-object v0
.end method
