.class public Lorg/apache/commons/net/ftp/parser/k;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "OS2FTPEntryParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/k;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 73
    const-string v0, "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/k;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 75
    return-void
.end method


# virtual methods
.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 6

    .line 91
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/k;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/k;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    :try_start_0
    invoke-super {p0, v4}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    .line 110
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DIR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DIR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_2

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 121
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 126
    return-object v0

    .line 128
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 140
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "OS/2"

    const-string v2, "MM-dd-yy HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
