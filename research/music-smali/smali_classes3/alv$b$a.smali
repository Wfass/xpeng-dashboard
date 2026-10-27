.class final Lalv$b$a;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalv$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lalv$b;

.field private final b:Lalo;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lalv$b;Lalo;III)V
    .locals 0

    .line 580
    iput-object p1, p0, Lalv$b$a;->a:Lalv$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p2, p0, Lalv$b$a;->b:Lalo;

    .line 582
    iput p3, p0, Lalv$b$a;->c:I

    .line 583
    iput p4, p0, Lalv$b$a;->d:I

    .line 584
    iput p5, p0, Lalv$b$a;->e:I

    return-void
.end method

.method private a()I
    .locals 4

    .line 619
    iget-object v0, p0, Lalv$b$a;->b:Lalo;

    sget-object v1, Lalo;->BYTE:Lalo;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v0, v0, Lalv$b;->a:Lalv;

    .line 620
    invoke-static {v0}, Lalv;->b(Lalv;)Lalh;

    move-result-object v0

    iget-object v1, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v1, v1, Lalv$b;->a:Lalv;

    invoke-static {v1}, Lalv;->a(Lalv;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lalv$b$a;->c:I

    iget v3, p0, Lalv$b$a;->e:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lalv$b$a;->d:I

    invoke-virtual {v0, v1, v2}, Lalh;->a(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lalv$b$a;->e:I

    :goto_0
    return v0
.end method

.method private a(Lalp;)I
    .locals 7

    .line 591
    iget-object v0, p0, Lalv$b$a;->b:Lalo;

    invoke-virtual {v0, p1}, Lalo;->a(Lalp;)I

    move-result p1

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 592
    sget-object v1, Lalv$1;->b:[I

    iget-object v2, p0, Lalv$b$a;->b:Lalo;

    invoke-virtual {v2}, Lalo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x8

    goto :goto_1

    .line 606
    :cond_1
    invoke-direct {p0}, Lalv$b$a;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 601
    :cond_2
    iget v1, p0, Lalv$b$a;->e:I

    div-int/lit8 v6, v1, 0x3

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr p1, v6

    .line 602
    rem-int/2addr v1, v5

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 597
    :cond_5
    iget v0, p0, Lalv$b$a;->e:I

    div-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr p1, v1

    .line 598
    rem-int/2addr v0, v4

    if-ne v0, v2, :cond_6

    const/4 v3, 0x6

    :cond_6
    add-int/2addr p1, v3

    goto :goto_1

    .line 594
    :cond_7
    iget v0, p0, Lalv$b$a;->e:I

    mul-int/lit8 v0, v0, 0xd

    :goto_0
    add-int/2addr p1, v0

    :goto_1
    return p1
.end method

.method static synthetic a(Lalv$b$a;Lalp;)I
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lalv$b$a;->a(Lalp;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lalv$b$a;)Lalo;
    .locals 0

    .line 573
    iget-object p0, p0, Lalv$b$a;->b:Lalo;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 656
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 657
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7e

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 660
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v2, 0x2e

    .line 658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lale;)V
    .locals 4

    .line 628
    iget-object v0, p0, Lalv$b$a;->b:Lalo;

    invoke-virtual {v0}, Lalo;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lale;->a(II)V

    .line 629
    iget v0, p0, Lalv$b$a;->e:I

    if-lez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lalv$b$a;->a()I

    move-result v0

    .line 631
    iget-object v1, p0, Lalv$b$a;->b:Lalo;

    iget-object v2, p0, Lalv$b$a;->a:Lalv$b;

    invoke-static {v2}, Lalv$b;->a(Lalv$b;)Lalp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lalo;->a(Lalp;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lale;->a(II)V

    .line 633
    :cond_0
    iget-object v0, p0, Lalv$b$a;->b:Lalo;

    sget-object v1, Lalo;->ECI:Lalo;

    if-ne v0, v1, :cond_1

    .line 634
    iget-object v0, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v0, v0, Lalv$b;->a:Lalv;

    invoke-static {v0}, Lalv;->b(Lalv;)Lalh;

    move-result-object v0

    iget v1, p0, Lalv$b$a;->d:I

    invoke-virtual {v0, v1}, Lalh;->b(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lale;->a(II)V

    goto :goto_0

    .line 635
    :cond_1
    iget v0, p0, Lalv$b$a;->e:I

    if-lez v0, :cond_2

    .line 637
    iget-object v0, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v0, v0, Lalv$b;->a:Lalv;

    invoke-static {v0}, Lalv;->a(Lalv;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lalv$b$a;->c:I

    iget v2, p0, Lalv$b$a;->e:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lalv$b$a;->b:Lalo;

    iget-object v2, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v2, v2, Lalv$b;->a:Lalv;

    .line 638
    invoke-static {v2}, Lalv;->b(Lalv;)Lalh;

    move-result-object v2

    iget v3, p0, Lalv$b$a;->d:I

    invoke-virtual {v2, v3}, Lalh;->a(I)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 637
    invoke-static {v0, v1, p1, v2}, Lals;->a(Ljava/lang/String;Lalo;Lale;Ljava/nio/charset/Charset;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lalv$b$a;Lale;)V
    .locals 0

    .line 573
    invoke-direct {p0, p1}, Lalv$b$a;->a(Lale;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    iget-object v1, p0, Lalv$b$a;->b:Lalo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    iget-object v1, p0, Lalv$b$a;->b:Lalo;

    sget-object v2, Lalo;->ECI:Lalo;

    if-ne v1, v2, :cond_0

    .line 646
    iget-object v1, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v1, v1, Lalv$b;->a:Lalv;

    invoke-static {v1}, Lalv;->b(Lalv;)Lalh;

    move-result-object v1

    iget v2, p0, Lalv$b$a;->d:I

    invoke-virtual {v1, v2}, Lalh;->a(I)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 648
    :cond_0
    iget-object v1, p0, Lalv$b$a;->a:Lalv$b;

    iget-object v1, v1, Lalv$b;->a:Lalv;

    invoke-static {v1}, Lalv;->a(Lalv;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lalv$b$a;->c:I

    iget v3, p0, Lalv$b$a;->e:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lalv$b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x29

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
