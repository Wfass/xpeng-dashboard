.class public final enum Lcom/alibaba/fastjson2/JSONReader$Feature;
.super Ljava/lang/Enum;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/JSONReader$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;


# instance fields
.field public final mask:J


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 3

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4458
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4459
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "FieldBased"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4460
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "IgnoreNoneSerializable"

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4464
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "ErrorOnNoneSerializable"

    const/4 v2, 0x2

    const-wide/16 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4465
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "SupportArrayToBean"

    const/4 v2, 0x3

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4466
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "InitStringFieldAsEmpty"

    const/4 v2, 0x4

    const-wide/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4470
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "SupportAutoType"

    const/4 v2, 0x5

    const-wide/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4472
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "SupportSmartMatch"

    const/4 v2, 0x6

    const-wide/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4473
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "UseNativeObject"

    const/4 v2, 0x7

    const-wide/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4474
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "SupportClassForName"

    const/16 v2, 0x8

    const-wide/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4475
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "IgnoreSetNullValue"

    const/16 v2, 0x9

    const-wide/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4476
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "UseDefaultConstructorAsPossible"

    const/16 v2, 0xa

    const-wide/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4477
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "UseBigDecimalForFloats"

    const/16 v2, 0xb

    const-wide/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4478
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "UseBigDecimalForDoubles"

    const/16 v2, 0xc

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4479
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "ErrorOnEnumNotMatch"

    const/16 v2, 0xd

    const-wide/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4480
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "TrimString"

    const/16 v2, 0xe

    const-wide/16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4481
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "ErrorOnNotSupportAutoType"

    const/16 v2, 0xf

    const-wide/32 v3, 0x8000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4482
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "DuplicateKeyValueAsArray"

    const/16 v2, 0x10

    const-wide/32 v3, 0x10000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4483
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "AllowUnQuotedFieldNames"

    const/16 v2, 0x11

    const-wide/32 v3, 0x20000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4484
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "NonStringKeyAsString"

    const/16 v2, 0x12

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4488
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "Base64StringAsByteArray"

    const/16 v2, 0x13

    const-wide/32 v3, 0x80000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4493
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "IgnoreCheckClose"

    const/16 v2, 0x14

    const-wide/32 v3, 0x100000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4497
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "ErrorOnNullForPrimitives"

    const/16 v2, 0x15

    const-wide/32 v3, 0x200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4502
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "NullOnError"

    const/16 v2, 0x16

    const-wide/32 v3, 0x400000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4507
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "IgnoreAutoTypeNotMatch"

    const/16 v2, 0x17

    const-wide/32 v3, 0x800000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4512
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "NonZeroNumberCastToBooleanAsTrue"

    const/16 v2, 0x18

    const-wide/32 v3, 0x1000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4517
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "IgnoreNullPropertyValue"

    const/16 v2, 0x19

    const-wide/32 v3, 0x2000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4522
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    const-string v1, "ErrorOnUnknownProperties"

    const/16 v2, 0x1a

    const-wide/32 v3, 0x4000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 4458
    invoke-static {}, Lcom/alibaba/fastjson2/JSONReader$Feature;->$values()[Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 4526
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4527
    iput-wide p3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    return-void
.end method

.method public static of([Lcom/alibaba/fastjson2/JSONReader$Feature;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 4537
    :cond_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 4538
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 1

    .line 4458
    const-class v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 1

    .line 4458
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/JSONReader$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-object v0
.end method
