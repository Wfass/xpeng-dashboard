.class public abstract Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/AbstractMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
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
        "Lcom/android/carsdk/protobuf/MessageLite$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 1
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

    .line 358
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    instance-of v0, p0, Lcom/android/carsdk/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    .line 363
    move-object v0, p0

    check-cast v0, Lcom/android/carsdk/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 364
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 365
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 366
    invoke-static {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->checkForNullValues(Ljava/lang/Iterable;)V

    .line 367
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 369
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 371
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static checkForNullValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 379
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 381
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static newUninitializedMessageException(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/UninitializedMessageException;
    .locals 1

    .line 344
    new-instance v0, Lcom/android/carsdk/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/android/carsdk/protobuf/UninitializedMessageException;-><init>(Lcom/android/carsdk/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract internalMergeFrom(Lcom/android/carsdk/protobuf/AbstractMessageLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 321
    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 313
    :cond_0
    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0

    .line 314
    new-instance v1, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 315
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->newCodedInput()Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 157
    throw p1
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    :try_start_0
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->newCodedInput()Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 p2, 0x0

    .line 172
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 177
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 175
    throw p1
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    check-cast p1, Lcom/android/carsdk/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->internalMergeFrom(Lcom/android/carsdk/protobuf/AbstractMessageLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 p2, 0x0

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V

    return-object p0
.end method

.method public mergeFrom([B)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 p2, 0x0

    .line 195
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 198
    throw p1
.end method

.method public mergeFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1, p4}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    const/4 p2, 0x0

    .line 223
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 226
    throw p1
.end method

.method public mergeFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 209
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
