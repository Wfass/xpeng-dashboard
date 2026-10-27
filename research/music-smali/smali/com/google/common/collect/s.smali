.class Lcom/google/common/collect/s;
.super Lcom/google/common/collect/ab;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ab<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/s;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/common/collect/s;

    invoke-direct {v0}, Lcom/google/common/collect/s;-><init>()V

    sput-object v0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/google/common/collect/ac;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ab;-><init>(Lcom/google/common/collect/ac;I)V

    return-void
.end method
