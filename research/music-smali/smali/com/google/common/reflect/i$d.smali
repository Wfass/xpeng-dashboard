.class final Lcom/google/common/reflect/i$d;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 678
    const-class v0, Lcom/google/common/reflect/i$d;

    .line 679
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-class v2, Lcom/google/common/reflect/i$d;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-string v3, "X"

    .line 680
    invoke-static {v2, v3, v1}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/common/reflect/i$d;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
