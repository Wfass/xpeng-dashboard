.class public final enum Lcom/xiaopeng/lib/http/Security$EncryptionType;
.super Ljava/lang/Enum;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/http/Security$EncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/http/Security$EncryptionType;

.field public static final enum IRDETO:Lcom/xiaopeng/lib/http/Security$EncryptionType;

.field public static final enum NONE_ENCODING:Lcom/xiaopeng/lib/http/Security$EncryptionType;

.field public static final enum TEE_RANDOM_KEY:Lcom/xiaopeng/lib/http/Security$EncryptionType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;

    const-string v1, "IRDETO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/lib/http/Security$EncryptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->IRDETO:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    .line 38
    new-instance v1, Lcom/xiaopeng/lib/http/Security$EncryptionType;

    const-string v4, "TEE_RANDOM_KEY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/xiaopeng/lib/http/Security$EncryptionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/lib/http/Security$EncryptionType;->TEE_RANDOM_KEY:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    .line 42
    new-instance v4, Lcom/xiaopeng/lib/http/Security$EncryptionType;

    const-string v6, "NONE_ENCODING"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/xiaopeng/lib/http/Security$EncryptionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaopeng/lib/http/Security$EncryptionType;->NONE_ENCODING:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    new-array v6, v7, [Lcom/xiaopeng/lib/http/Security$EncryptionType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 30
    sput-object v6, Lcom/xiaopeng/lib/http/Security$EncryptionType;->$VALUES:[Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 30
    const-class v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->$VALUES:[Lcom/xiaopeng/lib/http/Security$EncryptionType;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/http/Security$EncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->value:I

    return v0
.end method
