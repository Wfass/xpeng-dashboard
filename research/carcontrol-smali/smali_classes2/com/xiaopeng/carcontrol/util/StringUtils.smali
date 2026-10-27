.class public Lcom/xiaopeng/carcontrol/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalizeFirstCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "^[a-zA-Z]*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 13
    aget-char v1, p0, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    .line 14
    aget-char v1, p0, v0

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    aput-char v1, p0, v0

    :cond_1
    const/4 v0, 0x1

    .line 16
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 17
    aget-char v1, p0, v0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    .line 18
    aget-char v1, p0, v0

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    aput-char v1, p0, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method
