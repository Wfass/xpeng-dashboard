.class public interface abstract Lcom/android/carsdk/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getParserForType()Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "+",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lcom/android/carsdk/protobuf/MessageLite$Builder;
.end method

.method public abstract toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract toByteString()Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract writeDelimitedTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
