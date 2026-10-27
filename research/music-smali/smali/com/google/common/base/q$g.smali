.class abstract enum Lcom/google/common/base/q$g;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/q$g;",
        ">;",
        "Lcom/google/common/base/p<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/q$g;

.field public static final enum ALWAYS_FALSE:Lcom/google/common/base/q$g;

.field public static final enum ALWAYS_TRUE:Lcom/google/common/base/q$g;

.field public static final enum IS_NULL:Lcom/google/common/base/q$g;

.field public static final enum NOT_NULL:Lcom/google/common/base/q$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 252
    new-instance v0, Lcom/google/common/base/q$g$1;

    const/4 v1, 0x0

    const-string v2, "ALWAYS_TRUE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/base/q$g$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/q$g;->ALWAYS_TRUE:Lcom/google/common/base/q$g;

    .line 264
    new-instance v0, Lcom/google/common/base/q$g$2;

    const/4 v2, 0x1

    const-string v3, "ALWAYS_FALSE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/base/q$g$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/q$g;->ALWAYS_FALSE:Lcom/google/common/base/q$g;

    .line 276
    new-instance v0, Lcom/google/common/base/q$g$3;

    const/4 v3, 0x2

    const-string v4, "IS_NULL"

    invoke-direct {v0, v4, v3}, Lcom/google/common/base/q$g$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/q$g;->IS_NULL:Lcom/google/common/base/q$g;

    .line 288
    new-instance v0, Lcom/google/common/base/q$g$4;

    const/4 v4, 0x3

    const-string v5, "NOT_NULL"

    invoke-direct {v0, v5, v4}, Lcom/google/common/base/q$g$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/q$g;->NOT_NULL:Lcom/google/common/base/q$g;

    const/4 v0, 0x4

    .line 250
    new-array v0, v0, [Lcom/google/common/base/q$g;

    sget-object v5, Lcom/google/common/base/q$g;->ALWAYS_TRUE:Lcom/google/common/base/q$g;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/common/base/q$g;->ALWAYS_FALSE:Lcom/google/common/base/q$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/q$g;->IS_NULL:Lcom/google/common/base/q$g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/q$g;->NOT_NULL:Lcom/google/common/base/q$g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/base/q$g;->$VALUES:[Lcom/google/common/base/q$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/q$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/q$g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/q$g;
    .locals 1

    .line 250
    const-class v0, Lcom/google/common/base/q$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/q$g;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/q$g;
    .locals 1

    .line 250
    sget-object v0, Lcom/google/common/base/q$g;->$VALUES:[Lcom/google/common/base/q$g;

    invoke-virtual {v0}, [Lcom/google/common/base/q$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/q$g;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/base/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/p<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
