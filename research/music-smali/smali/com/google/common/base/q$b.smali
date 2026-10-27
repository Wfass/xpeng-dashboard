.class Lcom/google/common/base/q$b;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/p;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/p<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "TB;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "TA;+TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/p;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/p<",
            "TB;>;",
            "Lcom/google/common/base/h<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/p;

    iput-object p1, p0, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    .line 591
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/h;

    iput-object p1, p0, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/p;Lcom/google/common/base/h;Lcom/google/common/base/q$1;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/q$b;-><init>(Lcom/google/common/base/p;Lcom/google/common/base/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    iget-object v1, p0, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    invoke-interface {v1, p1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 601
    instance-of v0, p1, Lcom/google/common/base/q$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 602
    check-cast p1, Lcom/google/common/base/q$b;

    .line 603
    iget-object v0, p0, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    iget-object v2, p1, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    invoke-interface {v0, v2}, Lcom/google/common/base/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    iget-object p1, p1, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/q$b;->a:Lcom/google/common/base/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/q$b;->b:Lcom/google/common/base/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
