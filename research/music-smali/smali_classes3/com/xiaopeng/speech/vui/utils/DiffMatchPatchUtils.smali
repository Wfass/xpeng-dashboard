.class public Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
.super Ljava/lang/Object;
.source "DiffMatchPatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;,
        Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;,
        Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;,
        Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private BLANKLINEEND:Ljava/util/regex/Pattern;

.field private BLANKLINESTART:Ljava/util/regex/Pattern;

.field public Diff_EditCost:S

.field public Diff_Timeout:F

.field public Match_Distance:I

.field private Match_MaxBits:S

.field public Match_Threshold:F

.field public Patch_DeleteThreshold:F

.field public Patch_Margin:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/4 v0, 0x4

    .line 20
    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    iput v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Threshold:F

    const/16 v2, 0x3e8

    .line 30
    iput v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Distance:I

    .line 37
    iput v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_DeleteThreshold:F

    .line 41
    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    const/16 v0, 0x20

    .line 46
    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    const-string v1, "\\n\\r?\\n\\Z"

    .line 1003
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINEEND:Ljava/util/regex/Pattern;

    const-string v1, "\\A\\r?\\n\\r?\\n"

    .line 1005
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINESTART:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static diffAndMerge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2447
    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;

    invoke-direct {v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;-><init>()V

    const/4 v3, 0x1

    const-wide/32 v4, 0x7fffffff

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    .line 2448
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object p1

    .line 2451
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "========"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VuiSceneCache"

    invoke-static {v4, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2456
    :cond_0
    invoke-virtual {v6, p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    .line 2458
    invoke-virtual {v6, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_toText(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 2459
    invoke-virtual {v6, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_fromText(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    .line 2461
    invoke-virtual {v6, p1, p0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_apply(Ljava/util/LinkedList;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    .line 2462
    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJ)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    const/4 v4, 0x0

    .line 449
    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-virtual {p2, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-virtual {p2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object v5, p0

    move-wide/from16 v9, p5

    .line 455
    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v6

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p5

    .line 456
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 458
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-object v6
.end method

.method private diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    .line 969
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 970
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 971
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 972
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v4, :cond_1

    .line 973
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    if-eqz v5, :cond_2

    .line 974
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    const/16 v8, 0xf

    if-eqz v6, :cond_3

    .line 976
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    if-ne v0, v8, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v7, :cond_4

    .line 978
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    if-ne v3, v8, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v0, :cond_5

    .line 979
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINEEND:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_4

    :cond_5
    move p1, v2

    :goto_4
    if-eqz v3, :cond_6

    .line 980
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINESTART:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_5

    :cond_6
    move p2, v2

    :goto_5
    if-nez p1, :cond_f

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    if-nez v0, :cond_e

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v4, :cond_9

    if-nez v6, :cond_9

    if-eqz v7, :cond_9

    const/4 p1, 0x3

    return p1

    :cond_9
    if-nez v6, :cond_d

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    if-nez v4, :cond_c

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    return v2

    :cond_c
    :goto_6
    return v1

    :cond_d
    :goto_7
    const/4 p1, 0x2

    return p1

    :cond_e
    :goto_8
    const/4 p1, 0x4

    return p1

    :cond_f
    :goto_9
    const/4 p1, 0x5

    return p1

    :cond_10
    :goto_a
    const/4 p1, 0x6

    return p1
.end method

.method private diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    move-object v6, p0

    move-object v0, p1

    move-object v1, p2

    move-wide/from16 v7, p4

    .line 182
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v3, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 190
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 192
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v3, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 196
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 197
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v0

    .line 198
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v5, v9, :cond_5

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 203
    :goto_2
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v7, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 209
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 212
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v4, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v3, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 218
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatch(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 221
    aget-object v1, v2, v10

    .line 222
    aget-object v9, v2, v4

    const/4 v0, 0x2

    .line 223
    aget-object v3, v2, v0

    const/4 v0, 0x3

    .line 224
    aget-object v10, v2, v0

    const/4 v0, 0x4

    .line 225
    aget-object v11, v2, v0

    move-object v0, p0

    move-object v2, v3

    move/from16 v3, p3

    move-wide/from16 v4, p4

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v12

    move-object v1, v9

    move-object v2, v10

    .line 229
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-object v12

    :cond_7
    if-eqz p3, :cond_8

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_8

    .line 239
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_lineMode(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 242
    :cond_8
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisect(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method private diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 691
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const-string v7, ""

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move v7, v6

    :goto_0
    const/4 v13, 0x1

    add-int/2addr v7, v13

    .line 696
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v14, 0x0

    if-eq v7, v6, :cond_1

    .line 697
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 698
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 697
    invoke-virtual {v0, v13, v15}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 699
    invoke-virtual {v1, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 700
    invoke-virtual {v2, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-virtual {v0, v15, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 701
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int v5, v6, v13

    if-ge v15, v5, :cond_0

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v8, v7, v6

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v9, v7, v13

    .line 703
    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sub-int v6, v3, v6

    .line 704
    invoke-virtual {v1, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v10, v3, v13

    .line 705
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 706
    invoke-virtual {v2, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 707
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v8

    move-object v12, v9

    move-object v8, v5

    move-object v9, v6

    :cond_0
    const/4 v5, 0x4

    const/4 v6, -0x1

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v2, v1, :cond_2

    const/4 v1, 0x5

    .line 711
    new-array v1, v1, [Ljava/lang/String;

    aput-object v9, v1, v14

    aput-object v10, v1, v13

    aput-object v11, v1, v3

    const/4 v2, 0x3

    aput-object v12, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private diff_lineMode(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToChars(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;

    move-result-object p1

    .line 258
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars1:Ljava/lang/String;

    .line 259
    iget-object v2, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars2:Ljava/lang/String;

    .line 260
    iget-object p1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->lineArray:Ljava/util/List;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p3

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object p2

    .line 265
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_charsToLines(Ljava/util/List;Ljava/util/List;)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemantic(Ljava/util/LinkedList;)V

    .line 271
    new-instance p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 277
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move v3, v2

    move v4, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 279
    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v9, 0x2

    if-eq v7, v9, :cond_3

    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    goto :goto_3

    :cond_0
    if-lt v4, v8, :cond_2

    if-lt v3, v8, :cond_2

    .line 292
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move v0, v2

    :goto_1
    add-int v7, v4, v3

    if-ge v0, v7, :cond_1

    .line 294
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 295
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    move-object v4, p0

    move-wide v8, p3

    .line 297
    invoke-direct/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 299
    invoke-interface {p1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v5, v1

    move-object v6, v5

    move v3, v2

    move v4, v3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 308
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-object p2
.end method

.method private diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    .line 505
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    const/16 v2, 0xa

    .line 506
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 510
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 512
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 513
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 515
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, p4, :cond_2

    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 521
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v2, v3, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    .line 143
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, v4

    move v3, p3

    move-wide v4, p4

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 158
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 161
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 165
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    return-object v0

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs. (diff_main)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private match_bitapScore(IIILjava/lang/String;)D
    .locals 0

    int-to-float p1, p1

    .line 1653
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    sub-int/2addr p3, p2

    .line 1654
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1655
    iget p3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Distance:I

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    float-to-double p1, p1

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide p1

    :cond_1
    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-double p1, p1

    return-wide p1
.end method

.method private static unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%21"

    const-string v1, "!"

    .line 2432
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%7E"

    const-string/jumbo v1, "~"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%27"

    const-string v1, "\'"

    .line 2433
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%28"

    const-string v1, "("

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%29"

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3B"

    const-string v1, ";"

    .line 2434
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2F"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3F"

    const-string v1, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3A"

    const-string v1, ":"

    .line 2435
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%40"

    const-string v1, "@"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%26"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%3D"

    const-string v1, "="

    .line 2436
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2B"

    const-string v1, "+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%24"

    const-string v1, "$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2C"

    const-string v1, ","

    .line 2437
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%23"

    const-string v1, "#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected diff_bisect(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 327
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 328
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v0, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 329
    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v6, v4, 0x2

    .line 332
    new-array v7, v6, [I

    .line 333
    new-array v8, v6, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, -0x1

    if-ge v10, v6, :cond_0

    .line 335
    aput v11, v7, v10

    .line 336
    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v4, 0x1

    .line 338
    aput v9, v7, v10

    .line 339
    aput v9, v8, v10

    sub-int v10, v0, v3

    .line 343
    rem-int/lit8 v12, v10, 0x2

    if-eqz v12, :cond_1

    move v12, v5

    goto :goto_1

    :cond_1
    move v12, v9

    :goto_1
    move v13, v9

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_2
    if-ge v9, v4, :cond_16

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    cmp-long v17, v17, p3

    if-lez v17, :cond_2

    goto/16 :goto_e

    :cond_2
    neg-int v11, v9

    add-int v18, v11, v13

    move/from16 v24, v18

    move/from16 v18, v13

    move/from16 v13, v24

    :goto_3
    sub-int v5, v9, v14

    if-gt v13, v5, :cond_b

    add-int v5, v4, v13

    if-eq v13, v11, :cond_5

    if-eq v13, v9, :cond_3

    add-int/lit8 v20, v5, -0x1

    move/from16 v21, v9

    .line 360
    aget v9, v7, v20

    add-int/lit8 v20, v5, 0x1

    move/from16 v22, v11

    aget v11, v7, v20

    if-ge v9, v11, :cond_4

    goto :goto_4

    :cond_3
    move/from16 v21, v9

    move/from16 v22, v11

    :cond_4
    add-int/lit8 v9, v5, -0x1

    .line 363
    aget v9, v7, v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    goto :goto_5

    :cond_5
    move/from16 v21, v9

    move/from16 v22, v11

    :goto_4
    add-int/lit8 v9, v5, 0x1

    .line 361
    aget v9, v7, v9

    :goto_5
    sub-int v11, v9, v13

    :goto_6
    if-ge v9, v0, :cond_6

    if-ge v11, v3, :cond_6

    move/from16 v20, v15

    .line 367
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v15, v1, :cond_7

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v15, v20

    goto :goto_6

    :cond_6
    move/from16 v20, v15

    .line 371
    :cond_7
    aput v9, v7, v5

    if-le v9, v0, :cond_8

    add-int/lit8 v14, v14, 0x2

    goto :goto_7

    :cond_8
    if-le v11, v3, :cond_9

    add-int/lit8 v18, v18, 0x2

    goto :goto_7

    :cond_9
    if-eqz v12, :cond_a

    add-int v1, v4, v10

    sub-int/2addr v1, v13

    if-ltz v1, :cond_a

    if-ge v1, v6, :cond_a

    .line 380
    aget v5, v8, v1

    const/4 v15, -0x1

    if-eq v5, v15, :cond_a

    .line 382
    aget v1, v8, v1

    sub-int v1, v0, v1

    if-lt v9, v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    move v4, v11

    move-wide/from16 v5, p3

    .line 385
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x2

    move-object/from16 v1, p1

    move/from16 v15, v20

    move/from16 v9, v21

    move/from16 v11, v22

    goto/16 :goto_3

    :cond_b
    move/from16 v21, v9

    move/from16 v22, v11

    move/from16 v20, v15

    add-int v11, v22, v20

    :goto_8
    sub-int v9, v21, v16

    if-gt v11, v9, :cond_15

    add-int v1, v4, v11

    move/from16 v5, v22

    if-eq v11, v5, :cond_e

    move/from16 v9, v21

    if-eq v11, v9, :cond_c

    add-int/lit8 v13, v1, -0x1

    .line 395
    aget v13, v8, v13

    add-int/lit8 v20, v1, 0x1

    move/from16 v22, v5

    aget v5, v8, v20

    if-ge v13, v5, :cond_d

    goto :goto_9

    :cond_c
    move/from16 v22, v5

    :cond_d
    add-int/lit8 v5, v1, -0x1

    .line 398
    aget v5, v8, v5

    const/4 v13, 0x1

    add-int/2addr v5, v13

    goto :goto_a

    :cond_e
    move/from16 v22, v5

    move/from16 v9, v21

    :goto_9
    add-int/lit8 v5, v1, 0x1

    .line 396
    aget v5, v8, v5

    :goto_a
    sub-int v13, v5, v11

    :goto_b
    if-ge v5, v0, :cond_f

    if-ge v13, v3, :cond_f

    sub-int v20, v0, v5

    move/from16 v21, v14

    const/16 v19, 0x1

    add-int/lit8 v14, v20, -0x1

    move/from16 v20, v9

    move-object/from16 v9, p1

    .line 402
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int v23, v3, v13

    add-int/lit8 v9, v23, -0x1

    .line 403
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v14, v9, :cond_10

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v20

    move/from16 v14, v21

    goto :goto_b

    :cond_f
    move/from16 v20, v9

    move/from16 v21, v14

    const/16 v19, 0x1

    .line 407
    :cond_10
    aput v5, v8, v1

    if-le v5, v0, :cond_12

    add-int/lit8 v16, v16, 0x2

    :cond_11
    :goto_c
    const/4 v13, -0x1

    goto :goto_d

    :cond_12
    if-le v13, v3, :cond_13

    add-int/lit8 v15, v15, 0x2

    goto :goto_c

    :cond_13
    if-nez v12, :cond_11

    add-int v1, v4, v10

    sub-int/2addr v1, v11

    if-ltz v1, :cond_11

    if-ge v1, v6, :cond_11

    .line 416
    aget v9, v7, v1

    const/4 v13, -0x1

    if-eq v9, v13, :cond_14

    .line 417
    aget v9, v7, v1

    add-int v14, v4, v9

    sub-int/2addr v14, v1

    sub-int v1, v0, v5

    if-lt v9, v1, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v9

    move v4, v14

    move-wide/from16 v5, p3

    .line 423
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_d
    add-int/lit8 v11, v11, 0x2

    move/from16 v14, v21

    move/from16 v21, v20

    goto/16 :goto_8

    :cond_15
    move/from16 v20, v21

    const/4 v13, -0x1

    const/16 v19, 0x1

    move/from16 v21, v14

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v1, p1

    move v11, v13

    move/from16 v13, v18

    move/from16 v5, v19

    goto/16 :goto_2

    .line 431
    :cond_16
    :goto_e
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 432
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    move-object/from16 v4, p1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected diff_charsToLines(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 541
    :goto_1
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 542
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 544
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public diff_cleanupEfficiency(Ljava/util/LinkedList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1012
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1016
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1018
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1027
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v12, v3

    move-object v8, v4

    move v6, v5

    move v7, v6

    move v9, v7

    move v10, v9

    move v11, v10

    :goto_0
    if-eqz v3, :cond_e

    .line 1030
    iget-object v13, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v15, 0x1

    if-ne v13, v14, :cond_3

    .line 1032
    iget-object v8, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v13, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    if-ge v8, v13, :cond_2

    if-nez v7, :cond_1

    if-eqz v9, :cond_2

    .line 1034
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1037
    iget-object v3, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_1

    .line 1040
    :cond_2
    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    move-object v12, v3

    move-object v3, v4

    move v7, v10

    move v9, v11

    :goto_1
    move-object v8, v3

    move v10, v7

    move v11, v9

    move v7, v5

    move v9, v7

    goto/16 :goto_6

    .line 1047
    :cond_3
    iget-object v13, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v13, v14, :cond_4

    move v9, v15

    goto :goto_2

    :cond_4
    move v7, v15

    :goto_2
    if-eqz v8, :cond_c

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    if-eqz v7, :cond_5

    if-nez v9, :cond_6

    .line 1062
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    iget-short v14, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    div-int/lit8 v14, v14, 0x2

    if-ge v13, v14, :cond_c

    add-int v13, v10, v11

    add-int/2addr v13, v7

    add-int/2addr v13, v9

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    .line 1067
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eq v3, v6, :cond_7

    .line 1068
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_3

    .line 1070
    :cond_7
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1073
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v6, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1075
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v6, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1077
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    .line 1082
    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    move-object v12, v3

    move v3, v15

    goto :goto_5

    .line 1085
    :cond_8
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1087
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 1089
    :cond_9
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v12

    goto :goto_4

    .line 1095
    :cond_a
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1097
    :goto_4
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    if-eq v3, v6, :cond_b

    goto :goto_4

    :cond_b
    move v3, v5

    :goto_5
    move v7, v3

    move v9, v7

    move-object v8, v4

    move v6, v15

    .line 1106
    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_0

    :cond_d
    move-object v3, v4

    goto/16 :goto_0

    :cond_e
    if-eqz v6, :cond_f

    .line 1110
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    :cond_f
    return-void
.end method

.method public diff_cleanupMerge(Ljava/util/LinkedList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .line 1120
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1126
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v2

    move-object v8, v6

    move-object v9, v3

    move v5, v4

    move v7, v5

    :goto_0
    const/4 v10, 0x1

    if-eqz v1, :cond_f

    .line 1130
    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v12, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v10, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int v11, v7, v5

    if-le v11, v10, :cond_a

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v10, v4

    .line 1145
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v7, -0x1

    if-lez v7, :cond_2

    .line 1147
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1148
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    move v7, v1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v5, -0x1

    if-lez v5, :cond_3

    .line 1151
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1152
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    move v5, v1

    goto :goto_3

    :cond_3
    if-eqz v10, :cond_6

    .line 1156
    invoke-virtual {p0, v6, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 1158
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1159
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1163
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 1165
    :cond_4
    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 1166
    invoke-virtual {v6, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 1165
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1168
    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1169
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v6, v5

    .line 1172
    :cond_5
    invoke-virtual {p0, v6, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 1174
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1177
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1179
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1181
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1185
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1186
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v5, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1188
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1189
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v5, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1192
    :cond_8
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_5

    :cond_9
    move-object v1, v3

    goto :goto_5

    :cond_a
    if-eqz v9, :cond_b

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1196
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 1197
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1198
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_b
    :goto_5
    move-object v9, v1

    move-object v6, v2

    move-object v8, v6

    move v5, v4

    move v7, v5

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 1138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_6

    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 1133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_6
    move-object v9, v3

    .line 1207
    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_0

    :cond_e
    move-object v1, v3

    goto/16 :goto_0

    .line 1209
    :cond_f
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 1210
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1221
    :cond_10
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1222
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_8

    :cond_11
    move-object v1, v3

    .line 1223
    :goto_8
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_9

    :cond_12
    move-object v2, v3

    .line 1224
    :goto_9
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_a

    :cond_13
    move-object v5, v3

    :goto_a
    move-object v6, v2

    move-object v2, v1

    move v1, v4

    :goto_b
    if-eqz v5, :cond_19

    .line 1227
    iget-object v7, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v7, v8, :cond_17

    iget-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v7, v8, :cond_17

    .line 1230
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v8, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1233
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1234
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1233
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1236
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1237
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1238
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1239
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 1240
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1241
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1242
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_c

    :cond_14
    move-object v2, v3

    :goto_c
    move-object v6, v2

    move-object v2, v1

    :goto_d
    move v1, v10

    goto :goto_f

    .line 1244
    :cond_15
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1249
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 1250
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_e

    :cond_16
    move-object v1, v3

    :goto_e
    move-object v2, v6

    move-object v6, v1

    goto :goto_d

    :cond_17
    move-object v2, v6

    move-object v6, v5

    .line 1256
    :goto_f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_b

    :cond_18
    move-object v5, v3

    goto/16 :goto_b

    :cond_19
    if-eqz v1, :cond_1a

    .line 1260
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    :cond_1a
    return-void
.end method

.method public diff_cleanupSemantic(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 727
    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 729
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 736
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v8, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v9, v7

    move v10, v9

    :goto_0
    if-eqz v2, :cond_9

    .line 738
    iget-object v11, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_1

    .line 740
    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 745
    iget-object v2, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    move-object v8, v2

    move v9, v6

    move v10, v7

    move v6, v4

    move v7, v6

    goto/16 :goto_5

    .line 748
    :cond_1
    iget-object v11, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_2

    .line 749
    iget-object v11, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_1

    .line 751
    :cond_2
    iget-object v11, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    :goto_1
    if-eqz v8, :cond_7

    .line 755
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 756
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 757
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 758
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 761
    :goto_2
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eq v2, v5, :cond_3

    .line 762
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_2

    .line 764
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 767
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v2, v5, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 769
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v2, v5, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 771
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 772
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 774
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 776
    :cond_4
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    :goto_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 779
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_3

    .line 783
    :cond_5
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 784
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    if-eq v2, v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    move v5, v2

    move-object v8, v3

    move v6, v4

    move v7, v6

    move v9, v7

    move v10, v9

    .line 797
    :cond_7
    :goto_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_0

    :cond_8
    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_a

    .line 802
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    .line 804
    :cond_a
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V

    .line 812
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 815
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 816
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 817
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 818
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_6

    :cond_b
    move-object v1, v3

    goto :goto_6

    :cond_c
    move-object v0, v3

    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_13

    .line 822
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v2, v5, :cond_12

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v2, v5, :cond_12

    .line 824
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 825
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 826
    invoke-virtual {p0, v2, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 827
    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-lt v6, v7, :cond_e

    int-to-double v10, v6

    .line 829
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    int-to-double v12, v7

    div-double/2addr v12, v8

    cmpl-double v7, v10, v12

    if-gez v7, :cond_d

    .line 830
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-double v12, v7

    div-double/2addr v12, v8

    cmpl-double v7, v10, v12

    if-ltz v7, :cond_10

    .line 832
    :cond_d
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 833
    new-instance v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 834
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 833
    invoke-interface {p1, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 836
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_7

    :cond_e
    int-to-double v10, v7

    .line 842
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v12, v6

    div-double/2addr v12, v8

    cmpl-double v6, v10, v12

    if-gez v6, :cond_f

    .line 843
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v12, v6

    div-double/2addr v12, v8

    cmpl-double v6, v10, v12

    if-ltz v6, :cond_10

    .line 846
    :cond_f
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 847
    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 848
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 847
    invoke-interface {p1, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 849
    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iput-object v6, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 851
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 852
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iput-object v0, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 853
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 858
    :cond_10
    :goto_7
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_8

    :cond_11
    move-object v0, v3

    goto :goto_8

    :cond_12
    move-object v0, v1

    .line 861
    :goto_8
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_6

    :cond_13
    return-void
.end method

.method public diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 879
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 880
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 881
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_9

    .line 884
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v4, v5, :cond_8

    iget-object v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v4, v5, :cond_8

    .line 887
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 888
    iget-object v5, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 889
    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 892
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 894
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 895
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 896
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 897
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 904
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 905
    invoke-direct {p0, v5, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    add-int/2addr v7, v9

    move-object v10, v5

    move-object v11, v6

    move v9, v7

    move-object v7, v4

    .line 906
    :cond_4
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5

    .line 907
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_5

    .line 908
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 909
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 910
    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 911
    invoke-direct {p0, v7, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 912
    invoke-direct {p0, v5, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    if-lt v12, v9, :cond_4

    move-object v10, v5

    move-object v11, v6

    move-object v4, v7

    move v9, v12

    goto :goto_3

    .line 922
    :cond_5
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 924
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 925
    iput-object v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_4

    .line 927
    :cond_6
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 928
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 929
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 930
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 931
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 932
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 934
    :goto_4
    iput-object v10, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 935
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 936
    iput-object v11, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_5

    .line 938
    :cond_7
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_6

    :cond_8
    :goto_5
    move-object v0, v2

    move-object v2, v3

    .line 946
    :goto_6
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method protected diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 594
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v0, v1, :cond_1

    sub-int v3, v0, v1

    .line 601
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 603
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 605
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 607
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x1

    move v3, v2

    :cond_4
    :goto_1
    sub-int v4, v0, v1

    .line 617
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 618
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    return v3

    :cond_5
    add-int/2addr v1, v4

    if-eqz v4, :cond_6

    sub-int v4, v0, v1

    .line 623
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 623
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_6
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_1

    :cond_7
    :goto_2
    return v2
.end method

.method public diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 558
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 574
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-gt v4, v2, :cond_1

    sub-int v5, v0, v4

    .line 577
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int v6, v1, v4

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_0

    sub-int/2addr v4, v3

    return v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public diff_fromDelta(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    .line 1438
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "\t"

    .line 1440
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1441
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const-string v5, ")."

    const-string v6, "Delta length ("

    if-ge v3, v1, :cond_6

    aget-object v7, p2, v3

    .line 1442
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v8, 0x1

    .line 1448
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1449
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_5

    const/16 v10, 0x2d

    const/16 v11, 0x3d

    if-eq v9, v10, :cond_2

    if-ne v9, v11, :cond_1

    goto :goto_1

    .line 1495
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid diff operation in diff_fromDelta: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1470
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-ltz v9, :cond_4

    add-int/2addr v9, v4

    .line 1481
    :try_start_1
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1487
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v11, :cond_3

    .line 1488
    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v5, v6, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1490
    :cond_3
    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v5, v6, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v4, v9

    goto :goto_3

    :catch_0
    move-exception p2

    .line 1483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") larger than source text length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1476
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Negative number in diff_fromDelta: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 1472
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number in diff_fromDelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    const-string v5, "+"

    const-string v6, "%2B"

    .line 1452
    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :try_start_2
    const-string v6, "UTF-8"

    .line 1454
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1463
    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v6, v7, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 1460
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal escape in diff_fromDelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 1457
    new-instance p2, Ljava/lang/Error;

    const-string v0, "This system does not support UTF-8."

    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1499
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v4, p2, :cond_7

    return-object v0

    .line 1500
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") smaller than source text length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected diff_halfMatch(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 642
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 646
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 647
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    move-object v2, p2

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 648
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    goto :goto_3

    .line 654
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    add-int/2addr v3, v6

    div-int/2addr v3, v4

    .line 653
    invoke-direct {p0, v0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    div-int/2addr v7, v5

    .line 656
    invoke-direct {p0, v0, v2, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    if-nez v3, :cond_7

    :cond_6
    move-object v3, v0

    goto :goto_2

    .line 667
    :cond_7
    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 671
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_8

    return-object v3

    :cond_8
    const/4 p1, 0x5

    .line 675
    new-array p1, p1, [Ljava/lang/String;

    aget-object p2, v3, v5

    const/4 v0, 0x0

    aput-object p2, p1, v0

    aget-object p2, v3, v6

    aput-object p2, p1, v8

    aget-object p2, v3, v0

    aput-object p2, p1, v5

    aget-object p2, v3, v8

    aput-object p2, p1, v6

    aget-object p2, v3, v4

    aput-object p2, p1, v4

    return-object p1

    :cond_9
    :goto_3
    return-object v1
.end method

.method public diff_levenshtein(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)I"
        }
    .end annotation

    .line 1370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1371
    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v4, 0x3

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 1380
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    move v2, v0

    goto :goto_0

    .line 1376
    :cond_1
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 1373
    :cond_2
    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1386
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method protected diff_linesToChars(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;
    .locals 3

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    .line 479
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x9c40

    .line 482
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p1

    const v2, 0xffff

    .line 483
    invoke-direct {p0, p2, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p2

    .line 484
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;

    invoke-direct {v1, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public diff_main(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;"
        }
    .end annotation

    .line 105
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    move-wide v6, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 110
    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public diff_prettyHtml(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1311
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const-string v3, "&"

    const-string v4, "&amp;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v4, "&lt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, "&gt;"

    .line 1312
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "&para;<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1313
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "<span>"

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "<del style=\"background:#ffe6e6;\">"

    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</del>"

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "<ins style=\"background:#e6ffe6;\">"

    .line 1315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</ins>"

    .line 1316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1327
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public diff_text1(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1338
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v2, v3, :cond_0

    .line 1339
    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public diff_text2(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1353
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v2, v3, :cond_0

    .line 1354
    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public diff_toDelta(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1401
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "\t"

    if-eq v3, v2, :cond_2

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "="

    .line 1415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "-"

    .line 1412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v2, "+"

    .line 1404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    const/16 v3, 0x20

    .line 1405
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1408
    new-instance v0, Ljava/lang/Error;

    const-string v1, "This system does not support UTF-8."

    invoke-direct {v0, v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1419
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1423
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public diff_xIndex(Ljava/util/List;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;I)I"
        }
    .end annotation

    .line 1278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1279
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v5, v6, :cond_0

    .line 1281
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    .line 1283
    :cond_0
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v5, v6, :cond_1

    .line 1285
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    :cond_1
    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 1295
    iget-object p1, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    sub-int/2addr p2, v3

    add-int/2addr v2, p2

    return v2
.end method

.method protected match_alphabet(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1668
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1669
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1670
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, v1, v4

    .line 1671
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1674
    :cond_0
    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    aget-char v5, v1, v3

    .line 1675
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    shl-int v7, v8, v7

    or-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected match_bitap(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1554
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_alphabet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1557
    iget v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Threshold:F

    float-to-double v5, v5

    .line 1559
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v7, v8, :cond_0

    .line 1561
    invoke-direct {v0, v9, v7, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 1564
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_0

    .line 1566
    invoke-direct {v0, v9, v7, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 1572
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    shl-int v7, v10, v7

    .line 1576
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1578
    new-array v12, v9, [I

    move-wide/from16 v21, v5

    move v5, v9

    move-object v6, v12

    move-wide/from16 v12, v21

    .line 1579
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_a

    move v14, v11

    move v15, v14

    move v11, v9

    :goto_1
    if-ge v11, v14, :cond_2

    add-int v9, v3, v14

    .line 1586
    invoke-direct {v0, v5, v9, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v16

    cmpg-double v9, v16, v12

    if-gtz v9, :cond_1

    move v11, v14

    goto :goto_2

    :cond_1
    move v15, v14

    :goto_2
    sub-int v9, v15, v11

    .line 1592
    div-int/lit8 v9, v9, 0x2

    add-int v14, v9, v11

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    sub-int v9, v3, v14

    add-int/2addr v9, v10

    .line 1596
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v11, v3, v14

    .line 1597
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v11, v15

    add-int/lit8 v15, v11, 0x2

    .line 1599
    new-array v15, v15, [I

    add-int/lit8 v16, v11, 0x1

    shl-int v17, v10, v5

    add-int/lit8 v17, v17, -0x1

    .line 1600
    aput v17, v15, v16

    :goto_3
    if-lt v11, v9, :cond_8

    .line 1603
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v17, v8

    add-int/lit8 v8, v11, -0x1

    if-le v10, v8, :cond_4

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_4

    .line 1607
    :cond_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-nez v5, :cond_5

    add-int/lit8 v18, v11, 0x1

    .line 1611
    aget v18, v15, v18

    const/16 v16, 0x1

    shl-int/lit8 v18, v18, 0x1

    or-int/lit8 v18, v18, 0x1

    and-int v10, v18, v10

    aput v10, v15, v11

    goto :goto_6

    :cond_5
    const/16 v16, 0x1

    add-int/lit8 v18, v11, 0x1

    .line 1614
    aget v19, v15, v18

    shl-int/lit8 v19, v19, 0x1

    or-int/lit8 v19, v19, 0x1

    and-int v10, v19, v10

    aget v19, v6, v18

    aget v20, v6, v11

    or-int v19, v19, v20

    shl-int/lit8 v19, v19, 0x1

    or-int/lit8 v19, v19, 0x1

    or-int v10, v10, v19

    aget v18, v6, v18

    or-int v10, v10, v18

    aput v10, v15, v11

    .line 1617
    :goto_6
    aget v10, v15, v11

    and-int/2addr v10, v7

    if-eqz v10, :cond_7

    .line 1618
    invoke-direct {v0, v5, v8, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v18

    cmpg-double v10, v18, v12

    if-gtz v10, :cond_7

    if-le v8, v3, :cond_6

    mul-int/lit8 v9, v3, 0x2

    sub-int/2addr v9, v8

    const/4 v10, 0x1

    .line 1627
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-wide/from16 v12, v18

    goto :goto_7

    :cond_6
    const/4 v10, 0x1

    move-wide/from16 v12, v18

    goto :goto_8

    :cond_7
    const/4 v10, 0x1

    move/from16 v8, v17

    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    :cond_8
    move/from16 v17, v8

    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 1635
    invoke-direct {v0, v5, v3, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v16

    cmpl-double v6, v16, v12

    if-lez v6, :cond_9

    goto :goto_9

    :cond_9
    move v11, v14

    move-object v6, v15

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    :goto_9
    return v8
.end method

.method public match_main(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1524
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1525
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 1528
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1531
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1532
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p3

    .line 1537
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitap(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1521
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null inputs. (match_main)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V
    .locals 6

    .line 1692
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1695
    :cond_0
    iget v0, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v2, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1700
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1701
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-short v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    iget-short v4, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    add-int/2addr v2, v4

    .line 1703
    iget v0, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1704
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v5, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1703
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1707
    :cond_1
    iget-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    add-int/2addr v2, v0

    .line 1710
    iget v0, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1712
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1713
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v4, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1716
    :cond_2
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v1, v3

    .line 1717
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v5, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1716
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1718
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1719
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v2, v3, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1723
    :cond_3
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1724
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1726
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1727
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr v1, v0

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    return-void
.end method

.method public patch_addPadding(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2006
    iget-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    const/4 v1, 0x1

    const-string v2, ""

    :goto_0
    if-gt v1, v0, :cond_0

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    .line 2013
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2014
    iget v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2015
    iget v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    goto :goto_1

    .line 2019
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2020
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2021
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 2028
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_4

    .line 2030
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2031
    iget-object v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    .line 2032
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2034
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2035
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2036
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2037
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_3

    .line 2023
    :cond_3
    :goto_2
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v5, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2024
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v3, v0

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2025
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v3, v0

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2026
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2027
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v3, v0

    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2041
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2042
    iget-object v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2043
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v3, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v3, v4, :cond_5

    goto :goto_4

    .line 2048
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v3, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 2050
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2051
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    .line 2052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2053
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2054
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_5

    .line 2045
    :cond_6
    :goto_4
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v4, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2046
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2047
    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    :cond_7
    :goto_5
    return-object v2
.end method

.method public patch_apply(Ljava/util/LinkedList;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1897
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1898
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v5

    new-array v1, v5, [Z

    aput-object v1, v2, v4

    return-object v2

    .line 1902
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_deepCopy(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    .line 1904
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addPadding(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v6

    .line 1905
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1906
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_splitMax(Ljava/util/LinkedList;)V

    .line 1914
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v7

    new-array v7, v7, [Z

    .line 1915
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v5

    move v9, v8

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 1916
    iget v11, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v11, v8

    .line 1917
    iget-object v12, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 1920
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    iget-short v14, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    const/4 v15, -0x1

    if-le v13, v14, :cond_2

    .line 1924
    invoke-virtual {v12, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1923
    invoke-virtual {v0, v1, v13, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v15, :cond_3

    .line 1927
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    iget-short v3, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    sub-int/2addr v14, v3

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1928
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v11

    iget-short v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    sub-int/2addr v14, v4

    .line 1926
    invoke-virtual {v0, v1, v3, v14}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v15, :cond_1

    if-lt v13, v3, :cond_4

    :cond_1
    move v13, v15

    goto :goto_1

    .line 1935
    :cond_2
    invoke-virtual {v0, v1, v12, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move v13, v3

    :cond_3
    move v3, v15

    :cond_4
    :goto_1
    if-ne v13, v15, :cond_5

    .line 1939
    aput-boolean v5, v7, v9

    .line 1941
    iget v3, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget v4, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    sub-int/2addr v3, v4

    sub-int/2addr v8, v3

    goto/16 :goto_6

    :cond_5
    const/4 v4, 0x1

    .line 1944
    aput-boolean v4, v7, v9

    sub-int v4, v13, v11

    if-ne v3, v15, :cond_6

    .line 1949
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1948
    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1951
    :cond_6
    iget-short v8, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    add-int/2addr v3, v8

    .line 1952
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1951
    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1954
    :goto_2
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v13, v8

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    :goto_3
    move v8, v4

    goto/16 :goto_6

    .line 1961
    :cond_8
    invoke-virtual {v0, v12, v3, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v3

    .line 1962
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v11, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    if-le v8, v11, :cond_9

    .line 1963
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_levenshtein(Ljava/util/List;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v8, v11

    iget v11, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_DeleteThreshold:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_9

    .line 1966
    aput-boolean v5, v7, v9

    goto :goto_3

    .line 1968
    :cond_9
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V

    .line 1970
    iget-object v8, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v5

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1971
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v12, v14, :cond_c

    .line 1972
    invoke-virtual {v0, v3, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_xIndex(Ljava/util/List;I)I

    move-result v12

    .line 1973
    iget-object v14, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v15, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v14, v15, :cond_b

    .line 1975
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v12, v13

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1976
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1977
    :cond_b
    iget-object v14, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v15, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v14, v15, :cond_c

    .line 1979
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v12, v13

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1981
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v10

    .line 1980
    invoke-virtual {v0, v3, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_xIndex(Ljava/util/List;I)I

    move-result v12

    add-int/2addr v12, v13

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1984
    :cond_c
    :goto_5
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v12, v14, :cond_a

    .line 1985
    iget-object v11, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_4

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1994
    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1995
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1994
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1996
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const/4 v1, 0x1

    aput-object v7, v2, v1

    return-object v2
.end method

.method public patch_deepCopy(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    .line 1872
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1873
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 1874
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 1875
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1876
    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 1877
    iget-object v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1879
    :cond_0
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    iput v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1880
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iput v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1881
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iput v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1882
    iget v1, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iput v1, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1883
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public patch_fromText(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    .line 2186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\n"

    .line 2190
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2191
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string p1, "^@@ -(\\d+),?(\\d*) \\+(\\d+),?(\\d*) @@$"

    .line 2194
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2198
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2199
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2200
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2204
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 2205
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 2206
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    const/4 v5, 0x2

    .line 2207
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "0"

    const/4 v8, 0x0

    if-nez v6, :cond_2

    .line 2208
    iget v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v5, v4

    iput v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2209
    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    goto :goto_1

    .line 2210
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2211
    iput v8, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    goto :goto_1

    .line 2213
    :cond_3
    iget v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v6, v4

    iput v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2214
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    :goto_1
    const/4 v5, 0x3

    .line 2217
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    const/4 v5, 0x4

    .line 2218
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 2219
    iget v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v2, v4

    iput v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2220
    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_2

    .line 2221
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2222
    iput v8, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_2

    .line 2224
    :cond_5
    iget v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v6, v4

    iput v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2225
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2227
    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2229
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2231
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2237
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    const-string v7, "%2B"

    .line 2238
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :try_start_1
    const-string v6, "UTF-8"

    .line 2240
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_6

    .line 2251
    iget-object v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v6, v7, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/16 v6, 0x2b

    if-ne v2, v6, :cond_7

    .line 2254
    iget-object v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v6, v7, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/16 v6, 0x20

    if-ne v2, v6, :cond_8

    .line 2257
    iget-object v2, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v6, v7, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2266
    :goto_4
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const/16 v3, 0x40

    if-ne v2, v3, :cond_9

    goto/16 :goto_0

    .line 2263
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid patch mode \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 2246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal escape in patch_fromText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2243
    new-instance v0, Ljava/lang/Error;

    const-string v1, "This system does not support UTF-8."

    invoke-direct {v0, v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2234
    :catch_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_3

    .line 2201
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid patch string: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-object v0
.end method

.method public patch_make(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 1742
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object p2

    .line 1743
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 1744
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemantic(Ljava/util/LinkedList;)V

    .line 1745
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupEfficiency(Ljava/util/LinkedList;)V

    .line 1747
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1

    .line 1739
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null inputs. (patch_make)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch_make(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1776
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1
.end method

.method public patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 1791
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1792
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1795
    :cond_0
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 1803
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v6, p1

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1804
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_2

    .line 1806
    iput v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1807
    iput v5, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1810
    :cond_2
    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/4 v10, 0x3

    if-eq v8, v10, :cond_3

    goto/16 :goto_1

    .line 1824
    :cond_3
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    mul-int/2addr v10, v9

    if-gt v8, v10, :cond_4

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 1825
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 1827
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1828
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-object v10, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1829
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget-object v10, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1832
    :cond_4
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    mul-int/2addr v10, v9

    if-lt v8, v10, :cond_7

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1834
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1835
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    move-object v1, p1

    move v4, v5

    move-object p1, v6

    goto :goto_1

    .line 1818
    :cond_5
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1819
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1820
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1821
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1812
    :cond_6
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1813
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1814
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1850
    :cond_7
    :goto_1
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_8

    .line 1851
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 1853
    :cond_8
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_1

    .line 1854
    iget-object v7, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    goto/16 :goto_0

    .line 1858
    :cond_9
    iget-object p2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 1859
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0

    .line 1788
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null inputs. (patch_make)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch_make(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1761
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1762
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object p1

    return-object p1

    .line 1758
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null inputs. (patch_make)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public patch_splitMax(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;)V"
        }
    .end annotation

    .line 2067
    iget-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    .line 2074
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 2075
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_d

    .line 2077
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-short v4, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    if-gt v3, v4, :cond_1

    .line 2078
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto :goto_0

    .line 2082
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 2083
    iget v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2084
    iget v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    const-string v5, ""

    .line 2086
    :cond_2
    :goto_1
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2088
    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 2090
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v3, v7

    iput v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2091
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v4, v7

    iput v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2092
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 2093
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iput v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2094
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v8, v9, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v5, 0x1

    const/4 v7, 0x0

    move v8, v5

    .line 2096
    :goto_2
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    iget v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int v10, v0, v10

    if-ge v9, v10, :cond_8

    .line 2098
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v9, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 2099
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v10, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2100
    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v9, v11, :cond_4

    .line 2102
    iget v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2103
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v4, v8

    .line 2104
    iget-object v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_3
    move v8, v7

    goto :goto_2

    .line 2106
    :cond_4
    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v9, v11, :cond_5

    iget-object v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ne v11, v5, :cond_5

    iget-object v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2107
    invoke-virtual {v11}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_5

    .line 2108
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v12, v0, 0x2

    if-le v11, v12, :cond_5

    .line 2110
    iget v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2111
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 2113
    iget-object v8, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-direct {v11, v9, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2114
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    .line 2117
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    iget v12, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    sub-int v12, v0, v12

    iget-short v13, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2119
    iget v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2120
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v3, v11

    .line 2121
    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v9, v11, :cond_6

    .line 2122
    iget v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2123
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v11

    goto :goto_4

    :cond_6
    move v8, v7

    .line 2127
    :goto_4
    iget-object v11, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-direct {v12, v9, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2128
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v9, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2129
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_2

    .line 2131
    :cond_7
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2132
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 2137
    :cond_8
    iget-object v5, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {p0, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 2138
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2141
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {p0, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    if-le v9, v10, :cond_9

    .line 2142
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {p0, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    iget-short v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 2144
    :cond_9
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {p0, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2146
    :goto_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b

    .line 2147
    iget v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2148
    iget v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2149
    iget-object v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2150
    invoke-virtual {v9}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v9, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v9, v10, :cond_a

    .line 2151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_6

    .line 2153
    :cond_a
    iget-object v9, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v10, v11, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    if-nez v8, :cond_2

    .line 2157
    invoke-interface {p1, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2160
    :cond_c
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public patch_toText(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
