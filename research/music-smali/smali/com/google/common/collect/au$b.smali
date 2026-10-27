.class Lcom/google/common/collect/au$b;
.super Lcom/google/common/collect/ar;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ar<",
        "Lcom/google/common/collect/au<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ar<",
            "Lcom/google/common/collect/au<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 700
    new-instance v0, Lcom/google/common/collect/au$b;

    invoke-direct {v0}, Lcom/google/common/collect/au$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/au$b;->a:Lcom/google/common/collect/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Lcom/google/common/collect/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "*>;",
            "Lcom/google/common/collect/au<",
            "*>;)I"
        }
    .end annotation

    .line 704
    invoke-static {}, Lcom/google/common/collect/o;->a()Lcom/google/common/collect/o;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v2, p2, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    .line 705
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/o;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/o;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    iget-object p2, p2, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 706
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/o;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/o;

    move-result-object p1

    .line 707
    invoke-virtual {p1}, Lcom/google/common/collect/o;->b()I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 699
    check-cast p1, Lcom/google/common/collect/au;

    check-cast p2, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/au$b;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)I

    move-result p1

    return p1
.end method
