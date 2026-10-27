.class Lcom/google/android/flexbox/c$b;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/flexbox/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field index:I

.field order:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/flexbox/c$1;)V
    .locals 0

    .line 1984
    invoke-direct {p0}, Lcom/google/android/flexbox/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/flexbox/c$b;)I
    .locals 2
    .param p1    # Lcom/google/android/flexbox/c$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1994
    iget v0, p0, Lcom/google/android/flexbox/c$b;->order:I

    iget v1, p1, Lcom/google/android/flexbox/c$b;->order:I

    if-eq v0, v1, :cond_0

    .line 1995
    iget v0, p0, Lcom/google/android/flexbox/c$b;->order:I

    iget p1, p1, Lcom/google/android/flexbox/c$b;->order:I

    sub-int/2addr v0, p1

    return v0

    .line 1997
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/c$b;->index:I

    iget p1, p1, Lcom/google/android/flexbox/c$b;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1984
    check-cast p1, Lcom/google/android/flexbox/c$b;

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/c$b;->a(Lcom/google/android/flexbox/c$b;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order{order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/c$b;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/c$b;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
