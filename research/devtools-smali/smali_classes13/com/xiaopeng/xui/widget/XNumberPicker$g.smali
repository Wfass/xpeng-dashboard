.class Lcom/xiaopeng/xui/widget/XNumberPicker$g;
.super Ljava/lang/Object;
.source "XNumberPicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XNumberPicker$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field mZeroDigit:C


# direct methods
.method constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mBuilder:Ljava/lang/StringBuilder;

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mArgs:[Ljava/lang/Object;

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->a(Ljava/util/Locale;)V

    .line 157
    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->c(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mFmt:Ljava/util/Formatter;

    .line 161
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->b(Ljava/util/Locale;)C

    move-result p1

    iput-char p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mZeroDigit:C

    .line 162
    return-void
.end method

.method private static b(Ljava/util/Locale;)C
    .locals 0

    .line 176
    const/16 p0, 0x30

    return p0
.end method

.method private c(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2

    .line 180
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 166
    iget-char v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mZeroDigit:C

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->b(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 167
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->a(Ljava/util/Locale;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mFmt:Ljava/util/Formatter;

    const-string v0, "%02d"

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$g;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
