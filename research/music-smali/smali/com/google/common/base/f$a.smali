.class final Lcom/google/common/base/f$a;
.super Lcom/google/common/base/f;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/f<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/base/f$a;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Lcom/google/common/base/f$a;

    invoke-direct {v0}, Lcom/google/common/base/f$a;-><init>()V

    sput-object v0, Lcom/google/common/base/f$a;->a:Lcom/google/common/base/f$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lcom/google/common/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Object;)I
    .locals 0

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 334
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
