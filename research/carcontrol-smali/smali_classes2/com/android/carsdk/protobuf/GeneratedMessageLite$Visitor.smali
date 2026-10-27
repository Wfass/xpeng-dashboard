.class public interface abstract Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract visitBoolean(ZZZZ)Z
.end method

.method public abstract visitBooleanList(Lcom/android/carsdk/protobuf/Internal$BooleanList;Lcom/android/carsdk/protobuf/Internal$BooleanList;)Lcom/android/carsdk/protobuf/Internal$BooleanList;
.end method

.method public abstract visitByteString(ZLcom/android/carsdk/protobuf/ByteString;ZLcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;
.end method

.method public abstract visitDouble(ZDZD)D
.end method

.method public abstract visitDoubleList(Lcom/android/carsdk/protobuf/Internal$DoubleList;Lcom/android/carsdk/protobuf/Internal$DoubleList;)Lcom/android/carsdk/protobuf/Internal$DoubleList;
.end method

.method public abstract visitExtensions(Lcom/android/carsdk/protobuf/FieldSet;Lcom/android/carsdk/protobuf/FieldSet;)Lcom/android/carsdk/protobuf/FieldSet;
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
.end method

.method public abstract visitFloat(ZFZF)F
.end method

.method public abstract visitFloatList(Lcom/android/carsdk/protobuf/Internal$FloatList;Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;
.end method

.method public abstract visitInt(ZIZI)I
.end method

.method public abstract visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;
.end method

.method public abstract visitLazyMessage(ZLcom/android/carsdk/protobuf/LazyFieldLite;ZLcom/android/carsdk/protobuf/LazyFieldLite;)Lcom/android/carsdk/protobuf/LazyFieldLite;
.end method

.method public abstract visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
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
.end method

.method public abstract visitLong(ZJZJ)J
.end method

.method public abstract visitLongList(Lcom/android/carsdk/protobuf/Internal$LongList;Lcom/android/carsdk/protobuf/Internal$LongList;)Lcom/android/carsdk/protobuf/Internal$LongList;
.end method

.method public abstract visitMap(Lcom/android/carsdk/protobuf/MapFieldLite;Lcom/android/carsdk/protobuf/MapFieldLite;)Lcom/android/carsdk/protobuf/MapFieldLite;
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
.end method

.method public abstract visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitOneofNotSet(Z)V
.end method

.method public abstract visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract visitUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;
.end method
