.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;
.source "FTPFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7d0cc2180c52bb3cL


# instance fields
.field private _date:Ljava/util/Calendar;

.field private _group:Ljava/lang/String;

.field private _hardLinkCount:I

.field private _link:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private final _permissions:[[Z

.field private _rawListing:Ljava/lang/String;

.field private _size:J

.field private _type:I

.field private _user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Z

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    .line 74
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 82
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[Z

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    .line 94
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 95
    const/4 p1, 0x3

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 98
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 99
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 100
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 101
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 103
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 360
    return-void
.end method

.method public b(IIZ)V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object p1, v0, p1

    aput-boolean p3, p1, p2

    .line 389
    return-void
.end method

.method public fV(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public fW(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public fz(I)V
    .locals 0

    .line 262
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 263
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 138
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 239
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 240
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 196
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 197
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 421
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->uY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uY()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-object v0
.end method
