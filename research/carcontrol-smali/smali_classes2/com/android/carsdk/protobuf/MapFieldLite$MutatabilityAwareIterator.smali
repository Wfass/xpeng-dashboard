.class Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;
.super Ljava/lang/Object;
.source "MapFieldLite.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/MapFieldLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutatabilityAwareIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;


# direct methods
.method constructor <init>(Lcom/android/carsdk/protobuf/MutabilityOracle;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/MutabilityOracle;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    .line 515
    iput-object p2, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasNext()Z
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->mutabilityOracle:Lcom/android/carsdk/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MutabilityOracle;->ensureMutable()V

    .line 531
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/carsdk/protobuf/MapFieldLite$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
