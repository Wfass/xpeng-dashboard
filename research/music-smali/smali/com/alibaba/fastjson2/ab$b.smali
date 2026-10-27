.class public final enum Lcom/alibaba/fastjson2/ab$b;
.super Ljava/lang/Enum;
.source "JSONWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/ab$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/ab$b;

.field public static final enum BeanToArray:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum FieldBased:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum LargeObject:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum MapSortField:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NotWriteSetClassName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum UnquoteFieldName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteBooleanAsNumber:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteEnumsUsingName:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNameAsSymbol:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteNulls:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WritePairAsJavaBean:Lcom/alibaba/fastjson2/ab$b;

.field public static final enum WriteThrowableClassName:Lcom/alibaba/fastjson2/ab$b;


# instance fields
.field public final mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1843
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "FieldBased"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    .line 1844
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "IgnoreNoneSerializable"

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    .line 1845
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "ErrorOnNoneSerializable"

    const/4 v2, 0x2

    const-wide/16 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    .line 1846
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "BeanToArray"

    const/4 v2, 0x3

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    .line 1847
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-wide/16 v1, 0x10

    const-string v3, "WriteNulls"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    .line 1848
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v3, "WriteMapNullValue"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteMapNullValue:Lcom/alibaba/fastjson2/ab$b;

    .line 1849
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "BrowserCompatible"

    const/4 v2, 0x6

    const-wide/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    .line 1850
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NullAsDefaultValue"

    const/4 v2, 0x7

    const-wide/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    .line 1851
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteBooleanAsNumber"

    const/16 v2, 0x8

    const-wide/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/ab$b;

    .line 1852
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNonStringValueAsString"

    const/16 v2, 0x9

    const-wide/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    .line 1853
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteClassName"

    const/16 v2, 0xa

    const-wide/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1854
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteRootClassName"

    const/16 v2, 0xb

    const-wide/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1855
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteHashMapArrayListClassName"

    const/16 v2, 0xc

    const-wide/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1856
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteDefaultValue"

    const/16 v2, 0xd

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    .line 1857
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteEnumsUsingName"

    const/16 v2, 0xe

    const-wide/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/ab$b;

    .line 1858
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteEnumUsingToString"

    const/16 v2, 0xf

    const-wide/16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/ab$b;

    .line 1859
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "IgnoreErrorGetter"

    const/16 v2, 0x10

    const-wide/32 v3, 0x8000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

    .line 1860
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "PrettyFormat"

    const/16 v2, 0x11

    const-wide/32 v3, 0x10000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    .line 1861
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "ReferenceDetection"

    const/16 v2, 0x12

    const-wide/32 v3, 0x20000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    .line 1862
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNameAsSymbol"

    const/16 v2, 0x13

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/ab$b;

    .line 1863
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteBigDecimalAsPlain"

    const/16 v2, 0x14

    const-wide/32 v3, 0x80000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/ab$b;

    .line 1864
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "UseSingleQuotes"

    const/16 v2, 0x15

    const-wide/32 v3, 0x100000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

    .line 1865
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "MapSortField"

    const/16 v2, 0x16

    const-wide/32 v3, 0x200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->MapSortField:Lcom/alibaba/fastjson2/ab$b;

    .line 1866
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNullListAsEmpty"

    const/16 v2, 0x17

    const-wide/32 v3, 0x400000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    .line 1870
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNullStringAsEmpty"

    const/16 v2, 0x18

    const-wide/32 v3, 0x800000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    .line 1874
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNullNumberAsZero"

    const/16 v2, 0x19

    const-wide/32 v3, 0x1000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    .line 1878
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNullBooleanAsFalse"

    const/16 v2, 0x1a

    const-wide/32 v3, 0x2000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    .line 1883
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteEmptyArray"

    const/16 v2, 0x1b

    const-wide/32 v3, 0x4000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    .line 1884
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteNonStringKeyAsString"

    const/16 v2, 0x1c

    const-wide/32 v3, 0x8000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    .line 1888
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WritePairAsJavaBean"

    const/16 v2, 0x1d

    const-wide/32 v3, 0x10000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WritePairAsJavaBean:Lcom/alibaba/fastjson2/ab$b;

    .line 1893
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "OptimizedForAscii"

    const/16 v2, 0x1e

    const-wide/32 v3, 0x20000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

    .line 1901
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "EscapeNoneAscii"

    const/16 v2, 0x1f

    const-wide/32 v3, 0x40000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    .line 1905
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteByteArrayAsBase64"

    const/16 v2, 0x20

    const-wide v3, 0x80000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    .line 1910
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "IgnoreNonFieldGetter"

    const/16 v2, 0x21

    const-wide v3, 0x100000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    .line 1915
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "LargeObject"

    const/16 v2, 0x22

    const-wide v3, 0x200000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->LargeObject:Lcom/alibaba/fastjson2/ab$b;

    .line 1920
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteLongAsString"

    const/16 v2, 0x23

    const-wide v3, 0x400000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    .line 1925
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "BrowserSecure"

    const/16 v2, 0x24

    const-wide v3, 0x800000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    .line 1926
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteEnumUsingOrdinal"

    const/16 v2, 0x25

    const-wide v3, 0x1000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/ab$b;

    .line 1931
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "WriteThrowableClassName"

    const/16 v2, 0x26

    const-wide v3, 0x2000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteThrowableClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1936
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "UnquoteFieldName"

    const/16 v2, 0x27

    const-wide v3, 0x4000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->UnquoteFieldName:Lcom/alibaba/fastjson2/ab$b;

    .line 1941
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteSetClassName"

    const/16 v2, 0x28

    const-wide v3, 0x8000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteSetClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1946
    new-instance v0, Lcom/alibaba/fastjson2/ab$b;

    const-string v1, "NotWriteNumberClassName"

    const/16 v2, 0x29

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/ab$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    .line 1842
    invoke-static {}, Lcom/alibaba/fastjson2/ab$b;->a()[Lcom/alibaba/fastjson2/ab$b;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/ab$b;->$VALUES:[Lcom/alibaba/fastjson2/ab$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1950
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1951
    iput-wide p3, p0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    return-void
.end method

.method private static synthetic a()[Lcom/alibaba/fastjson2/ab$b;
    .locals 3

    const/16 v0, 0x2a

    .line 1842
    new-array v0, v0, [Lcom/alibaba/fastjson2/ab$b;

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteMapNullValue:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->MapSortField:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WritePairAsJavaBean:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->EscapeNoneAscii:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->LargeObject:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteThrowableClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->UnquoteFieldName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteSetClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/ab$b;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/ab$b;
    .locals 1

    .line 1842
    const-class v0, Lcom/alibaba/fastjson2/ab$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/ab$b;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/ab$b;
    .locals 1

    .line 1842
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->$VALUES:[Lcom/alibaba/fastjson2/ab$b;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/ab$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/ab$b;

    return-object v0
.end method
