.class public Lorg/apache/commons/net/ftp/b;
.super Lorg/apache/commons/net/e;
.source "FTP.java"


# instance fields
.field protected aqk:I

.field protected aql:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected aqm:Z

.field protected aqn:Ljava/lang/String;

.field protected aqo:Ljava/lang/String;

.field protected aqp:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected aqq:Z

.field private aqr:Z

.field protected aqs:Ljava/io/BufferedReader;

.field protected aqt:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 271
    invoke-direct {p0}, Lorg/apache/commons/net/e;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqq:Z

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/b;->aqr:Z

    .line 272
    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/b;->fv(I)V

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    .line 274
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqm:Z

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqn:Ljava/lang/String;

    .line 276
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqo:Ljava/lang/String;

    .line 277
    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqp:Lorg/apache/commons/net/ProtocolCommandSupport;

    .line 278
    return-void
.end method

.method private av(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private ax(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    if-eqz p2, :cond_0

    .line 534
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_0
    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private bD(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqm:Z

    .line 319
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 321
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqs:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_c

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 331
    const/4 v2, 0x3

    if-lt v1, v2, :cond_b

    .line 336
    nop

    .line 339
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/net/ftp/b;->aqk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 348
    iget-object v4, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    if-le v1, v2, :cond_7

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 354
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_3

    .line 357
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqs:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_2

    .line 364
    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->uA()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/net/ftp/b;->av(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/b;->fB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 360
    :cond_2
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "Connection closed without indication."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->uB()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 373
    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 375
    const/16 v1, 0x20

    if-ne v2, v1, :cond_4

    goto :goto_1

    .line 376
    :cond_4
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid server reply: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_5
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_6
    :goto_1
    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->uB()Z

    move-result v1

    if-nez v1, :cond_a

    .line 383
    :goto_2
    if-eqz p1, :cond_8

    .line 384
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->uu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/b;->k(ILjava/lang/String;)V

    .line 387
    :cond_8
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_9

    .line 390
    return-void

    .line 388
    :cond_9
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "FTP response 421 received.  Server closed connection."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 380
    :cond_a
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :catch_0
    move-exception p1

    .line 344
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_b
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated server reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_c
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "Connection closed without indication."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fB(Ljava/lang/String;)Z
    .locals 3

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private fD(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/net/ftp/FTPConnectionClosedException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 544
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqt:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lorg/apache/commons/net/ftp/b;->aqt:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    nop

    .line 558
    return-void

    .line 547
    :catch_0
    move-exception p1

    .line 549
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "Connection unexpectedly closed."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_0
    throw p1
.end method

.method private un()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/b;->bD(Z)V

    .line 301
    return-void
.end method


# virtual methods
.method public a(Ljava/net/InetAddress;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 964
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    ushr-int/lit8 p1, p2, 0x8

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 969
    and-int/lit16 p1, p2, 0xff

    .line 970
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 972
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->arM:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lorg/apache/commons/net/ftp/FTPCmd;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->aw(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public aw(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqt:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->ax(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/b;->fD(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->au(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V

    .line 524
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    return p1

    .line 514
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection is not open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/net/InetAddress;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1007
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1008
    if-lez v2, :cond_0

    .line 1009
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1012
    :cond_0
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 1015
    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1016
    :cond_1
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_2

    .line 1017
    const-string p1, "2"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    :cond_2
    :goto_0
    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->arx:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/io/Reader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-super {p0}, Lorg/apache/commons/net/e;->uk()V

    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance p1, Lorg/apache/commons/net/io/a;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aqe:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->up()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/a;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/b;->aqs:Ljava/io/BufferedReader;

    goto :goto_0

    .line 417
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/a;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/io/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqs:Ljava/io/BufferedReader;

    .line 419
    :goto_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aqf:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->up()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/b;->aqt:Ljava/io/BufferedWriter;

    .line 421
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->connectTimeout:I

    if-lez p1, :cond_2

    .line 422
    iget-object p1, p0, Lorg/apache/commons/net/ftp/b;->aqb:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    .line 423
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqb:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/ftp/b;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 425
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V

    .line 427
    iget v0, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fA(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqb:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 436
    nop

    .line 437
    goto :goto_2

    .line 435
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Timed out waiting for initial connect reply"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 433
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aqb:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    .line 438
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V

    .line 440
    iget p1, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fA(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V

    .line 444
    :cond_3
    :goto_2
    return-void
.end method

.method public disconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-super {p0}, Lorg/apache/commons/net/e;->disconnect()V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqs:Ljava/io/BufferedReader;

    .line 485
    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqt:Ljava/io/BufferedWriter;

    .line 486
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/b;->aqm:Z

    .line 487
    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqn:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public fC(Ljava/lang/String;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lorg/apache/commons/net/ftp/b;->aqo:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public fE(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->asd:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public fF(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arK:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public fG(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arv:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public fH(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arQ:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public fw(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->asc:Lorg/apache/commons/net/ftp/FTPCmd;

    const-string v1, "AEILNTCFRPSBC"

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public uA()Z
    .locals 1

    .line 1813
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqq:Z

    return v0
.end method

.method public uB()Z
    .locals 1

    .line 1836
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqr:Z

    return v0
.end method

.method protected uk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->b(Ljava/io/Reader;)V

    .line 400
    return-void
.end method

.method protected um()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 1860
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqp:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method protected uo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/b;->bD(Z)V

    .line 312
    return-void
.end method

.method public up()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqo:Ljava/lang/String;

    return-object v0
.end method

.method protected uq()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arJ:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/b;->ax(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/b;->fD(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/b;->uo()V

    .line 571
    return-void
.end method

.method public ur()I
    .locals 1

    .line 710
    iget v0, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    return v0
.end method

.method public us()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;->un()V

    .line 733
    iget v0, p0, Lorg/apache/commons/net/ftp/b;->aqk:I

    return v0
.end method

.method public ut()[Ljava/lang/String;
    .locals 2

    .line 746
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public uu()Ljava/lang/String;
    .locals 3

    .line 760
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/b;->aqm:Z

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqn:Ljava/lang/String;

    return-object v0

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 766
    iget-object v1, p0, Lorg/apache/commons/net/ftp/b;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/b;->aqm:Z

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/b;->aqn:Ljava/lang/String;

    return-object v0
.end method

.method public uv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public uw()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1045
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arL:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public ux()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1066
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ary:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public uy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arz:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public uz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->asb:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/b;->a(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method
