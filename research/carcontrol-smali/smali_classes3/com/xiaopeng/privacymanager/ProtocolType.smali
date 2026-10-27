.class public Lcom/xiaopeng/privacymanager/ProtocolType;
.super Ljava/lang/Object;
.source "ProtocolType.java"


# static fields
.field public static final EN_APP_STORE:I = 0xcf

.field public static final EN_MAP:I = 0x7d1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EN_MAP_LOCATION_AUTH:I = 0xcb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EN_MAP_USER_AGREEMENT:I = 0xca
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EN_SPEECH_DATA_AUTH:I = 0xcc

.field public static final EN_SPEECH_PRIVACY_DISCLAIMER:I = 0xd0

.field public static final EN_SPEECH_USER_EXPERIENCE:I = 0xcd

.field public static final EN_USER_EXPERIENCE:I = 0xce

.field public static final EN_XMART:I = 0xc9

.field public static final EN_XPILOT_USER_USER_EXPERIENCE:I = 0xd1

.field public static final NONE:I = 0x0

.field public static final ZH_APP_STORE:I = 0x69

.field public static final ZH_BROWSER_PRIVACY_POLICY:I = 0x6d

.field public static final ZH_BROWSER_USER_AGREEMENT:I = 0x6c

.field public static final ZH_MAP_BIND:I = 0x6b

.field public static final ZH_SPEECH:I = 0x3e9

.field public static final ZH_SPEECH_POLICY:I = 0x68

.field public static final ZH_SPEECH_PRIVACY_DISCLAIMER:I = 0x6a

.field public static final ZH_SPEECH_USER_EXPERIENCE:I = 0x67

.field public static final ZH_USER_AGREEMENT:I = 0x66

.field public static final ZH_XMART:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubTypes(I)[I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x3e9

    if-ne p0, v1, :cond_0

    new-array p0, v0, [I

    .line 60
    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    const/16 v1, 0x7d1

    if-ne p0, v1, :cond_1

    new-array p0, v0, [I

    .line 62
    fill-array-data p0, :array_1

    return-object p0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x67
        0x68
    .end array-data

    :array_1
    .array-data 4
        0xca
        0xcb
    .end array-data
.end method
