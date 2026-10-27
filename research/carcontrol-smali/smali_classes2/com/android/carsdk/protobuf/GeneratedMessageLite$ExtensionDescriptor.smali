.class final Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final isPacked:Z

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/android/carsdk/protobuf/WireFormat$FieldType;


# direct methods
.method constructor <init>(Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;ILcom/android/carsdk/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/android/carsdk/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    .line 926
    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 927
    iput-object p3, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    .line 928
    iput-boolean p4, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 929
    iput-boolean p5, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 1

    .line 977
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 916
    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public getEnumType()Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/android/carsdk/protobuf/WireFormat$JavaType;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/carsdk/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/android/carsdk/protobuf/WireFormat$FieldType;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/android/carsdk/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 940
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/android/carsdk/protobuf/MessageLite$Builder;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 0

    .line 971
    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public isPacked()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
