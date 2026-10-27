.class public abstract Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.super Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected isBuilt:Z


# direct methods
.method protected constructor <init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    .line 318
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 319
    invoke-virtual {p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    const/4 p1, 0x0

    .line 320
    iput-boolean p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 373
    :cond_0
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->newUninitializedMessageException(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 359
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->makeImmutable()V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    .line 366
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

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

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected copyOnWrite()V
    .locals 3

    .line 328
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    .line 331
    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    iget-object v2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    .line 332
    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->isBuilt:Z

    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/android/carsdk/protobuf/AbstractMessageLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 306
    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected internalMergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->isInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 2
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

    .line 400
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 407
    :cond_0
    throw p1
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-virtual {v0, v1, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method
