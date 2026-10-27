.class public final enum Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
.super Ljava/lang/Enum;
.source "VuiErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

.field public static final enum ID_EMPTY:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

.field public static final enum ID_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

.field public static final enum ID_REPEAT:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

.field public static final enum UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

.field public static final enum UPDATE_OPERATE_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 10
    new-instance v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    const-string v1, "UNSPECIFIED"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    .line 11
    new-instance v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    const-string v1, "ID_REPEAT"

    const-string v2, "ID\u91cd\u590d"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_REPEAT:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    .line 12
    new-instance v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    const-string v1, "ID_ILLEGAL"

    const-string v2, "ID\u4e0d\u5408\u6cd5"

    const/4 v6, 0x2

    const/16 v7, 0x65

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    .line 13
    new-instance v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    const-string v1, "ID_EMPTY"

    const-string v2, "ID\u4e3a\u7a7a"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_EMPTY:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    const-string v1, "UPDATE_OPERATE_ILLEGAL"

    const-string v2, "\u66f4\u65b0\u64cd\u4f5c\u4e0d\u5408\u6cd5"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v5, v2}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UPDATE_OPERATE_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    sget-object v1, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_REPEAT:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->ID_EMPTY:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UPDATE_OPERATE_ILLEGAL:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->$VALUES:[Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->code:I

    .line 21
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->description:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static getByCode(I)Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    .locals 5
    .param p0, "code"    # I

    .line 26
    invoke-static {}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->values()[Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 27
    .local v3, "value":Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->getCode()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 28
    return-object v3

    .line 26
    .end local v3    # "value":Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->$VALUES:[Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 39
    iput p1, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->code:I

    .line 40
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->description:Ljava/lang/String;

    .line 48
    return-void
.end method
