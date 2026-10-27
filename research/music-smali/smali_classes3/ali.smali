.class public final Lali;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field private static final c:Ljava/nio/charset/Charset;

.field private static final d:Ljava/nio/charset/Charset;

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lali;->c:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SJIS"

    .line 39
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 44
    :goto_0
    sput-object v1, Lali;->a:Ljava/nio/charset/Charset;

    :try_start_1
    const-string v1, "GB2312"

    .line 50
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    .line 55
    :goto_1
    sput-object v1, Lali;->b:Ljava/nio/charset/Charset;

    :try_start_2
    const-string v1, "EUC_JP"

    .line 61
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :catch_2
    sput-object v0, Lali;->d:Ljava/nio/charset/Charset;

    .line 68
    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    sget-object v1, Lali;->c:Ljava/nio/charset/Charset;

    .line 69
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lali;->d:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_2

    sget-object v1, Lali;->c:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lali;->e:Z

    return-void
.end method
