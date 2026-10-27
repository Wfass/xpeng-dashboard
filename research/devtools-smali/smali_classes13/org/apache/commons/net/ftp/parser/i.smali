.class public Lorg/apache/commons/net/ftp/parser/i;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "NTFTPEntryParser.java"


# instance fields
.field private final asV:Lorg/apache/commons/net/ftp/parser/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/i;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 3

    .line 78
    const-string v0, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/i;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 80
    new-instance p1, Lorg/apache/commons/net/ftp/d;

    const-string v0, "WINDOWS"

    const-string v1, "MM-dd-yy kk:mm"

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "MM-dd-yy kk:mm"

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/d;->fP(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/i;->asV:Lorg/apache/commons/net/ftp/parser/e;

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/i;->asV:Lorg/apache/commons/net/ftp/parser/e;

    check-cast v0, Lorg/apache/commons/net/ftp/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/a;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 87
    return-void
.end method


# virtual methods
.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 7

    .line 102
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 103
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/i;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/i;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/i;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/i;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/i;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/i;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 115
    :catch_0
    move-exception v6

    .line 120
    :try_start_1
    iget-object v6, p0, Lorg/apache/commons/net/ftp/parser/i;->asV:Lorg/apache/commons/net/ftp/parser/e;

    invoke-interface {v6, p1}, Lorg/apache/commons/net/ftp/parser/e;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_0

    .line 122
    :catch_1
    move-exception p1

    .line 128
    :goto_0
    if-eqz v5, :cond_3

    const-string p1, "."

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ".."

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 135
    const-string p1, "<DIR>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 138
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 142
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 143
    if-eqz v4, :cond_2

    .line 145
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 148
    :cond_2
    :goto_1
    return-object v0

    .line 130
    :cond_3
    :goto_2
    return-object v1

    .line 150
    :cond_4
    return-object v1
.end method

.method public vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 161
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy hh:mma"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
