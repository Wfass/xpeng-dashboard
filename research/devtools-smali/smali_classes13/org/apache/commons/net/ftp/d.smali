.class public Lorg/apache/commons/net/ftp/d;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final arp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arh:Ljava/lang/String;

.field private ari:Ljava/lang/String;

.field private arj:Ljava/lang/String;

.field private ark:Z

.field private arl:Ljava/lang/String;

.field private arm:Ljava/lang/String;

.field private arn:Ljava/lang/String;

.field private aro:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 370
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    .line 380
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "de"

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "it"

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "es"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "pt"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "da"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "sv"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "no"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "nl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "ro"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "sq"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sq"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "sh"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sh"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "sk"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "sl"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 249
    const-string v0, "UNIX"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    .line 241
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arh:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;)V

    .line 268
    iput-object p2, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 270
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)V
    .locals 2

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    .line 344
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arh:Ljava/lang/String;

    .line 345
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 346
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/d;->ark:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    .line 347
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 348
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/d;->aro:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    .line 349
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    .line 350
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 351
    iget-object p1, p2, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    .line 226
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    .line 360
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->arh:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arh:Ljava/lang/String;

    .line 361
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 362
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/d;->ark:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    .line 363
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 364
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/d;->aro:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    .line 365
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    .line 366
    iget-object v0, p1, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 367
    iget-object p1, p1, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public static fS(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 1

    .line 631
    sget-object v0, Lorg/apache/commons/net/ftp/d;->arp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 632
    if-eqz p0, :cond_1

    .line 633
    instance-of v0, p0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Ljava/text/DateFormatSymbols;

    check-cast p0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 635
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 636
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/ftp/d;->fT(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object p0

    return-object p0

    .line 639
    :cond_1
    new-instance p0, Ljava/text/DateFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method public static fT(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 2

    .line 652
    invoke-static {p0}, Lorg/apache/commons/net/ftp/d;->fU(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 653
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 654
    invoke-virtual {v0, p0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    .line 655
    return-object v0
.end method

.method private static fU(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 659
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    .line 661
    const/16 v1, 0xc

    if-ne v1, p0, :cond_1

    .line 665
    const/16 p0, 0xd

    new-array p0, p0, [Ljava/lang/String;

    .line 666
    const/4 v1, 0x0

    .line 667
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    .line 667
    move v1, v2

    goto :goto_0

    .line 670
    :cond_0
    const-string v0, ""

    aput-object v0, p0, v1

    .line 671
    return-object p0

    .line 662
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fP(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public fQ(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public fR(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public uQ()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->arh:Ljava/lang/String;

    return-object v0
.end method

.method public uR()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->ari:Ljava/lang/String;

    return-object v0
.end method

.method public uS()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->arj:Ljava/lang/String;

    return-object v0
.end method

.method public uT()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->arn:Ljava/lang/String;

    return-object v0
.end method

.method public uU()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->arm:Ljava/lang/String;

    return-object v0
.end method

.method public uV()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/apache/commons/net/ftp/d;->arl:Ljava/lang/String;

    return-object v0
.end method

.method public uW()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->ark:Z

    return v0
.end method

.method public uX()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/d;->aro:Z

    return v0
.end method
