.class public abstract Lcom/android/carsdk/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/android/carsdk/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 70
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->newUninitializedMessageException(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/android/carsdk/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 56
    instance-of v0, p1, Lcom/android/carsdk/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/android/carsdk/protobuf/AbstractMessageLite;

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/android/carsdk/protobuf/UninitializedMessageException;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Lcom/android/carsdk/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/android/carsdk/protobuf/UninitializedMessageException;-><init>(Lcom/android/carsdk/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/carsdk/protobuf/MessageLite;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([B)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BII)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
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

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([B)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BII)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 229
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    new-instance v1, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 238
    invoke-virtual {p0, v1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 235
    new-instance p2, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/ByteString;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->newCodedInput()Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/carsdk/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 107
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 109
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 113
    throw p1
.end method

.method public parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/carsdk/protobuf/MessageLite;

    return-object p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public parsePartialFrom([B)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    array-length v0, p1

    sget-object v1, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BII)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/android/carsdk/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1, p4}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/carsdk/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p3, 0x0

    .line 141
    :try_start_1
    invoke-virtual {p1, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 143
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 147
    throw p1
.end method

.method public parsePartialFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([B)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BII)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BII)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parsePartialFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/AbstractParser;->parsePartialFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
