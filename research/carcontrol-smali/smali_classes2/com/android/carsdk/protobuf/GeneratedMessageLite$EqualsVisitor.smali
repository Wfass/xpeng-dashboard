.class Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EqualsVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;

.field static final NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1560
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;-><init>()V

    sput-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;

    .line 1562
    new-instance v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;-><init>()V

    sput-object v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    .line 1570
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitBooleanList(Lcom/android/carsdk/protobuf/Internal$BooleanList;Lcom/android/carsdk/protobuf/Internal$BooleanList;)Lcom/android/carsdk/protobuf/Internal$BooleanList;
    .locals 0

    .line 1741
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1742
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitByteString(ZLcom/android/carsdk/protobuf/ByteString;ZLcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;
    .locals 0

    if-ne p1, p3, :cond_0

    .line 1620
    invoke-virtual {p2, p4}, Lcom/android/carsdk/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1621
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitDouble(ZDZD)D
    .locals 0

    if-ne p1, p4, :cond_0

    cmpl-double p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    .line 1587
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitDoubleList(Lcom/android/carsdk/protobuf/Internal$DoubleList;Lcom/android/carsdk/protobuf/Internal$DoubleList;)Lcom/android/carsdk/protobuf/Internal$DoubleList;
    .locals 0

    .line 1757
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1758
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitExtensions(Lcom/android/carsdk/protobuf/FieldSet;Lcom/android/carsdk/protobuf/FieldSet;)Lcom/android/carsdk/protobuf/FieldSet;
    .locals 0
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

    .line 1783
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1784
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitFloat(ZFZF)F
    .locals 0

    if-ne p1, p3, :cond_0

    cmpl-float p1, p2, p4

    if-nez p1, :cond_0

    return p2

    .line 1595
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitFloatList(Lcom/android/carsdk/protobuf/Internal$FloatList;Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;
    .locals 0

    .line 1765
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1766
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitInt(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    .line 1578
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;
    .locals 0

    .line 1749
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1750
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitLazyMessage(ZLcom/android/carsdk/protobuf/LazyFieldLite;ZLcom/android/carsdk/protobuf/LazyFieldLite;)Lcom/android/carsdk/protobuf/LazyFieldLite;
    .locals 0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1725
    invoke-virtual {p2, p4}, Lcom/android/carsdk/protobuf/LazyFieldLite;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 1728
    :cond_1
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 0
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

    .line 1733
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1734
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitLong(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    .line 1603
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitLongList(Lcom/android/carsdk/protobuf/Internal$LongList;Lcom/android/carsdk/protobuf/Internal$LongList;)Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 0

    .line 1773
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1774
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
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

    .line 1801
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/MapFieldLite;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1802
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
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

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1715
    move-object v0, p1

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->equals(Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/carsdk/protobuf/MessageLite;)Z

    return-object p1

    .line 1712
    :cond_1
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1628
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1631
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1676
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1679
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1644
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1647
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1652
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1655
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1636
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1639
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1684
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1687
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1660
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1663
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1692
    move-object p1, p2

    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast p3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, p0, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->equals(Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;Lcom/android/carsdk/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1695
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofNotSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1701
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1668
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1671
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    .line 1611
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 1612
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method

.method public visitUnknownFields(Lcom/android/carsdk/protobuf/UnknownFieldSetLite;Lcom/android/carsdk/protobuf/UnknownFieldSetLite;)Lcom/android/carsdk/protobuf/UnknownFieldSetLite;
    .locals 0

    .line 1793
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1794
    :cond_0
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor;->NOT_EQUALS:Lcom/android/carsdk/protobuf/GeneratedMessageLite$EqualsVisitor$NotEqualsException;

    throw p1
.end method
