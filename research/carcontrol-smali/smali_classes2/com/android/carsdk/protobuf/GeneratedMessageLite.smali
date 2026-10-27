.class public abstract Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.super Lcom/android/carsdk/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;,
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/carsdk/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;-><init>()V

    .line 66
    invoke-static {}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    check-cast p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p0

    .line 1216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a lite extension."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1354
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/android/carsdk/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1357
    invoke-virtual {v0, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static emptyBooleanList()Lcom/android/carsdk/protobuf/Internal$BooleanList;
    .locals 1

    .line 1277
    invoke-static {}, Lcom/android/carsdk/protobuf/BooleanArrayList;->emptyList()Lcom/android/carsdk/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/android/carsdk/protobuf/Internal$DoubleList;
    .locals 1

    .line 1267
    invoke-static {}, Lcom/android/carsdk/protobuf/DoubleArrayList;->emptyList()Lcom/android/carsdk/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/android/carsdk/protobuf/Internal$FloatList;
    .locals 1

    .line 1257
    invoke-static {}, Lcom/android/carsdk/protobuf/FloatArrayList;->emptyList()Lcom/android/carsdk/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;
    .locals 1

    .line 1237
    invoke-static {}, Lcom/android/carsdk/protobuf/IntArrayList;->emptyList()Lcom/android/carsdk/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 1

    .line 1247
    invoke-static {}, Lcom/android/carsdk/protobuf/LongArrayList;->emptyList()Lcom/android/carsdk/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1287
    invoke-static {}, Lcom/android/carsdk/protobuf/ProtobufArrayList;->emptyList()Lcom/android/carsdk/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 174
    invoke-static {}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    :cond_0
    return-void
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 987
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 989
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\" missing method \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 998
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1004
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1005
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1007
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 1008
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1010
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1006
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1000
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final isInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static final makeImmutable(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)V"
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    return-void
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$BooleanList;)Lcom/android/carsdk/protobuf/Internal$BooleanList;
    .locals 1

    .line 1281
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1282
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$BooleanList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$DoubleList;)Lcom/android/carsdk/protobuf/Internal$DoubleList;
    .locals 1

    .line 1271
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1272
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$DoubleList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;
    .locals 1

    .line 1261
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1262
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;
    .locals 1

    .line 1241
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1242
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$LongList;)Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 1

    .line 1251
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$LongList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1252
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$LongList;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1291
    invoke-interface {p0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 1292
    :goto_0
    invoke-interface {p0, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p0

    return-object p0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;ILcom/android/carsdk/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/carsdk/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 906
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 907
    new-instance v6, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v4, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;ILcom/android/carsdk/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/carsdk/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static newSingularGeneratedExtension(Lcom/android/carsdk/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;ILcom/android/carsdk/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/carsdk/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 884
    new-instance v6, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;ILcom/android/carsdk/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/android/carsdk/protobuf/MessageLite;Ljava/lang/Object;Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1470
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1469
    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1468
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1478
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1477
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1367
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1366
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/ByteString;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1374
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1453
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1461
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1460
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1437
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 1438
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1437
    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1436
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1446
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1445
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1422
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    .line 1421
    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method protected static parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1429
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    invoke-static {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1488
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1492
    :cond_0
    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1496
    new-instance v1, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1497
    invoke-static {v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 1498
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 p2, 0x0

    .line 1500
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1502
    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 1494
    new-instance p1, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/ByteString;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1384
    :try_start_0
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->newCodedInput()Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 1385
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 1387
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1389
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 1393
    throw p0
.end method

.method protected static parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1343
    invoke-static {}, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method static parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/android/carsdk/protobuf/CodedInputStream;",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1326
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    .line 1328
    :try_start_0
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MERGE_FROM_STREAM:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1331
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_0

    .line 1332
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1334
    :cond_0
    throw p0
.end method

.method private static parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/android/carsdk/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1404
    :try_start_0
    invoke-static {p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->newInstance([B)Lcom/android/carsdk/protobuf/CodedInputStream;

    move-result-object p1

    .line 1405
    invoke-static {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 1407
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 1409
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 1413
    throw p0
.end method


# virtual methods
.method protected dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method equals(Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/carsdk/protobuf/MessageLite;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 161
    :cond_1
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 141
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;

    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {p0, v1, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    :try_end_0
    .catch Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/Parser;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite$1;)V

    .line 111
    invoke-virtual {p0, v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    .line 112
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v0

    iput v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method hashCode(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v0

    const/4 v1, 0x0

    .line 121
    invoke-static {p1, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 122
    invoke-virtual {p0, p1, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    .line 123
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$100(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result v1

    iput v1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 124
    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->access$102(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I

    .line 126
    :cond_0
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 220
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->IS_INITIALIZED:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .line 213
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->MAKE_IMMUTABLE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->makeImmutable()V

    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/android/carsdk/protobuf/ByteString;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 206
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method protected final mergeUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object p1

    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 198
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public final newBuilderForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected parseUnknownField(ILcom/android/carsdk/protobuf/CodedInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-static {p1}, Lcom/android/carsdk/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 190
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/carsdk/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method public final toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 226
    invoke-virtual {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/carsdk/protobuf/MessageLiteToString;->toString(Lcom/android/carsdk/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visit(Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;",
            "TMessageType;)V"
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->VISIT:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    iget-object p2, p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    invoke-interface {p1, v0, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object p1

    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    return-void
.end method
