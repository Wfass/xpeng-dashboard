.class public final enum Lcom/alibaba/fastjson2/u$d;
.super Ljava/lang/Enum;
.source "JSONReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/u$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/u$d;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

.field public static final enum Base64StringAsByteArray:Lcom/alibaba/fastjson2/u$d;

.field public static final enum DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

.field public static final enum ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

.field public static final enum ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/u$d;

.field public static final enum ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

.field public static final enum ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

.field public static final enum ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

.field public static final enum FieldBased:Lcom/alibaba/fastjson2/u$d;

.field public static final enum IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

.field public static final enum IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

.field public static final enum IgnoreNoneSerializable:Lcom/alibaba/fastjson2/u$d;

.field public static final enum IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

.field public static final enum IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

.field public static final enum NonStringKeyAsString:Lcom/alibaba/fastjson2/u$d;

.field public static final enum NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/u$d;

.field public static final enum NullOnError:Lcom/alibaba/fastjson2/u$d;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson2/u$d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SupportClassForName:Lcom/alibaba/fastjson2/u$d;

.field public static final enum SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

.field public static final enum TrimString:Lcom/alibaba/fastjson2/u$d;

.field public static final enum UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/u$d;

.field public static final enum UseBigDecimalForFloats:Lcom/alibaba/fastjson2/u$d;

.field public static final enum UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/u$d;

.field public static final enum UseNativeObject:Lcom/alibaba/fastjson2/u$d;


# instance fields
.field public final mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4459
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "FieldBased"

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    .line 4460
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "IgnoreNoneSerializable"

    const/4 v2, 0x1

    const-wide/16 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    .line 4464
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "ErrorOnNoneSerializable"

    const/4 v2, 0x2

    const-wide/16 v3, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    .line 4465
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "SupportArrayToBean"

    const/4 v2, 0x3

    const-wide/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    .line 4466
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "InitStringFieldAsEmpty"

    const/4 v2, 0x4

    const-wide/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    .line 4470
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "SupportAutoType"

    const/4 v2, 0x5

    const-wide/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    .line 4472
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "SupportSmartMatch"

    const/4 v2, 0x6

    const-wide/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    .line 4473
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "UseNativeObject"

    const/4 v2, 0x7

    const-wide/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->UseNativeObject:Lcom/alibaba/fastjson2/u$d;

    .line 4474
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "SupportClassForName"

    const/16 v2, 0x8

    const-wide/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->SupportClassForName:Lcom/alibaba/fastjson2/u$d;

    .line 4475
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "IgnoreSetNullValue"

    const/16 v2, 0x9

    const-wide/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    .line 4476
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "UseDefaultConstructorAsPossible"

    const/16 v2, 0xa

    const-wide/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/u$d;

    .line 4477
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "UseBigDecimalForFloats"

    const/16 v2, 0xb

    const-wide/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/u$d;

    .line 4478
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "UseBigDecimalForDoubles"

    const/16 v2, 0xc

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/u$d;

    .line 4479
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "ErrorOnEnumNotMatch"

    const/16 v2, 0xd

    const-wide/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    .line 4480
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "TrimString"

    const/16 v2, 0xe

    const-wide/16 v3, 0x4000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->TrimString:Lcom/alibaba/fastjson2/u$d;

    .line 4481
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "ErrorOnNotSupportAutoType"

    const/16 v2, 0xf

    const-wide/32 v3, 0x8000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

    .line 4482
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "DuplicateKeyValueAsArray"

    const/16 v2, 0x10

    const-wide/32 v3, 0x10000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    .line 4483
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "AllowUnQuotedFieldNames"

    const/16 v2, 0x11

    const-wide/32 v3, 0x20000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

    .line 4484
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "NonStringKeyAsString"

    const/16 v2, 0x12

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->NonStringKeyAsString:Lcom/alibaba/fastjson2/u$d;

    .line 4488
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "Base64StringAsByteArray"

    const/16 v2, 0x13

    const-wide/32 v3, 0x80000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/u$d;

    .line 4493
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "IgnoreCheckClose"

    const/16 v2, 0x14

    const-wide/32 v3, 0x100000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    .line 4497
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "ErrorOnNullForPrimitives"

    const/16 v2, 0x15

    const-wide/32 v3, 0x200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    .line 4502
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "NullOnError"

    const/16 v2, 0x16

    const-wide/32 v3, 0x400000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->NullOnError:Lcom/alibaba/fastjson2/u$d;

    .line 4507
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "IgnoreAutoTypeNotMatch"

    const/16 v2, 0x17

    const-wide/32 v3, 0x800000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

    .line 4512
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "NonZeroNumberCastToBooleanAsTrue"

    const/16 v2, 0x18

    const-wide/32 v3, 0x1000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/u$d;

    .line 4517
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "IgnoreNullPropertyValue"

    const/16 v2, 0x19

    const-wide/32 v3, 0x2000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    .line 4522
    new-instance v0, Lcom/alibaba/fastjson2/u$d;

    const-string v1, "ErrorOnUnknownProperties"

    const/16 v2, 0x1a

    const-wide/32 v3, 0x4000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

    .line 4458
    invoke-static {}, Lcom/alibaba/fastjson2/u$d;->a()[Lcom/alibaba/fastjson2/u$d;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/u$d;->$VALUES:[Lcom/alibaba/fastjson2/u$d;

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
    iput-wide p3, p0, Lcom/alibaba/fastjson2/u$d;->mask:J

    return-void
.end method

.method private static synthetic a()[Lcom/alibaba/fastjson2/u$d;
    .locals 3

    const/16 v0, 0x1b

    .line 4458
    new-array v0, v0, [Lcom/alibaba/fastjson2/u$d;

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->UseNativeObject:Lcom/alibaba/fastjson2/u$d;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportClassForName:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->TrimString:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->NonStringKeyAsString:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreCheckClose:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->NullOnError:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/u$d;
    .locals 1

    .line 4458
    const-class v0, Lcom/alibaba/fastjson2/u$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/u$d;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/u$d;
    .locals 1

    .line 4458
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->$VALUES:[Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/u$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/u$d;

    return-object v0
.end method
