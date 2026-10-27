.class final enum Lcom/google/common/util/concurrent/c;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/c;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/c;

.field public static final enum INSTANCE:Lcom/google/common/util/concurrent/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/google/common/util/concurrent/c;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/c;->INSTANCE:Lcom/google/common/util/concurrent/c;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/google/common/util/concurrent/c;

    sget-object v2, Lcom/google/common/util/concurrent/c;->INSTANCE:Lcom/google/common/util/concurrent/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/util/concurrent/c;->$VALUES:[Lcom/google/common/util/concurrent/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/c;
    .locals 1

    .line 24
    const-class v0, Lcom/google/common/util/concurrent/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/c;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/common/util/concurrent/c;->$VALUES:[Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/c;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
