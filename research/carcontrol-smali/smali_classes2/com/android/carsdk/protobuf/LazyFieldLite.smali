.class public Lcom/android/carsdk/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

.field private extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

.field protected volatile value:Lcom/android/carsdk/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/carsdk/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/carsdk/protobuf/ExtensionRegistryLite;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p1, p2}, Lcom/android/carsdk/protobuf/LazyFieldLite;->checkArguments(Lcom/android/carsdk/protobuf/ExtensionRegistryLite;Lcom/android/carsdk/protobuf/ByteString;)V

    .line 118
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    .line 119
    iput-object p2, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method private static checkArguments(Lcom/android/carsdk/protobuf/ExtensionRegistryLite;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 1

    const-string v0, "found null ExtensionRegistry"

    .line 452
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "found null ByteString"

    .line 455
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static fromValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/LazyFieldLite;
    .locals 1

    .line 133
    new-instance v0, Lcom/android/carsdk/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/LazyFieldLite;-><init>()V

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 355
    :try_start_0
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/MessageLite;->toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->build()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 194
    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 195
    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    sget-object v1, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/android/carsdk/protobuf/MessageLite;)V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-void

    .line 425
    :cond_0
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 427
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 430
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 432
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    .line 433
    invoke-interface {v0, v1, v2}, Lcom/android/carsdk/protobuf/Parser;->parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/MessageLite;

    .line 434
    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 435
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    goto :goto_0

    .line 437
    :cond_2
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 438
    sget-object v0, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 444
    sget-object p1, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 144
    :cond_0
    instance-of v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_1
    check-cast p1, Lcom/android/carsdk/protobuf/LazyFieldLite;

    .line 154
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 155
    iget-object v1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LazyFieldLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->getValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 163
    :cond_4
    invoke-interface {v1}, Lcom/android/carsdk/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->getValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->ensureInitialized(Lcom/android/carsdk/protobuf/MessageLite;)V

    .line 225
    iget-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/android/carsdk/protobuf/LazyFieldLite;)V
    .locals 2

    .line 251
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->set(Lcom/android/carsdk/protobuf/LazyFieldLite;)V

    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v0, v1}, Lcom/android/carsdk/protobuf/ByteString;->concat(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    return-void

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 280
    iget-object p1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v0, v1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-void

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-void

    .line 299
    :cond_5
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v1

    iget-object p1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-void

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_7

    .line 303
    iget-object p1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LazyFieldLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v0, v1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-void

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    sget-object v1, Lcom/android/carsdk/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-static {v0, p1, v1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    return-void
.end method

.method public mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setByteString(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 328
    iput-object p2, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/ByteString;->concat(Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    iget-object p2, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setByteString(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 345
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MessageLite;->toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->build()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public set(Lcom/android/carsdk/protobuf/LazyFieldLite;)V
    .locals 1

    .line 205
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 206
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 207
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 212
    iget-object p1, p1, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    if-eqz p1, :cond_0

    .line 213
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_0
    return-void
.end method

.method public setByteString(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 367
    invoke-static {p2, p1}, Lcom/android/carsdk/protobuf/LazyFieldLite;->checkArguments(Lcom/android/carsdk/protobuf/ExtensionRegistryLite;Lcom/android/carsdk/protobuf/ByteString;)V

    .line 368
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 369
    iput-object p2, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    .line 371
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method public setValue(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v1, 0x0

    .line 236
    iput-object v1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 237
    iput-object v1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 238
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    return-object v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    .line 405
    :cond_1
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 410
    sget-object v0, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    goto :goto_0

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->value:Lcom/android/carsdk/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/MessageLite;->toByteString()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/carsdk/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 415
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
