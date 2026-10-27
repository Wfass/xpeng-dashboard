.class public final enum Lcom/alibaba/fastjson/serializer/SerializerFeature;
.super Ljava/lang/Enum;
.source "SerializerFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final WRITE_MAP_NULL_FEATURES:I

.field public static final enum WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field public static final enum WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final mask:I


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 3

    const/16 v0, 0x1e

    .line 21
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    const-string v2, "QuoteFieldNames"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "UseSingleQuotes"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteMapNullValue"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteEnumUsingToString"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteEnumUsingName"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "UseISO8601DateFormat"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 46
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNullListAsEmpty"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNullStringAsEmpty"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 54
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNullNumberAsZero"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 58
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNullBooleanAsFalse"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 62
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "SkipTransientField"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 66
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "SortField"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 70
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteTabAsSpecial"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteTabAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 75
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "PrettyFormat"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 79
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteClassName"

    const/16 v3, 0xe

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 84
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "DisableCircularReferenceDetect"

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 89
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteSlashAsSpecial"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 94
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "BrowserCompatible"

    const/16 v3, 0x11

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 99
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteDateUseDateFormat"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 104
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "NotWriteRootClassName"

    const/16 v3, 0x13

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 110
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "DisableCheckSpecialChar"

    const/16 v3, 0x14

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 115
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "BeanToArray"

    const/16 v3, 0x15

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 120
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNonStringKeyAsString"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 125
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "NotWriteDefaultValue"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 130
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "BrowserSecure"

    const/16 v3, 0x18

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "IgnoreNonFieldGetter"

    const/16 v3, 0x19

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 140
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteNonStringValueAsString"

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 145
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "IgnoreErrorGetter"

    const/16 v3, 0x1b

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 150
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "WriteBigDecimalAsPlain"

    const/16 v3, 0x1c

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 155
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const-string v2, "MapSortField"

    const/16 v3, 0x1d

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 21
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->$values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 157
    new-array v0, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 158
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 160
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 161
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 162
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 163
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    return-void
.end method

.method public static config(ILcom/alibaba/fastjson/serializer/SerializerFeature;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 180
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p0, p1

    goto :goto_0

    .line 182
    :cond_0
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int p1, p1

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 0

    or-int/2addr p0, p1

    .line 175
    iget p1, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 0

    .line 171
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 195
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 196
    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .line 21
    const-class v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->$VALUES:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/serializer/SerializerFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object v0
.end method


# virtual methods
.method public final getMask()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    return v0
.end method
