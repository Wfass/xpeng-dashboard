.class public Lcom/xiaopeng/carcontrol/util/SpannableUtil;
.super Ljava/lang/Object;
.source "SpannableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBottomAlignStr(Ljava/lang/String;FII)Landroid/text/SpannableString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "scale",
            "startIndex",
            "endIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p3, v1, :cond_2

    if-lt p2, p3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 p1, 0x11

    invoke-virtual {v0, p0, p2, p3, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-object v0
.end method
