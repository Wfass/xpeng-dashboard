.class public Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2012
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public visitBooleanList(Lcom/android/carsdk/protobuf/Internal$BooleanList;Lcom/android/carsdk/protobuf/Internal$BooleanList;)Lcom/android/carsdk/protobuf/Internal$BooleanList;
    .locals 3

    .line 2149
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 2150
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2152
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2153
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$BooleanList;

    move-result-object p1

    .line 2155
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitByteString(ZLcom/android/carsdk/protobuf/ByteString;ZLcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public visitDouble(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public visitDoubleList(Lcom/android/carsdk/protobuf/Internal$DoubleList;Lcom/android/carsdk/protobuf/Internal$DoubleList;)Lcom/android/carsdk/protobuf/Internal$DoubleList;
    .locals 3

    .line 2177
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 2178
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2180
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2181
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$DoubleList;

    move-result-object p1

    .line 2183
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitExtensions(Lcom/android/carsdk/protobuf/FieldSet;Lcom/android/carsdk/protobuf/FieldSet;)Lcom/android/carsdk/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/FieldSet<",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/android/carsdk/protobuf/FieldSet<",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/android/carsdk/protobuf/FieldSet<",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 2221
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/FieldSet;->clone()Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object p1

    .line 2224
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/FieldSet;->mergeFrom(Lcom/android/carsdk/protobuf/FieldSet;)V

    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public visitFloatList(Lcom/android/carsdk/protobuf/Internal$FloatList;Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;
    .locals 3

    .line 2191
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 2192
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2194
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2195
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object p1

    .line 2197
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitInt(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;
    .locals 3

    .line 2163
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 2164
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2166
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2167
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    .line 2169
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitLazyMessage(ZLcom/android/carsdk/protobuf/LazyFieldLite;ZLcom/android/carsdk/protobuf/LazyFieldLite;)Lcom/android/carsdk/protobuf/LazyFieldLite;
    .locals 0

    .line 2129
    invoke-virtual {p2, p4}, Lcom/android/carsdk/protobuf/LazyFieldLite;->merge(Lcom/android/carsdk/protobuf/LazyFieldLite;)V

    return-object p2
.end method

.method public visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    .line 2135
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 2136
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2138
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2139
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 2141
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitLong(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public visitLongList(Lcom/android/carsdk/protobuf/Internal$LongList;Lcom/android/carsdk/protobuf/Internal$LongList;)Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 3

    .line 2205
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 2206
    invoke-interface {p2}, Lcom/android/carsdk/protobuf/Internal$LongList;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2208
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2209
    invoke-interface {p1, v1}, Lcom/android/carsdk/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$LongList;

    move-result-object p1

    .line 2211
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public visitMap(Lcom/android/carsdk/protobuf/MapFieldLite;Lcom/android/carsdk/protobuf/MapFieldLite;)Lcom/android/carsdk/protobuf/MapFieldLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/android/carsdk/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2238
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/MapFieldLite;->mergeFrom(Lcom/android/carsdk/protobuf/MapFieldLite;)V

    return-object p1
.end method

.method public visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2117
    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite;->toBuilder()Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/MessageLite$Builder;->build()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 2093
    check-cast p2, Lcom/android/carsdk/protobuf/LazyFieldLite;

    .line 2094
    check-cast p3, Lcom/android/carsdk/protobuf/LazyFieldLite;

    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/LazyFieldLite;->merge(Lcom/android/carsdk/protobuf/LazyFieldLite;)V

    return-object p2

    :cond_0
    return-object p3
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 2103
    check-cast p2, Lcom/android/carsdk/protobuf/MessageLite;

    check-cast p3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .locals 0

    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public visitUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 2232
    invoke-static {}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2233
    :cond_0
    invoke-static {p1, p2}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;

    move-result-object p1

    :goto_0
    return-object p1
.end method
