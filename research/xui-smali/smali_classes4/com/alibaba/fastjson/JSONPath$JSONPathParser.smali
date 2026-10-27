.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# static fields
.field private static final strArrayPatternx:Ljava/util/regex/Pattern;

.field private static final strArrayRegex:Ljava/lang/String; = "\'\\s*,\\s*\'"


# instance fields
.field private ch:C

.field private hasRefSegment:Z

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 747
    const-string v0, "\'\\s*,\\s*\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 751
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 752
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    .line 739
    iget-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    return v0
.end method

.method static isDigitFirst(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 1614
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .line 1741
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_1

    .line 1745
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1748
    :cond_0
    return-void

    .line 1742
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 14
    .param p1, "indexText"    # Ljava/lang/String;

    .line 1788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1789
    .local v0, "indexTextLen":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1790
    .local v2, "firstChar":C
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1792
    .local v3, "lastChar":C
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1794
    .local v4, "commaIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-le v5, v6, :cond_2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_2

    if-ne v3, v5, :cond_2

    .line 1796
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1798
    .local v5, "propertyName":Ljava/lang/String;
    if-eq v4, v7, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->strArrayPatternx:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 1802
    :cond_0
    const-string v1, "\'\\s*,\\s*\'"

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1803
    .local v1, "propertyNames":[Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    invoke-direct {v6, v1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;-><init>([Ljava/lang/String;)V

    return-object v6

    .line 1799
    .end local v1    # "propertyNames":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v6, v5, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 1806
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1808
    .local v5, "colonIndex":I
    if-ne v4, v7, :cond_5

    if-ne v5, v7, :cond_5

    .line 1809
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1811
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1812
    .local v6, "index":I
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 1813
    .end local v6    # "index":I
    :catch_0
    move-exception v6

    .line 1814
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v7, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v7

    .line 1817
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    .line 1818
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1820
    :cond_4
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v6, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 1824
    :cond_5
    if-eq v4, v7, :cond_7

    .line 1825
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1826
    .local v6, "indexesText":[Ljava/lang/String;
    array-length v7, v6

    new-array v7, v7, [I

    .line 1827
    .local v7, "indexes":[I
    nop

    .local v1, "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 1828
    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1

    .line 1827
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1830
    .end local v1    # "i":I
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    invoke-direct {v1, v7}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;-><init>([I)V

    return-object v1

    .line 1833
    .end local v6    # "indexesText":[Ljava/lang/String;
    .end local v7    # "indexes":[I
    :cond_7
    if-eq v5, v7, :cond_10

    .line 1834
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1835
    .local v9, "indexesText":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [I

    .line 1836
    .local v10, "indexes":[I
    move v11, v1

    .local v11, "i":I
    :goto_2
    array-length v12, v9

    if-ge v11, v12, :cond_a

    .line 1837
    aget-object v12, v9, v11

    .line 1838
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 1839
    if-nez v11, :cond_8

    .line 1840
    aput v1, v10, v11

    goto :goto_3

    .line 1842
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1845
    :cond_9
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v10, v11

    .line 1836
    .end local v12    # "str":Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1849
    .end local v11    # "i":I
    :cond_a
    aget v1, v10, v1

    .line 1851
    .local v1, "start":I
    array-length v11, v10

    if-le v11, v8, :cond_b

    .line 1852
    aget v7, v10, v8

    .local v7, "end":I
    goto :goto_4

    .line 1854
    .end local v7    # "end":I
    :cond_b
    nop

    .line 1857
    .restart local v7    # "end":I
    :goto_4
    array-length v11, v10

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    .line 1858
    aget v8, v10, v6

    .local v8, "step":I
    goto :goto_5

    .line 1860
    .end local v8    # "step":I
    :cond_c
    nop

    .restart local v8    # "step":I
    :goto_5
    move v6, v8

    .line 1863
    .end local v8    # "step":I
    .local v6, "step":I
    if-ltz v7, :cond_e

    if-lt v7, v1, :cond_d

    goto :goto_6

    .line 1864
    :cond_d
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end must greater than or equals start. start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",  end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1868
    :cond_e
    :goto_6
    if-lez v6, :cond_f

    .line 1871
    new-instance v8, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    invoke-direct {v8, v1, v7, v6}, Lcom/alibaba/fastjson/JSONPath$RangeSegment;-><init>(III)V

    return-object v8

    .line 1869
    :cond_f
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "step must greater than zero : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1874
    .end local v1    # "start":I
    .end local v6    # "step":I
    .end local v7    # "end":I
    .end local v9    # "indexesText":[Ljava/lang/String;
    .end local v10    # "indexes":[I
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 6

    .line 1751
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1755
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1758
    .local v0, "segments":[Lcom/alibaba/fastjson/JSONPath$Segment;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    .line 1759
    .local v1, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1760
    nop

    .line 1778
    .end local v1    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 1779
    return-object v0

    .line 1782
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1783
    .local v1, "result":[Lcom/alibaba/fastjson/JSONPath$Segment;
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1784
    return-object v1

    .line 1763
    .local v1, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_1
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_2

    .line 1764
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 1765
    .local v3, "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1766
    goto :goto_0

    .line 1770
    .end local v3    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v4, v0

    if-ne v3, v4, :cond_3

    .line 1771
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 1772
    .local v3, "t":[Lcom/alibaba/fastjson/JSONPath$Segment;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    move-object v0, v3

    .line 1775
    .end local v3    # "t":[Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v1, v0, v2

    .line 1776
    .end local v1    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    goto :goto_0

    .line 1752
    .end local v0    # "segments":[Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .locals 5
    .param p1, "filter"    # Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1532
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/4 v1, 0x0

    const/16 v2, 0x26

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1533
    .local v0, "and":Z
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v3

    if-eq v3, v2, :cond_2

    :cond_1
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1534
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1535
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1537
    const/4 v2, 0x0

    .line 1538
    .local v2, "paren":Z
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 1539
    const/4 v2, 0x1

    .line 1540
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1543
    :cond_3
    :goto_1
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 1544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1

    .line 1547
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1549
    .local v1, "right":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterGroup;

    invoke-direct {v3, p1, v1, v0}, Lcom/alibaba/fastjson/JSONPath$FilterGroup;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V

    move-object p1, v3

    .line 1551
    if-eqz v2, :cond_5

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x29

    if-ne v3, v4, :cond_5

    .line 1552
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1555
    .end local v1    # "right":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v2    # "paren":Z
    :cond_5
    return-object p1
.end method

.method getNextChar()C
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method isEOF()Z
    .locals 2

    .line 763
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method next()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 756
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 3
    .param p1, "acceptBracket"    # Z

    .line 868
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v0

    .line 869
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v1, :cond_0

    .line 870
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$Segment;

    return-object v1

    .line 872
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v1
.end method

.method parseArrayAccessFilter(Z)Ljava/lang/Object;
    .locals 26
    .param p1, "acceptBracket"    # Z

    move-object/from16 v0, p0

    .line 876
    if-eqz p1, :cond_0

    .line 877
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 880
    :cond_0
    const/4 v1, 0x0

    .line 881
    .local v1, "predicateFlag":Z
    const/4 v2, 0x0

    .line 883
    .local v2, "lparanCount":I
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x3f

    const/16 v5, 0x28

    if-ne v3, v4, :cond_2

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 885
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 886
    add-int/lit8 v2, v2, 0x1

    .line 887
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v5, :cond_1

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const/4 v1, 0x1

    .line 896
    :cond_2
    const/16 v3, 0x27

    const/16 v4, 0x5c

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/16 v10, 0x5d

    const/16 v12, 0x29

    const/4 v13, 0x1

    if-nez v1, :cond_f

    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 897
    invoke-static {v14}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v14

    if-nez v14, :cond_f

    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 898
    invoke-static {v14}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v14

    if-nez v14, :cond_f

    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v14, v4, :cond_f

    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x40

    if-ne v14, v5, :cond_3

    goto/16 :goto_7

    .line 1474
    :cond_3
    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v5, v13

    .line 1475
    .local v5, "start":I
    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1476
    .local v14, "startCh":C
    :goto_1
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v11, v10, :cond_6

    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v11, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v11

    if-nez v11, :cond_6

    .line 1477
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v11, v6, :cond_4

    if-nez v1, :cond_4

    if-nez v1, :cond_4

    if-eq v14, v3, :cond_4

    .line 1482
    goto :goto_2

    .line 1485
    :cond_4
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v11, v4, :cond_5

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1488
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1

    .line 1492
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 1493
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v4, v13

    .local v4, "end":I
    :goto_3
    goto :goto_5

    .line 1495
    .end local v4    # "end":I
    :cond_7
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v7, :cond_9

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v6, :cond_8

    goto :goto_4

    .line 1498
    :cond_8
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_5

    .line 1496
    :cond_9
    :goto_4
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v4, v13

    goto :goto_3

    .line 1498
    .restart local v4    # "end":I
    :goto_5
    nop

    .line 1502
    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1504
    .local v6, "text":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_d

    .line 1506
    if-ne v14, v3, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v14, :cond_a

    .line 1507
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "propName":Ljava/lang/String;
    goto :goto_6

    .line 1509
    .end local v3    # "propName":Ljava/lang/String;
    :cond_a
    const-string v3, "\\\\\\."

    const-string v7, "\\."

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1510
    .restart local v3    # "propName":Ljava/lang/String;
    const-string v7, "\\-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_b

    .line 1511
    const-string v7, "\\\\-"

    const-string v8, "-"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1515
    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 1516
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1519
    :cond_c
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v7

    .line 1522
    .end local v3    # "propName":Ljava/lang/String;
    :cond_d
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v3

    .line 1524
    .local v3, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    if-eqz p1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1525
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1528
    :cond_e
    return-object v3

    .line 901
    .end local v3    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v4    # "end":I
    .end local v5    # "start":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v14    # "startCh":C
    :cond_f
    :goto_7
    const/4 v5, 0x0

    .line 902
    .local v5, "self":Z
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v14, 0x40

    if-ne v11, v14, :cond_10

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 904
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 905
    const/4 v5, 0x1

    .line 907
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v11

    .line 909
    .local v11, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 911
    const/16 v14, 0x7c

    const/16 v8, 0x26

    const/16 v9, 0x20

    if-eqz v1, :cond_15

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v12, :cond_15

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 914
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    .line 915
    .local v3, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_8
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v9, :cond_11

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_8

    .line 919
    :cond_11
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v8, :cond_12

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v14, :cond_13

    .line 920
    :cond_12
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    .line 923
    :cond_13
    if-eqz p1, :cond_14

    .line 924
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 926
    :cond_14
    return-object v3

    .line 929
    .end local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_15
    if-eqz p1, :cond_1b

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_1b

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 931
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    .line 932
    .restart local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_9
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v9, :cond_16

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_9

    .line 936
    :cond_16
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v8, :cond_17

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v14, :cond_18

    .line 937
    :cond_17
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    .line 940
    :cond_18
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 941
    if-eqz v1, :cond_19

    .line 942
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 945
    :cond_19
    if-eqz p1, :cond_1a

    .line 946
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 948
    :cond_1a
    return-object v3

    .line 951
    .end local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v4

    .line 953
    .local v4, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 955
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v7, :cond_93

    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_1c

    .line 956
    move/from16 v24, v2

    move/from16 v25, v5

    move v9, v13

    const/4 v5, 0x0

    goto/16 :goto_2b

    .line 983
    :cond_1c
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v7, :cond_61

    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_1d

    .line 984
    move/from16 v24, v2

    goto/16 :goto_1d

    .line 1193
    :cond_1d
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v7, v3, :cond_4c

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x22

    if-ne v3, v7, :cond_1e

    goto/16 :goto_14

    .line 1279
    :cond_1e
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v12

    .line 1281
    .local v12, "value":J
    const-wide/16 v15, 0x0

    .line 1282
    .local v15, "doubleValue":D
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v6, :cond_1f

    .line 1283
    invoke-virtual {v0, v12, v13}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v15

    .line 1289
    .end local v15    # "doubleValue":D
    .local v6, "doubleValue":D
    :cond_1f
    move-wide v6, v15

    const-wide/16 v15, 0x0

    cmpl-double v3, v6, v15

    if-nez v3, :cond_20

    .line 1290
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v3, v11, v12, v13, v4}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .restart local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    goto :goto_a

    .line 1292
    .end local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_20
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    invoke-direct {v3, v11, v6, v7, v4}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1295
    .restart local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_a
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v10, v9, :cond_21

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1292
    const/16 v10, 0x5d

    goto :goto_a

    .line 1299
    :cond_21
    const/4 v9, 0x1

    if-le v2, v9, :cond_22

    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x29

    if-ne v9, v10, :cond_22

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1301
    add-int/lit8 v2, v2, -0x1

    .line 1304
    :cond_22
    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v9, v8, :cond_23

    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v8, v14, :cond_24

    .line 1305
    :cond_23
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v3

    .line 1308
    :cond_24
    if-eqz v1, :cond_25

    .line 1309
    add-int/lit8 v2, v2, -0x1

    .line 1310
    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1313
    :cond_25
    if-eqz p1, :cond_26

    .line 1314
    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1317
    :cond_26
    return-object v3

    .line 1318
    .end local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v6    # "doubleValue":D
    .end local v12    # "value":J
    :cond_27
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x24

    if-ne v3, v6, :cond_2b

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v3

    .line 1320
    .local v3, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;

    invoke-direct {v6, v11, v3, v4}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1321
    .local v6, "filter":Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->hasRefSegment:Z

    .line 1322
    :goto_b
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v9, :cond_28

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_b

    .line 1326
    :cond_28
    if-eqz v1, :cond_29

    .line 1327
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1330
    :cond_29
    if-eqz p1, :cond_2a

    .line 1331
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1334
    :cond_2a
    return-object v6

    .line 1335
    .end local v3    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
    :cond_2b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_31

    .line 1336
    const/4 v3, 0x0

    .line 1337
    .local v3, "flags":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    .local v6, "regBuf":Ljava/lang/StringBuilder;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1340
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_2f

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1342
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v8, 0x69

    if-ne v7, v8, :cond_2c

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1344
    or-int/lit8 v3, v3, 0x2

    .line 1357
    :cond_2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1358
    .local v7, "pattern":Ljava/util/regex/Pattern;
    new-instance v8, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;

    invoke-direct {v8, v11, v7, v4}, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1360
    .local v8, "filter":Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;
    if-eqz v1, :cond_2d

    .line 1361
    const/16 v9, 0x29

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1364
    :cond_2d
    if-eqz p1, :cond_2e

    .line 1365
    const/16 v9, 0x5d

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1368
    :cond_2e
    return-object v8

    .line 1349
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "filter":Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;
    :cond_2f
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x5c

    if-ne v7, v12, :cond_30

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1351
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1353
    :cond_30
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1371
    .end local v3    # "flags":I
    .end local v6    # "regBuf":Ljava/lang/StringBuilder;
    :cond_31
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x6e

    if-ne v3, v6, :cond_3a

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, "name":Ljava/lang/String;
    const-string v6, "null"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1374
    const/4 v6, 0x0

    .line 1375
    .local v6, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_32

    .line 1376
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v7, v11}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_d

    .line 1377
    :cond_32
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_33

    .line 1378
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v11}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 1381
    :cond_33
    :goto_d
    if-eqz v6, :cond_36

    .line 1382
    :goto_e
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v9, :cond_34

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_e

    .line 1386
    :cond_34
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v7, v8, :cond_35

    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v14, :cond_36

    .line 1387
    :cond_35
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    .line 1391
    :cond_36
    if-eqz v1, :cond_37

    .line 1392
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1394
    :cond_37
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1396
    if-eqz v6, :cond_38

    .line 1397
    return-object v6

    .line 1400
    :cond_38
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1402
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_39
    goto/16 :goto_13

    :cond_3a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x74

    if-ne v3, v6, :cond_43

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1405
    .restart local v3    # "name":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1406
    const/4 v6, 0x0

    .line 1408
    .restart local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_3b

    .line 1409
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v12, 0x1

    invoke-direct {v7, v11, v10, v12}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v6, v7

    goto :goto_f

    .line 1410
    :cond_3b
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_3c

    .line 1411
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-direct {v7, v11, v10, v12}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v6, v7

    .line 1414
    :cond_3c
    :goto_f
    if-eqz v6, :cond_3f

    .line 1415
    :goto_10
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v9, :cond_3d

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_10

    .line 1419
    :cond_3d
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v7, v8, :cond_3e

    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v14, :cond_3f

    .line 1420
    :cond_3e
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    .line 1424
    :cond_3f
    if-eqz v1, :cond_40

    .line 1425
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1427
    :cond_40
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1429
    if-eqz v6, :cond_41

    .line 1430
    return-object v6

    .line 1433
    :cond_41
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1435
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_42
    goto :goto_13

    :cond_43
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x66

    if-ne v3, v6, :cond_4b

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 1438
    .restart local v3    # "name":Ljava/lang/String;
    const-string v6, "false"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1439
    const/4 v6, 0x0

    .line 1441
    .restart local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_44

    .line 1442
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v12, 0x1

    invoke-direct {v7, v11, v10, v12}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v6, v7

    goto :goto_11

    .line 1443
    :cond_44
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_45

    .line 1444
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-direct {v7, v11, v10, v12}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object v6, v7

    .line 1447
    :cond_45
    :goto_11
    if-eqz v6, :cond_48

    .line 1448
    :goto_12
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v9, :cond_46

    .line 1449
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_12

    .line 1452
    :cond_46
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v7, v8, :cond_47

    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v14, :cond_48

    .line 1453
    :cond_47
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    .line 1457
    :cond_48
    if-eqz v1, :cond_49

    .line 1458
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1460
    :cond_49
    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1462
    if-eqz v6, :cond_4a

    .line 1463
    return-object v6

    .line 1466
    :cond_4a
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1470
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_4b
    :goto_13
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 1194
    :cond_4c
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "strValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1197
    .restart local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_4d

    .line 1198
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v10, 0x0

    invoke-direct {v7, v11, v3, v10}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v6, v7

    .line 1260
    .end local v2    # "lparanCount":I
    .local v24, "lparanCount":I
    :goto_15
    move/from16 v24, v2

    goto/16 :goto_1c

    .line 1199
    .end local v24    # "lparanCount":I
    .restart local v2    # "lparanCount":I
    :cond_4d
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_4e

    .line 1200
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v10, 0x1

    invoke-direct {v7, v11, v3, v10}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v6, v7

    goto :goto_15

    .line 1201
    :cond_4e
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v7, :cond_50

    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_4f

    goto :goto_16

    .line 1257
    :cond_4f
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v7, v11, v3, v4}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object v6, v7

    goto :goto_15

    .line 1202
    :cond_50
    :goto_16
    const-string v7, "%%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_51

    .line 1203
    const-string v7, "%%"

    const-string v10, "%"

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 1206
    :cond_51
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_52

    const/16 v22, 0x1

    goto :goto_17

    :cond_52
    const/16 v22, 0x0

    .line 1208
    .local v22, "not":Z
    :goto_17
    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1209
    .local v10, "p0":I
    const/4 v12, -0x1

    if-ne v10, v12, :cond_54

    .line 1210
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v7, :cond_53

    .line 1211
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_18

    .line 1213
    :cond_53
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1215
    :goto_18
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v7, v11, v3, v4}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object v6, v7

    .line 1256
    move/from16 v24, v2

    goto/16 :goto_1c

    .line 1217
    :cond_54
    const-string v12, "%"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1219
    .local v12, "items":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1220
    .local v13, "startsWithValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1221
    .local v15, "endsWithValue":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1222
    .local v17, "containsValues":[Ljava/lang/String;
    if-nez v10, :cond_57

    .line 1223
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v14, 0x1

    add-int/lit8 v8, v18, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_55

    .line 1224
    array-length v7, v12

    sub-int/2addr v7, v14

    new-array v7, v7, [Ljava/lang/String;

    .line 1225
    .end local v17    # "containsValues":[Ljava/lang/String;
    .local v7, "containsValues":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v12, v14, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    move/from16 v24, v2

    move-object v2, v7

    goto/16 :goto_1b

    .line 1227
    .end local v7    # "containsValues":[Ljava/lang/String;
    .restart local v17    # "containsValues":[Ljava/lang/String;
    :cond_55
    array-length v7, v12

    sub-int/2addr v7, v14

    aget-object v7, v12, v7

    .line 1228
    .end local v15    # "endsWithValue":Ljava/lang/String;
    .local v7, "endsWithValue":Ljava/lang/String;
    array-length v8, v12

    const/4 v9, 0x2

    if-le v8, v9, :cond_56

    .line 1229
    array-length v8, v12

    sub-int/2addr v8, v9

    new-array v8, v8, [Ljava/lang/String;

    .line 1230
    .end local v17    # "containsValues":[Ljava/lang/String;
    .local v8, "containsValues":[Ljava/lang/String;
    array-length v9, v8

    move/from16 v24, v2

    const/4 v2, 0x0

    invoke-static {v12, v14, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    .end local v2    # "lparanCount":I
    .restart local v24    # "lparanCount":I
    move-object v15, v7

    move-object v2, v8

    goto :goto_1b

    .end local v8    # "containsValues":[Ljava/lang/String;
    .end local v24    # "lparanCount":I
    .restart local v2    # "lparanCount":I
    .restart local v17    # "containsValues":[Ljava/lang/String;
    :cond_56
    move/from16 v24, v2

    move-object v15, v7

    move-object/from16 v2, v17

    .end local v2    # "lparanCount":I
    .restart local v24    # "lparanCount":I
    goto :goto_1b

    .line 1233
    .end local v7    # "endsWithValue":Ljava/lang/String;
    .end local v24    # "lparanCount":I
    .restart local v2    # "lparanCount":I
    .restart local v15    # "endsWithValue":Ljava/lang/String;
    :cond_57
    move/from16 v24, v2

    const/4 v14, 0x1

    .end local v2    # "lparanCount":I
    .restart local v24    # "lparanCount":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_59

    .line 1234
    array-length v2, v12

    if-ne v2, v14, :cond_58

    .line 1235
    const/4 v2, 0x0

    aget-object v2, v12, v2

    .line 1253
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v17    # "containsValues":[Ljava/lang/String;
    .local v2, "startsWithValue":Ljava/lang/String;
    :goto_19
    move-object v13, v2

    .local v2, "containsValues":[Ljava/lang/String;
    .restart local v13    # "startsWithValue":Ljava/lang/String;
    :goto_1a
    move-object/from16 v2, v17

    goto :goto_1b

    .line 1237
    .end local v2    # "containsValues":[Ljava/lang/String;
    .restart local v17    # "containsValues":[Ljava/lang/String;
    :cond_58
    move-object v2, v12

    .end local v17    # "containsValues":[Ljava/lang/String;
    .restart local v2    # "containsValues":[Ljava/lang/String;
    goto :goto_1b

    .line 1240
    .end local v2    # "containsValues":[Ljava/lang/String;
    .restart local v17    # "containsValues":[Ljava/lang/String;
    :cond_59
    const/4 v2, 0x0

    array-length v7, v12

    if-ne v7, v14, :cond_5a

    .line 1241
    aget-object v2, v12, v2

    goto :goto_19

    .line 1242
    :cond_5a
    array-length v7, v12

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5b

    .line 1243
    aget-object v2, v12, v2

    .line 1244
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .local v2, "startsWithValue":Ljava/lang/String;
    aget-object v7, v12, v14

    .line 1253
    .end local v15    # "endsWithValue":Ljava/lang/String;
    .restart local v7    # "endsWithValue":Ljava/lang/String;
    move-object v13, v2

    move-object v15, v7

    goto :goto_1a

    .line 1246
    .end local v2    # "startsWithValue":Ljava/lang/String;
    .end local v7    # "endsWithValue":Ljava/lang/String;
    .restart local v13    # "startsWithValue":Ljava/lang/String;
    .restart local v15    # "endsWithValue":Ljava/lang/String;
    :cond_5b
    aget-object v7, v12, v2

    .line 1247
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .local v7, "startsWithValue":Ljava/lang/String;
    array-length v8, v12

    sub-int/2addr v8, v14

    aget-object v8, v12, v8

    .line 1248
    .end local v15    # "endsWithValue":Ljava/lang/String;
    .local v8, "endsWithValue":Ljava/lang/String;
    array-length v9, v12

    const/4 v13, 0x2

    sub-int/2addr v9, v13

    new-array v9, v9, [Ljava/lang/String;

    .line 1249
    .end local v17    # "containsValues":[Ljava/lang/String;
    .local v9, "containsValues":[Ljava/lang/String;
    array-length v13, v9

    invoke-static {v12, v14, v9, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1253
    move-object v13, v7

    move-object v15, v8

    move-object v2, v9

    .end local v7    # "startsWithValue":Ljava/lang/String;
    .end local v8    # "endsWithValue":Ljava/lang/String;
    .end local v9    # "containsValues":[Ljava/lang/String;
    .local v2, "containsValues":[Ljava/lang/String;
    .restart local v13    # "startsWithValue":Ljava/lang/String;
    .restart local v15    # "endsWithValue":Ljava/lang/String;
    :goto_1b
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object/from16 v17, v7

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    move-object/from16 v21, v2

    invoke-direct/range {v17 .. v22}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v2, v7

    .line 1256
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v10    # "p0":I
    .end local v12    # "items":[Ljava/lang/String;
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v15    # "endsWithValue":Ljava/lang/String;
    .end local v22    # "not":Z
    .local v2, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    move-object v6, v2

    .line 1260
    .end local v2    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .restart local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_1c
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x20

    if-ne v2, v7, :cond_5c

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1c

    .line 1264
    :cond_5c
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x26

    if-eq v2, v7, :cond_5d

    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x7c

    if-ne v2, v7, :cond_5e

    .line 1265
    :cond_5d
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v6

    .line 1268
    :cond_5e
    if-eqz v1, :cond_5f

    .line 1269
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1272
    :cond_5f
    if-eqz p1, :cond_60

    .line 1273
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1276
    :cond_60
    return-object v6

    .line 984
    .end local v3    # "strValue":Ljava/lang/String;
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v24    # "lparanCount":I
    .local v2, "lparanCount":I
    :cond_61
    move/from16 v24, v2

    .end local v2    # "lparanCount":I
    .restart local v24    # "lparanCount":I
    :goto_1d
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v2, :cond_62

    const/4 v2, 0x1

    goto :goto_1e

    :cond_62
    const/4 v2, 0x0

    .line 985
    .local v2, "not":Z
    :goto_1e
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 987
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 989
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v6

    .line 990
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 994
    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_92

    .line 995
    nop

    .line 1004
    .end local v6    # "value":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 1005
    .local v6, "isInt":Z
    const/4 v7, 0x1

    .line 1006
    .local v7, "isIntObj":Z
    const/4 v8, 0x1

    .line 1007
    .local v8, "isString":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_63
    :goto_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_67

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1008
    .local v10, "item":Ljava/lang/Object;
    if-nez v10, :cond_64

    .line 1009
    if-eqz v6, :cond_63

    .line 1010
    const/4 v6, 0x0

    goto :goto_20

    .line 1015
    :cond_64
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 1016
    .local v12, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_65

    const-class v13, Ljava/lang/Byte;

    if-eq v12, v13, :cond_65

    const-class v13, Ljava/lang/Short;

    if-eq v12, v13, :cond_65

    const-class v13, Ljava/lang/Integer;

    if-eq v12, v13, :cond_65

    const-class v13, Ljava/lang/Long;

    if-eq v12, v13, :cond_65

    .line 1018
    const/4 v6, 0x0

    .line 1019
    const/4 v7, 0x0

    .line 1022
    :cond_65
    if-eqz v8, :cond_66

    const-class v13, Ljava/lang/String;

    if-eq v12, v13, :cond_66

    .line 1023
    const/4 v8, 0x0

    .line 1025
    .end local v10    # "item":Ljava/lang/Object;
    .end local v12    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_66
    goto :goto_20

    .line 1027
    :cond_67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6e

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6e

    .line 1029
    if-eqz v2, :cond_68

    .line 1030
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v9, v11}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    .local v9, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    goto :goto_21

    .line 1032
    .end local v9    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_68
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v9, v11}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    .line 1035
    .restart local v9    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_21
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x20

    if-ne v10, v12, :cond_69

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_21

    .line 1039
    :cond_69
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x26

    if-eq v10, v12, :cond_6a

    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x7c

    if-ne v10, v12, :cond_6b

    .line 1040
    :cond_6a
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v9

    .line 1043
    :cond_6b
    const/16 v10, 0x29

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1044
    if-eqz v1, :cond_6c

    .line 1045
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1048
    :cond_6c
    if-eqz p1, :cond_6d

    .line 1049
    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1052
    :cond_6d
    return-object v9

    .line 1055
    .end local v9    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_6e
    if-eqz v6, :cond_7c

    .line 1056
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_75

    .line 1057
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v9

    .line 1058
    .local v9, "value":J
    if-eqz v2, :cond_6f

    sget-object v12, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_22

    :cond_6f
    sget-object v12, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1059
    .local v12, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_22
    new-instance v13, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v13, v11, v9, v10, v12}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1060
    .local v13, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_23
    iget-char v14, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    move/from16 v25, v5

    const/16 v5, 0x20

    if-ne v14, v5, :cond_70

    .line 1061
    .end local v5    # "self":Z
    .local v25, "self":Z
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1059
    move/from16 v5, v25

    goto :goto_23

    .line 1064
    :cond_70
    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v14, 0x26

    if-eq v5, v14, :cond_71

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v14, 0x7c

    if-ne v5, v14, :cond_72

    .line 1065
    :cond_71
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v13

    .line 1068
    :cond_72
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1069
    if-eqz v1, :cond_73

    .line 1070
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1073
    :cond_73
    if-eqz p1, :cond_74

    .line 1074
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1077
    :cond_74
    return-object v13

    .line 1080
    .end local v9    # "value":J
    .end local v12    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    .end local v13    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v25    # "self":Z
    .restart local v5    # "self":Z
    :cond_75
    move/from16 v25, v5

    .end local v5    # "self":Z
    .restart local v25    # "self":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    .line 1081
    .local v5, "values":[J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_24
    move/from16 v9, v16

    .end local v16    # "i":I
    .local v9, "i":I
    array-length v10, v5

    if-ge v9, v10, :cond_76

    .line 1082
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v12

    aput-wide v12, v5, v9

    .line 1081
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "i":I
    .restart local v16    # "i":I
    goto :goto_24

    .line 1085
    .end local v16    # "i":I
    :cond_76
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v9, v11, v5, v2}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    .line 1087
    .local v9, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_25
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x20

    if-ne v10, v12, :cond_77

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_25

    .line 1091
    :cond_77
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x26

    if-eq v10, v12, :cond_78

    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x7c

    if-ne v10, v12, :cond_79

    .line 1092
    :cond_78
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v9

    .line 1095
    :cond_79
    const/16 v10, 0x29

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1096
    if-eqz v1, :cond_7a

    .line 1097
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1100
    :cond_7a
    if-eqz p1, :cond_7b

    .line 1101
    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1104
    :cond_7b
    return-object v9

    .line 1107
    .end local v9    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v25    # "self":Z
    .local v5, "self":Z
    :cond_7c
    move/from16 v25, v5

    .end local v5    # "self":Z
    .restart local v25    # "self":Z
    if-eqz v8, :cond_89

    .line 1108
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_83

    .line 1109
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1111
    .local v5, "value":Ljava/lang/String;
    if-eqz v2, :cond_7d

    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_26

    :cond_7d
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1112
    .local v9, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_26
    new-instance v10, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v10, v11, v5, v9}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1114
    .local v10, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_27
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v13, 0x20

    if-ne v12, v13, :cond_7e

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_27

    .line 1118
    :cond_7e
    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v13, 0x26

    if-eq v12, v13, :cond_7f

    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v13, 0x7c

    if-ne v12, v13, :cond_80

    .line 1119
    :cond_7f
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v10

    .line 1122
    :cond_80
    const/16 v12, 0x29

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1123
    if-eqz v1, :cond_81

    .line 1124
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1127
    :cond_81
    if-eqz p1, :cond_82

    .line 1128
    const/16 v12, 0x5d

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1131
    :cond_82
    return-object v10

    .line 1134
    .end local v5    # "value":Ljava/lang/String;
    .end local v9    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    .end local v10    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_83
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1135
    .local v5, "values":[Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1137
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v9, v11, v5, v2}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1139
    .local v9, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_28
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x20

    if-ne v10, v12, :cond_84

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_28

    .line 1143
    :cond_84
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x26

    if-eq v10, v12, :cond_85

    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x7c

    if-ne v10, v12, :cond_86

    .line 1144
    :cond_85
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v9

    .line 1147
    :cond_86
    const/16 v10, 0x29

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1148
    if-eqz v1, :cond_87

    .line 1149
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1152
    :cond_87
    if-eqz p1, :cond_88

    .line 1153
    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1156
    :cond_88
    return-object v9

    .line 1159
    .end local v5    # "values":[Ljava/lang/String;
    .end local v9    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_89
    const/4 v5, 0x0

    if-eqz v7, :cond_91

    .line 1160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/Long;

    .line 1161
    .local v9, "values":[Ljava/lang/Long;
    nop

    .local v5, "i":I
    :goto_29
    array-length v10, v9

    if-ge v5, v10, :cond_8b

    .line 1162
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    .line 1163
    .local v10, "item":Ljava/lang/Number;
    if-eqz v10, :cond_8a

    .line 1164
    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v5

    .line 1161
    .end local v10    # "item":Ljava/lang/Number;
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1168
    .end local v5    # "i":I
    :cond_8b
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v5, v11, v9, v2}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    .line 1170
    .local v5, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :goto_2a
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v12, 0x20

    if-ne v10, v12, :cond_8c

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2a

    .line 1174
    :cond_8c
    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v13, 0x26

    if-eq v10, v13, :cond_8d

    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v14, 0x7c

    if-ne v10, v14, :cond_8e

    .line 1175
    :cond_8d
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v5

    .line 1178
    :cond_8e
    const/16 v10, 0x29

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1179
    if-eqz v1, :cond_8f

    .line 1180
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1183
    :cond_8f
    if-eqz p1, :cond_90

    .line 1184
    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1187
    :cond_90
    return-object v5

    .line 1190
    .end local v5    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v9    # "values":[Ljava/lang/Long;
    :cond_91
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 997
    .end local v7    # "isIntObj":Z
    .end local v8    # "isString":Z
    .end local v25    # "self":Z
    .local v5, "self":Z
    .local v6, "value":Ljava/lang/Object;
    :cond_92
    move/from16 v25, v5

    const/4 v5, 0x0

    const/16 v7, 0x5d

    const/4 v9, 0x1

    const/16 v10, 0x29

    const/16 v12, 0x20

    const/16 v13, 0x26

    const/16 v14, 0x7c

    .end local v5    # "self":Z
    .restart local v25    # "self":Z
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 999
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v6

    .line 1000
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    move/from16 v5, v25

    goto/16 :goto_1f

    .line 956
    .end local v3    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "value":Ljava/lang/Object;
    .end local v24    # "lparanCount":I
    .end local v25    # "self":Z
    .local v2, "lparanCount":I
    .restart local v5    # "self":Z
    :cond_93
    move/from16 v24, v2

    move/from16 v25, v5

    move v9, v13

    const/4 v5, 0x0

    .end local v2    # "lparanCount":I
    .end local v5    # "self":Z
    .restart local v24    # "lparanCount":I
    .restart local v25    # "self":Z
    :goto_2b
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v2, :cond_94

    move/from16 v23, v9

    goto :goto_2c

    :cond_94
    move/from16 v23, v5

    .line 958
    .local v23, "not":Z
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v2

    .line 960
    .local v2, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "name":Ljava/lang/String;
    const-string v5, "and"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v5

    .line 968
    .local v5, "endValue":Ljava/lang/Object;
    if-eqz v2, :cond_96

    if-eqz v5, :cond_96

    .line 972
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 973
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    move-object v7, v2

    check-cast v7, Ljava/lang/Number;

    .line 974
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v19

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    .line 975
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v21

    move-object/from16 v17, v6

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v23}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 977
    .local v6, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    return-object v6

    .line 980
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_95
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 969
    :cond_96
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 963
    .end local v5    # "endValue":Ljava/lang/Object;
    :cond_97
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected readDoubleValue(J)D
    .locals 7
    .param p1, "longValue"    # J

    .line 1575
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1577
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1578
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 1579
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1582
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1583
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1584
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1585
    .local v3, "value":D
    long-to-double v5, p1

    add-double/2addr v3, v5

    .line 1586
    return-wide v3
.end method

.method protected readLongValue()J
    .locals 5

    .line 1559
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1560
    .local v0, "beginIndex":I
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1564
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 1565
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1568
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1569
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1570
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1571
    .local v3, "value":J
    return-wide v3
.end method

.method readName()Ljava/lang/String;
    .locals 4

    .line 1691
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1693
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1694
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1698
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1699
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v1, :cond_3

    .line 1700
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1701
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1702
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1705
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1706
    goto :goto_1

    .line 1709
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    .line 1710
    .local v2, "identifierFlag":Z
    if-nez v2, :cond_4

    .line 1711
    goto :goto_2

    .line 1713
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1715
    .end local v2    # "identifierFlag":Z
    goto :goto_1

    .line 1717
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1718
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1721
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 4

    .line 1618
    const/4 v0, 0x0

    .line 1619
    .local v0, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    .line 1620
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1621
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x7e

    if-ne v1, v3, :cond_0

    .line 1622
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1623
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1624
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v2, :cond_1

    .line 1625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1626
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1628
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1630
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x21

    if-ne v1, v3, :cond_3

    .line 1631
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1632
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1633
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1634
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_5

    .line 1635
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1636
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v2, :cond_4

    .line 1637
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1638
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1640
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1642
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_7

    .line 1643
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1644
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v2, :cond_6

    .line 1645
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1646
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1648
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1652
    :cond_7
    :goto_0
    if-nez v0, :cond_12

    .line 1653
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, "name":Ljava/lang/String;
    const-string v2, "not"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1656
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1658
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 1660
    const-string v2, "like"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1661
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1662
    :cond_8
    const-string v2, "rlike"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1663
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1664
    :cond_9
    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1665
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1666
    :cond_a
    const-string v2, "between"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1667
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1669
    :cond_b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1671
    :cond_c
    const-string v2, "nin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1672
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1674
    :cond_d
    const-string v2, "like"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1675
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1676
    :cond_e
    const-string v2, "rlike"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1677
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1678
    :cond_f
    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1679
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1680
    :cond_10
    const-string v2, "between"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1681
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1683
    :cond_11
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1687
    .end local v1    # "name":Ljava/lang/String;
    :cond_12
    :goto_1
    return-object v0
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segment;
    .locals 9

    .line 767
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 768
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v0, v0, -0x30

    .line 770
    .local v0, "index":I
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;-><init>(I)V

    return-object v1

    .line 771
    .end local v0    # "index":I
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 772
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 775
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_16

    .line 776
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 778
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_4

    .line 779
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 780
    goto :goto_0

    .line 783
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x5b

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_5

    goto :goto_1

    .line 840
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v3, :cond_6

    .line 841
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v0

    return-object v0

    .line 844
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v0, :cond_7

    .line 845
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "propertyName":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 850
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support jsonpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_8
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 785
    .local v0, "c0":I
    const/4 v5, 0x0

    .line 786
    .local v5, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 787
    const/16 v6, 0x2a

    if-ne v0, v4, :cond_9

    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v4, :cond_9

    .line 788
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 789
    const/4 v5, 0x1

    .line 790
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v8, v8, 0x3

    if-le v7, v8, :cond_9

    iget-char v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v7, v3, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 792
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/2addr v7, v2

    .line 793
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x2

    .line 794
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_9

    .line 795
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 796
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 797
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 798
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 801
    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v6, :cond_c

    .line 802
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_a

    .line 803
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 806
    :cond_a
    if-eqz v5, :cond_b

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance_deep:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    :goto_2
    return-object v1

    .line 809
    :cond_c
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 810
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    return-object v1

    .line 813
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "propertyName":Ljava/lang/String;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-ne v2, v3, :cond_15

    .line 815
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 816
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x29

    if-ne v2, v3, :cond_14

    .line 817
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_e

    .line 818
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 821
    :cond_e
    const-string v2, "size"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "length"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_3

    .line 823
    :cond_f
    const-string v2, "max"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 824
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$MaxSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MaxSegment;

    return-object v2

    .line 825
    :cond_10
    const-string v2, "min"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 826
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$MinSegment;->instance:Lcom/alibaba/fastjson/JSONPath$MinSegment;

    return-object v2

    .line 827
    :cond_11
    const-string v2, "keySet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 828
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$KeySetSegment;->instance:Lcom/alibaba/fastjson/JSONPath$KeySetSegment;

    return-object v2

    .line 831
    :cond_12
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support jsonpath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_13
    :goto_3
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    return-object v2

    .line 834
    :cond_14
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support jsonpath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 837
    :cond_15
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-direct {v2, v1, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 853
    .end local v0    # "c0":I
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v5    # "deep":Z
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method readString()Ljava/lang/String;
    .locals 4

    .line 1725
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1726
    .local v0, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1728
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1729
    .local v1, "beginIndex":I
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1733
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1737
    return-object v2
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 3

    .line 1590
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1592
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1596
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1600
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 1601
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, "name":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1604
    const/4 v1, 0x0

    return-object v1

    .line 1606
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1610
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1597
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhitespace()V
    .locals 2

    .line 858
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 860
    goto :goto_0

    .line 865
    :cond_1
    return-void
.end method
