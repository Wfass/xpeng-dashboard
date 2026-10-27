.class Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashCodeVisitor"
.end annotation


# instance fields
.field private hashCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1817
    iput v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    .line 1811
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I
    .locals 0

    .line 1811
    iget p0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;I)I
    .locals 0

    .line 1811
    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p1
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 0

    .line 1822
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Lcom/android/carsdk/protobuf/Internal;->hashBoolean(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p2
.end method

.method public visitBooleanList(Lcom/android/carsdk/protobuf/Internal$BooleanList;Lcom/android/carsdk/protobuf/Internal$BooleanList;)Lcom/android/carsdk/protobuf/Internal$BooleanList;
    .locals 1

    .line 1956
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitByteString(ZLcom/android/carsdk/protobuf/ByteString;ZLcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;
    .locals 0

    .line 1861
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/ByteString;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitDouble(ZDZD)D
    .locals 0

    .line 1835
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, Lcom/android/carsdk/protobuf/Internal;->hashLong(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-wide p2
.end method

.method public visitDoubleList(Lcom/android/carsdk/protobuf/Internal$DoubleList;Lcom/android/carsdk/protobuf/Internal$DoubleList;)Lcom/android/carsdk/protobuf/Internal$DoubleList;
    .locals 1

    .line 1968
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
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

    .line 1988
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/FieldSet;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .locals 0

    .line 1841
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p2
.end method

.method public visitFloatList(Lcom/android/carsdk/protobuf/Internal$FloatList;Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;
    .locals 1

    .line 1974
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitInt(ZIZI)I
    .locals 0

    .line 1828
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return p2
.end method

.method public visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;
    .locals 1

    .line 1962
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitLazyMessage(ZLcom/android/carsdk/protobuf/LazyFieldLite;ZLcom/android/carsdk/protobuf/LazyFieldLite;)Lcom/android/carsdk/protobuf/LazyFieldLite;
    .locals 0

    .line 1944
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/LazyFieldLite;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 1
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

    .line 1950
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitLong(ZJZJ)J
    .locals 0

    .line 1847
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Lcom/android/carsdk/protobuf/Internal;->hashLong(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-wide p2
.end method

.method public visitLongList(Lcom/android/carsdk/protobuf/Internal$LongList;Lcom/android/carsdk/protobuf/Internal$LongList;)Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 1

    .line 1980
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitMap(Lcom/android/carsdk/protobuf/MapFieldLite;Lcom/android/carsdk/protobuf/MapFieldLite;)Lcom/android/carsdk/protobuf/MapFieldLite;
    .locals 1
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

    .line 2002
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/MapFieldLite;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/carsdk/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1929
    instance-of p2, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    if-eqz p2, :cond_0

    .line 1930
    move-object p2, p1

    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {p2, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->hashCode(Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;)I

    move-result p2

    goto :goto_0

    .line 1932
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 p2, 0x25

    .line 1937
    :goto_0
    iget v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1867
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p3}, Lcom/android/carsdk/protobuf/Internal;->hashBoolean(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1903
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1879
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/carsdk/protobuf/Internal;->hashLong(J)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1885
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1873
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1909
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1891
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    move-object p3, p2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/carsdk/protobuf/Internal;->hashLong(J)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1915
    check-cast p2, Lcom/android/carsdk/protobuf/MessageLite;

    check-cast p3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public visitOneofNotSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1921
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1897
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1854
    iget p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p2
.end method

.method public visitUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;
    .locals 1

    .line 1996
    iget p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$HashCodeVisitor;->hashCode:I

    return-object p1
.end method
