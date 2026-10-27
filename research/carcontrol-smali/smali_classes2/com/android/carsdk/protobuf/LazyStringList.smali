.class public interface abstract Lcom/android/carsdk/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/ProtocolStringList;


# virtual methods
.method public abstract add(Lcom/android/carsdk/protobuf/ByteString;)V
.end method

.method public abstract add([B)V
.end method

.method public abstract addAllByteArray(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation
.end method

.method public abstract addAllByteString(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/carsdk/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract asByteArrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getByteArray(I)[B
.end method

.method public abstract getByteString(I)Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract getRaw(I)Ljava/lang/Object;
.end method

.method public abstract getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getUnmodifiableView()Lcom/android/carsdk/protobuf/LazyStringList;
.end method

.method public abstract mergeFrom(Lcom/android/carsdk/protobuf/LazyStringList;)V
.end method

.method public abstract set(ILcom/android/carsdk/protobuf/ByteString;)V
.end method

.method public abstract set(I[B)V
.end method
