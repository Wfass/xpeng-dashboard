.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;
.super Ljava/lang/Object;
.source "EOLangUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->TAG:Ljava/lang/String;

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
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    const-string v0, "#*"

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

    const-string v2, " view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void
.end method

.method public static getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 118
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_eo_lang:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_eo_lang:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "styleableRes"    # I
    .param p3, "def"    # Ljava/lang/CharSequence;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 75
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    return-object p3
.end method

.method public static getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "styleableRes"    # I
    .param p3, "def"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    return-object p3
.end method

.method public static handleCustomString(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 24
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 25
    return-void

    .line 27
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 28
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 29
    return-void

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    return-void

    .line 35
    :cond_2
    const-string v2, "#*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 36
    return-void

    .line 38
    :cond_3
    invoke-static {p0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setEOLangTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public static parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "resId"    # I
    .param p3, "def"    # [Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 101
    .local v1, "textRes":I
    if-gtz v1, :cond_0

    .line 102
    return-object p3

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 105
    .local v2, "textArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 106
    .local v3, "textList":[Ljava/lang/String;
    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 107
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 108
    .local v5, "textId":I
    if-lez v5, :cond_1

    .line 109
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 106
    .end local v5    # "textId":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-object v3
.end method

.method public static parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "resId"    # I
    .param p3, "def"    # [Ljava/lang/CharSequence;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 84
    .local v1, "textRes":I
    if-gtz v1, :cond_0

    .line 85
    return-object p3

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 88
    .local v2, "textArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 89
    .local v3, "textList":[Ljava/lang/String;
    move v4, v0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 90
    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 91
    .local v5, "textId":I
    if-lez v5, :cond_1

    .line 92
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 89
    .end local v5    # "textId":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-object v3
.end method

.method public static setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "styleableRes"    # I

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 58
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->checkCustomStr(Ljava/lang/String;Landroid/view/View;)V

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static setEOLangTag(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "splicingStr"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    return-object v1

    .line 162
    :cond_0
    const-string v0, "\\*#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    new-instance v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    invoke-direct {v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;-><init>()V

    .line 167
    .local v1, "info":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    const-string v2, ""

    .line 168
    .local v2, "pureStr":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "pureStr":Ljava/lang/String;
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 169
    aget-object v5, v0, v2

    const-string v6, "#\\*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "result":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 171
    new-instance v6, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    aget-object v7, v5, v3

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v6, "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    iget-object v7, v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .end local v5    # "result":[Ljava/lang/String;
    .end local v6    # "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_3
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_eo_lang:I

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 179
    return-object v4

    .line 164
    .end local v1    # "info":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    .end local v4    # "pureStr":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 44
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101014f

    aput v3, v1, v2

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 46
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 48
    .local v2, "textId":I
    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->checkCustomStr(Ljava/lang/String;Landroid/view/View;)V

    .line 51
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .end local v2    # "textId":I
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
