.class public abstract Lcom/android/carsdk/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/carsdk/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/carsdk/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method protected static checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/ByteString;->isValidUtf8()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method newUninitializedMessageException()Lcom/android/carsdk/protobuf/UninitializedMessageException;
    .locals 1

    .line 109
    new-instance v0, Lcom/android/carsdk/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/android/carsdk/protobuf/UninitializedMessageException;-><init>(Lcom/android/carsdk/protobuf/MessageLite;)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 70
    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->newInstance([B)Lcom/android/carsdk/protobuf/CodedOutputStream;

    move-result-object v1

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V

    .line 72
    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/android/carsdk/protobuf/ByteString;
    .locals 3

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->newCodedBuilder(I)Lcom/android/carsdk/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/android/carsdk/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V

    .line 58
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString$CodedBuilder;->build()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 95
    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 94
    invoke-static {v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 97
    invoke-static {p1, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/carsdk/protobuf/CodedOutputStream;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V

    .line 100
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->flush()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 86
    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/carsdk/protobuf/CodedOutputStream;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V

    .line 88
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->flush()V

    return-void
.end method
