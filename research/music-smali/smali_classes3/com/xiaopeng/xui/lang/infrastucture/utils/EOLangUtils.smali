.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;
.super Ljava/lang/Object;
.source "EOLangUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EOLangUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCustomStr(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "#*"

    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCustomStr. Not custom str. str:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " view:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    .locals 2

    .line 118
    sget v0, Lbyg$h;->x_eo_lang:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget v1, Lbyg$h;->x_eo_lang:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p3
.end method

.method public static handleCustomString(Landroid/view/View;)V
    .locals 3

    .line 24
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string v2, "#*"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 38
    :cond_3
    invoke-static {p0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setEOLangTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-gtz p1, :cond_0

    return-object p3

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    move p3, v0

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 107
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method public static parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-gtz p1, :cond_0

    return-object p3

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    move p3, v0

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method public static setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->checkCustomStr(Ljava/lang/String;Landroid/view/View;)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static setEOLangTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\*#"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 163
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 168
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 169
    aget-object v4, p1, v2

    const-string v5, "#\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 170
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 171
    new-instance v5, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-direct {v5, v6, v7}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v6, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_3
    sget p1, Lbyg$h;->x_eo_lang:I

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v3

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    .line 44
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101014f

    aput v3, v1, v2

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->checkCustomStr(Ljava/lang/String;Landroid/view/View;)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
