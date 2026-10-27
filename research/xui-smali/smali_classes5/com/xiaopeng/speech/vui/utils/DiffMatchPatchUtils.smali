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

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    .line 20
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    .line 24
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Threshold:F

    .line 30
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Distance:I

    .line 37
    iput v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_DeleteThreshold:F

    .line 41
    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    .line 46
    const/16 v0, 0x20

    iput-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    .line 1002
    const-string v1, "\\n\\r?\\n\\Z"

    .line 1003
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINEEND:Ljava/util/regex/Pattern;

    .line 1004
    const-string v1, "\\A\\r?\\n\\r?\\n"

    .line 1005
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINESTART:Ljava/util/regex/Pattern;

    .line 1004
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static diffAndMerge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 2447
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;-><init>()V

    .line 2448
    .local v0, "utils":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
    const/4 v4, 0x1

    const-wide/32 v5, 0x7fffffff

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v1

    .line 2451
    .local v1, "fis":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2452
    .local v3, "diff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    const-string v4, "VuiSceneCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "========"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "========"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2454
    .end local v3    # "diff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_0

    .line 2456
    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    .line 2458
    .local v2, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_toText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 2459
    .local v3, "patchesStr":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_fromText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/LinkedList;

    .line 2461
    invoke-virtual {v0, v2, p0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_apply(Ljava/util/LinkedList;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    .line 2462
    .local v4, "results":[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    check-cast v5, Ljava/lang/String;

    return-object v5
.end method

.method private diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;
    .locals 15
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "deadline"    # J
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

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 449
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, "text1a":Ljava/lang/String;
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "text2a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 452
    .local v12, "text1b":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 455
    .local v13, "text2b":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, v11

    move-object v7, v4

    move-wide/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v14

    .line 456
    .local v14, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object v6, v12

    move-object v7, v13

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v5

    .line 458
    .local v5, "diffsb":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v14, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 459
    return-object v14
.end method

.method private diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "one"    # Ljava/lang/String;
    .param p2, "two"    # Ljava/lang/String;

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

    .line 970
    .local v0, "char1":C
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 971
    .local v3, "char2":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 972
    .local v4, "nonAlphaNumeric1":Z
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 973
    .local v5, "nonAlphaNumeric2":Z
    if-eqz v4, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    .line 974
    .local v6, "whitespace1":Z
    :goto_0
    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v2

    .line 975
    .local v7, "whitespace2":Z
    :goto_1
    const/16 v8, 0xf

    if-eqz v6, :cond_3

    .line 976
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v9

    if-ne v9, v8, :cond_3

    move v9, v1

    goto :goto_2

    :cond_3
    move v9, v2

    .line 977
    .local v9, "lineBreak1":Z
    :goto_2
    if-eqz v7, :cond_4

    .line 978
    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v10

    if-ne v10, v8, :cond_4

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v2

    .line 979
    .local v8, "lineBreak2":Z
    :goto_3
    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINEEND:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v1

    goto :goto_4

    :cond_5
    move v10, v2

    .line 980
    .local v10, "blankLine1":Z
    :goto_4
    if-eqz v8, :cond_6

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->BLANKLINESTART:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v1

    goto :goto_5

    :cond_6
    move v11, v2

    .line 982
    .local v11, "blankLine2":Z
    :goto_5
    if-nez v10, :cond_f

    if-eqz v11, :cond_7

    goto :goto_9

    .line 985
    :cond_7
    if-nez v9, :cond_e

    if-eqz v8, :cond_8

    goto :goto_8

    .line 988
    :cond_8
    if-eqz v4, :cond_9

    if-nez v6, :cond_9

    if-eqz v7, :cond_9

    .line 990
    const/4 v1, 0x3

    return v1

    .line 991
    :cond_9
    if-nez v6, :cond_d

    if-eqz v7, :cond_a

    goto :goto_7

    .line 994
    :cond_a
    if-nez v4, :cond_c

    if-eqz v5, :cond_b

    goto :goto_6

    .line 998
    :cond_b
    return v2

    .line 996
    :cond_c
    :goto_6
    return v1

    .line 993
    :cond_d
    :goto_7
    const/4 v1, 0x2

    return v1

    .line 987
    :cond_e
    :goto_8
    const/4 v1, 0x4

    return v1

    .line 984
    :cond_f
    :goto_9
    const/4 v1, 0x5

    return v1

    .line 961
    .end local v0    # "char1":C
    .end local v3    # "char2":C
    .end local v4    # "nonAlphaNumeric1":Z
    .end local v5    # "nonAlphaNumeric2":Z
    .end local v6    # "whitespace1":Z
    .end local v7    # "whitespace2":Z
    .end local v8    # "lineBreak2":Z
    .end local v9    # "lineBreak1":Z
    .end local v10    # "blankLine1":Z
    .end local v11    # "blankLine2":Z
    :cond_10
    :goto_a
    const/4 v0, 0x6

    return v0
.end method

.method private diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;
    .locals 22
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "checklines"    # Z
    .param p4, "deadline"    # J
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 182
    move-wide/from16 v9, p4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v11, v0

    .line 184
    .local v11, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v1, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 187
    return-object v11

    .line 190
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v11

    .line 196
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object v0, v8

    :goto_0
    move-object v12, v0

    .line 197
    .local v12, "longtext":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    move-object v0, v8

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    move-object v13, v0

    .line 198
    .local v13, "shorttext":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 199
    .local v14, "i":I
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq v14, v0, :cond_5

    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 203
    .local v0, "op":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    :goto_2
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-virtual {v12, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v13}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    return-object v11

    .line 209
    .end local v0    # "op":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 212
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v0, v1, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    return-object v11

    .line 218
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatch(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, "hm":[Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 221
    aget-object v16, v15, v1

    .line 222
    .local v16, "text1_a":Ljava/lang/String;
    aget-object v17, v15, v2

    .line 223
    .local v17, "text1_b":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v18, v15, v0

    .line 224
    .local v18, "text2_a":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v19, v15, v0

    .line 225
    .local v19, "text2_b":Ljava/lang/String;
    const/4 v0, 0x4

    aget-object v4, v15, v0

    .line 227
    .local v4, "mid_common":Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, p3

    move-object/from16 v20, v11

    move-object v11, v4

    move-wide v4, v9

    .end local v4    # "mid_common":Ljava/lang/String;
    .local v11, "mid_common":Ljava/lang/String;
    .local v20, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v21

    .line 229
    .local v21, "diffs_a":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 232
    .local v0, "diffs_b":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object/from16 v1, v21

    .line 233
    .end local v20    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .local v1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v2, v3, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-object v1

    .line 238
    .end local v0    # "diffs_b":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v1    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v16    # "text1_a":Ljava/lang/String;
    .end local v17    # "text1_b":Ljava/lang/String;
    .end local v18    # "text2_a":Ljava/lang/String;
    .end local v19    # "text2_b":Ljava/lang/String;
    .end local v21    # "diffs_a":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .local v11, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    :cond_7
    move-object/from16 v20, v11

    .end local v11    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .restart local v20    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    if-eqz p3, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_8

    .line 239
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_lineMode(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1

    .line 242
    :cond_8
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisect(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1
.end method

.method private diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 17
    .param p1, "longtext"    # Ljava/lang/String;
    .param p2, "shorttext"    # Ljava/lang/String;
    .param p3, "i"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 691
    move/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 692
    .local v4, "seed":Ljava/lang/String;
    const/4 v6, -0x1

    .line 693
    .local v6, "j":I
    const-string v7, ""

    .line 694
    .local v7, "best_common":Ljava/lang/String;
    const-string v8, ""

    .local v8, "best_longtext_a":Ljava/lang/String;
    const-string v9, ""

    .line 695
    .local v9, "best_longtext_b":Ljava/lang/String;
    const-string v10, ""

    .local v10, "best_shorttext_a":Ljava/lang/String;
    const-string v11, ""

    .line 696
    .local v11, "best_shorttext_b":Ljava/lang/String;
    :goto_0
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v2, v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    move v6, v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    if-eq v12, v13, :cond_1

    .line 697
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 698
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 697
    invoke-virtual {v0, v12, v13}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 699
    .local v12, "prefixLength":I
    invoke-virtual {v1, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 700
    invoke-virtual {v2, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 699
    invoke-virtual {v0, v13, v15}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 701
    .local v13, "suffixLength":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int v5, v13, v12

    if-ge v15, v5, :cond_0

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v15, v6, v13

    invoke-virtual {v2, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v15, v6, v12

    .line 703
    invoke-virtual {v2, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    .end local v7    # "best_common":Ljava/lang/String;
    .local v5, "best_common":Ljava/lang/String;
    sub-int v7, v3, v13

    invoke-virtual {v1, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 705
    .end local v8    # "best_longtext_a":Ljava/lang/String;
    .local v7, "best_longtext_a":Ljava/lang/String;
    add-int v8, v3, v12

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 706
    .end local v9    # "best_longtext_b":Ljava/lang/String;
    .local v8, "best_longtext_b":Ljava/lang/String;
    sub-int v9, v6, v13

    invoke-virtual {v2, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 707
    .end local v10    # "best_shorttext_a":Ljava/lang/String;
    .local v9, "best_shorttext_a":Ljava/lang/String;
    add-int v10, v6, v12

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 709
    .end local v11    # "best_shorttext_b":Ljava/lang/String;
    .end local v12    # "prefixLength":I
    .end local v13    # "suffixLength":I
    .local v10, "best_shorttext_b":Ljava/lang/String;
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    .line 695
    .end local v5    # "best_common":Ljava/lang/String;
    .local v7, "best_common":Ljava/lang/String;
    .local v8, "best_longtext_a":Ljava/lang/String;
    .local v9, "best_longtext_b":Ljava/lang/String;
    .local v10, "best_shorttext_a":Ljava/lang/String;
    .restart local v11    # "best_shorttext_b":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v12, 0x2

    mul-int/2addr v5, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v5, v13, :cond_2

    .line 711
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    aput-object v8, v5, v14

    const/4 v13, 0x1

    aput-object v9, v5, v13

    aput-object v10, v5, v12

    const/4 v12, 0x3

    aput-object v11, v5, v12

    const/4 v12, 0x4

    aput-object v7, v5, v12

    return-object v5

    .line 714
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method private diff_lineMode(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 17
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "deadline"    # J
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

    move-object/from16 v6, p0

    .line 257
    invoke-virtual/range {p0 .. p2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToChars(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;

    move-result-object v7

    .line 258
    .local v7, "a":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars1:Ljava/lang/String;

    .line 259
    .end local p1    # "text1":Ljava/lang/String;
    .local v8, "text1":Ljava/lang/String;
    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars2:Ljava/lang/String;

    .line 260
    .end local p2    # "text2":Ljava/lang/String;
    .local v9, "text2":Ljava/lang/String;
    iget-object v10, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->lineArray:Ljava/util/List;

    .line 262
    .local v10, "linearray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v8

    move-object v2, v9

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v11

    .line 265
    .local v11, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v6, v11, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_charsToLines(Ljava/util/List;Ljava/util/List;)V

    .line 267
    invoke-virtual {v6, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemantic(Ljava/util/LinkedList;)V

    .line 271
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "count_delete":I
    const/4 v1, 0x0

    .line 274
    .local v1, "count_insert":I
    const-string v2, ""

    .line 275
    .local v2, "text_delete":Ljava/lang/String;
    const-string v3, ""

    .line 276
    .local v3, "text_insert":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    .line 277
    .local v12, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    move v15, v0

    move v5, v1

    move-object v13, v2

    move-object v14, v3

    .line 278
    .end local v0    # "count_delete":I
    .end local v1    # "count_insert":I
    .end local v2    # "text_delete":Ljava/lang/String;
    .end local v3    # "text_insert":Ljava/lang/String;
    .local v4, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v5, "count_insert":I
    .local v13, "text_delete":Ljava/lang/String;
    .local v14, "text_insert":Ljava/lang/String;
    .local v15, "count_delete":I
    :goto_0
    if-eqz v4, :cond_4

    .line 279
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v1, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    move-object v6, v4

    move/from16 v16, v5

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .local v6, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v16, "count_insert":I
    goto/16 :goto_3

    .line 290
    .end local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v16    # "count_insert":I
    .restart local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v5    # "count_insert":I
    :pswitch_0
    const/4 v0, 0x1

    if-lt v15, v0, :cond_1

    if-lt v5, v0, :cond_1

    .line 292
    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 293
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    add-int v1, v15, v5

    if-ge v0, v1, :cond_0

    .line 294
    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 295
    invoke-interface {v12}, Ljava/util/ListIterator;->remove()V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    .end local v0    # "j":I
    :cond_0
    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v13

    move-object v2, v14

    move-object v6, v4

    move/from16 v16, v5

    move-wide/from16 v4, p3

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .restart local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v16    # "count_insert":I
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 299
    .local v1, "subDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    invoke-interface {v12, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 300
    .end local v1    # "subDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_2

    .line 302
    .end local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v16    # "count_insert":I
    .restart local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v5    # "count_insert":I
    :cond_1
    move-object v6, v4

    move/from16 v16, v5

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .restart local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v16    # "count_insert":I
    :cond_2
    const/4 v0, 0x0

    .line 303
    .end local v16    # "count_insert":I
    .local v0, "count_insert":I
    const/4 v1, 0x0

    .line 304
    .end local v15    # "count_delete":I
    .local v1, "count_delete":I
    const-string v13, ""

    .line 305
    const-string v14, ""

    .line 308
    move v5, v0

    move v15, v1

    goto :goto_3

    .line 285
    .end local v0    # "count_insert":I
    .end local v1    # "count_delete":I
    .end local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v5    # "count_insert":I
    .restart local v15    # "count_delete":I
    :pswitch_1
    move-object v6, v4

    move/from16 v16, v5

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .restart local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v16    # "count_insert":I
    add-int/lit8 v15, v15, 0x1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 287
    goto :goto_3

    .line 281
    .end local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v16    # "count_insert":I
    .restart local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v5    # "count_insert":I
    :pswitch_2
    move-object v6, v4

    move/from16 v16, v5

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .restart local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v16    # "count_insert":I
    add-int/lit8 v5, v16, 0x1

    .line 282
    .end local v16    # "count_insert":I
    .restart local v5    # "count_insert":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 283
    nop

    .line 308
    :goto_3
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    move-object v4, v0

    .line 277
    .end local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 310
    :cond_4
    move-object v6, v4

    move/from16 v16, v5

    .end local v4    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "count_insert":I
    .restart local v6    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v16    # "count_insert":I
    invoke-virtual {v11}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 312
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p4, "maxLines"    # I
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

    .line 498
    .local p2, "lineArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "lineHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 499
    .local v0, "lineStart":I
    const/4 v1, -0x1

    .line 501
    .local v1, "lineEnd":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v2, "chars":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 506
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 507
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 508
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 510
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 515
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, p4, :cond_2

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 521
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 527
    .end local v3    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;
    .locals 12
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "checklines"    # Z
    .param p4, "deadline"    # J
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

    .line 128
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 136
    .local v2, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v3, v4, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    return-object v2

    .line 143
    .end local v2    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    :cond_1
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, "commonlength":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "commonprefix":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .end local p1    # "text1":Ljava/lang/String;
    .local v0, "text1":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local p2    # "text2":Ljava/lang/String;
    .local v1, "text2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 150
    .end local v2    # "commonlength":I
    .local v8, "commonlength":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "commonsuffix":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 152
    .end local v0    # "text1":Ljava/lang/String;
    .local v10, "text1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 155
    .end local v1    # "text2":Ljava/lang/String;
    .local v11, "text2":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v10

    move-object v2, v11

    move v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_compute(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 158
    .local v0, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 161
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v2, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 165
    :cond_3
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    .line 166
    return-object v0

    .line 129
    .end local v0    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v7    # "commonprefix":Ljava/lang/String;
    .end local v8    # "commonlength":I
    .end local v9    # "commonsuffix":Ljava/lang/String;
    .end local v10    # "text1":Ljava/lang/String;
    .end local v11    # "text2":Ljava/lang/String;
    .restart local p1    # "text1":Ljava/lang/String;
    .restart local p2    # "text2":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null inputs. (diff_main)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private match_bitapScore(IIILjava/lang/String;)D
    .locals 4
    .param p1, "e"    # I
    .param p2, "x"    # I
    .param p3, "loc"    # I
    .param p4, "pattern"    # Ljava/lang/String;

    .line 1653
    int-to-float v0, p1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1654
    .local v0, "accuracy":F
    sub-int v1, p3, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1655
    .local v1, "proximity":I
    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Distance:I

    if-nez v2, :cond_1

    .line 1657
    if-nez v1, :cond_0

    float-to-double v2, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v2

    .line 1659
    :cond_1
    int-to-float v2, v1

    iget v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Distance:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-double v2, v2

    return-wide v2
.end method

.method private static unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 2432
    const-string v0, "%21"

    const-string v1, "!"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%27"

    const-string v2, "\'"

    .line 2433
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%28"

    const-string v2, "("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%29"

    const-string v2, ")"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3B"

    const-string v2, ";"

    .line 2434
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2F"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3F"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3A"

    const-string v2, ":"

    .line 2435
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%40"

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%26"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%3D"

    const-string v2, "="

    .line 2436
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2B"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%24"

    const-string v2, "$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2C"

    const-string v2, ","

    .line 2437
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%23"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2432
    return-object v0
.end method


# virtual methods
.method protected diff_bisect(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/LinkedList;
    .locals 30
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "deadline"    # J
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

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 327
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 328
    .local v9, "text1_length":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 329
    .local v10, "text2_length":I
    add-int v0, v9, v10

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    div-int/lit8 v11, v0, 0x2

    .line 330
    .local v11, "max_d":I
    move v12, v11

    .line 331
    .local v12, "v_offset":I
    mul-int v13, v2, v11

    .line 332
    .local v13, "v_length":I
    new-array v14, v13, [I

    .line 333
    .local v14, "v1":[I
    new-array v15, v13, [I

    .line 334
    .local v15, "v2":[I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "x":I
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v13, :cond_0

    .line 335
    aput v3, v14, v2

    .line 336
    aput v3, v15, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "x":I
    :cond_0
    add-int/lit8 v2, v12, 0x1

    aput v0, v14, v2

    .line 339
    add-int/lit8 v2, v12, 0x1

    aput v0, v15, v2

    .line 340
    sub-int v16, v9, v10

    .line 343
    .local v16, "delta":I
    rem-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    move/from16 v17, v2

    .line 346
    .local v17, "front":Z
    const/4 v2, 0x0

    .line 347
    .local v2, "k1start":I
    const/4 v4, 0x0

    .line 348
    .local v4, "k1end":I
    const/4 v5, 0x0

    .line 349
    .local v5, "k2start":I
    const/4 v6, 0x0

    .line 350
    .local v6, "k2end":I
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "k2start":I
    .end local v6    # "k2end":I
    .local v0, "d":I
    .local v18, "k2start":I
    .local v19, "k2end":I
    :goto_2
    move v5, v0

    .end local v0    # "d":I
    .local v5, "d":I
    if-ge v5, v11, :cond_12

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v0, v20, p3

    if-lez v0, :cond_2

    .line 353
    nop

    .line 431
    move/from16 v27, v11

    goto/16 :goto_f

    .line 357
    :cond_2
    neg-int v0, v5

    add-int/2addr v0, v2

    move/from16 v21, v2

    move/from16 v20, v4

    .end local v2    # "k1start":I
    .end local v4    # "k1end":I
    .local v0, "k1":I
    .local v20, "k1end":I
    .local v21, "k1start":I
    :goto_3
    move v6, v0

    .end local v0    # "k1":I
    .local v6, "k1":I
    sub-int v0, v5, v20

    if-gt v6, v0, :cond_9

    .line 358
    add-int v22, v12, v6

    .line 360
    .local v22, "k1_offset":I
    neg-int v0, v5

    if-eq v6, v0, :cond_4

    if-eq v6, v5, :cond_3

    add-int/lit8 v0, v22, -0x1

    aget v0, v14, v0

    add-int/lit8 v2, v22, 0x1

    aget v2, v14, v2

    if-ge v0, v2, :cond_3

    goto :goto_4

    .line 363
    :cond_3
    add-int/lit8 v0, v22, -0x1

    aget v0, v14, v0

    add-int/2addr v0, v1

    goto :goto_5

    .line 361
    :cond_4
    :goto_4
    add-int/lit8 v0, v22, 0x1

    aget v0, v14, v0

    .line 363
    .local v0, "x1":I
    :goto_5
    nop

    .line 365
    sub-int v2, v0, v6

    move v4, v0

    .line 366
    .end local v0    # "x1":I
    .local v2, "y1":I
    .local v4, "x1":I
    :goto_6
    if-ge v4, v9, :cond_5

    if-ge v2, v10, :cond_5

    .line 367
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_5

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 365
    const/4 v1, 0x1

    goto :goto_6

    .line 371
    :cond_5
    aput v4, v14, v22

    .line 372
    if-le v4, v9, :cond_6

    .line 374
    add-int/lit8 v20, v20, 0x2

    .line 357
    .end local v2    # "y1":I
    .end local v4    # "x1":I
    .end local v5    # "d":I
    .end local v6    # "k1":I
    .end local v22    # "k1_offset":I
    .local v11, "d":I
    .local v27, "max_d":I
    .local v28, "k1":I
    :goto_7
    move/from16 v28, v6

    move/from16 v27, v11

    move v11, v5

    goto :goto_8

    .line 375
    .end local v27    # "max_d":I
    .end local v28    # "k1":I
    .restart local v2    # "y1":I
    .restart local v4    # "x1":I
    .restart local v5    # "d":I
    .restart local v6    # "k1":I
    .local v11, "max_d":I
    .restart local v22    # "k1_offset":I
    :cond_6
    if-le v2, v10, :cond_7

    .line 377
    add-int/lit8 v21, v21, 0x2

    goto :goto_7

    .line 378
    :cond_7
    if-eqz v17, :cond_8

    .line 379
    add-int v0, v12, v16

    sub-int v1, v0, v6

    .line 380
    .local v1, "k2_offset":I
    if-ltz v1, :cond_8

    if-ge v1, v13, :cond_8

    aget v0, v15, v1

    if-eq v0, v3, :cond_8

    .line 382
    aget v0, v15, v1

    sub-int v0, v9, v0

    .line 383
    .local v0, "x2":I
    if-lt v4, v0, :cond_8

    .line 385
    move/from16 v23, v0

    move-object/from16 v0, p0

    .end local v0    # "x2":I
    .local v23, "x2":I
    move/from16 v24, v1

    move-object v1, v7

    .end local v1    # "k2_offset":I
    .local v24, "k2_offset":I
    move/from16 v25, v2

    move-object v2, v8

    .end local v2    # "y1":I
    .local v25, "y1":I
    move v3, v4

    move/from16 v26, v4

    move/from16 v4, v25

    .end local v4    # "x1":I
    .local v26, "x1":I
    move/from16 v28, v6

    move/from16 v27, v11

    move v11, v5

    move-wide/from16 v5, p3

    .end local v5    # "d":I
    .end local v6    # "k1":I
    .local v11, "d":I
    .restart local v27    # "max_d":I
    .restart local v28    # "k1":I
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 357
    .end local v22    # "k1_offset":I
    .end local v23    # "x2":I
    .end local v24    # "k2_offset":I
    .end local v25    # "y1":I
    .end local v26    # "x1":I
    .end local v27    # "max_d":I
    .end local v28    # "k1":I
    .restart local v5    # "d":I
    .restart local v6    # "k1":I
    .local v11, "max_d":I
    :cond_8
    move/from16 v28, v6

    move/from16 v27, v11

    move v11, v5

    .end local v5    # "d":I
    .end local v6    # "k1":I
    .local v11, "d":I
    .restart local v27    # "max_d":I
    .restart local v28    # "k1":I
    :goto_8
    add-int/lit8 v0, v28, 0x2

    .end local v28    # "k1":I
    .local v0, "k1":I
    move v5, v11

    move/from16 v11, v27

    const/4 v1, 0x1

    goto/16 :goto_3

    .line 392
    .end local v0    # "k1":I
    .end local v27    # "max_d":I
    .restart local v5    # "d":I
    .local v11, "max_d":I
    :cond_9
    move/from16 v27, v11

    move v11, v5

    .end local v5    # "d":I
    .local v11, "d":I
    .restart local v27    # "max_d":I
    neg-int v0, v11

    add-int v0, v0, v18

    .local v0, "k2":I
    :goto_9
    move v5, v0

    .end local v0    # "k2":I
    .local v5, "k2":I
    sub-int v0, v11, v19

    if-gt v5, v0, :cond_11

    .line 393
    add-int v22, v12, v5

    .line 395
    .local v22, "k2_offset":I
    neg-int v0, v11

    if-eq v5, v0, :cond_b

    if-eq v5, v11, :cond_a

    add-int/lit8 v0, v22, -0x1

    aget v0, v15, v0

    add-int/lit8 v1, v22, 0x1

    aget v1, v15, v1

    if-ge v0, v1, :cond_a

    goto :goto_a

    .line 398
    :cond_a
    add-int/lit8 v0, v22, -0x1

    aget v0, v15, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    goto :goto_b

    .line 396
    :cond_b
    :goto_a
    add-int/lit8 v0, v22, 0x1

    aget v0, v15, v0

    .line 398
    .local v0, "x2":I
    :goto_b
    nop

    .line 400
    sub-int v1, v0, v5

    .local v1, "y2":I
    :goto_c
    move v6, v1

    .line 401
    .end local v1    # "y2":I
    .local v6, "y2":I
    if-ge v0, v9, :cond_c

    if-ge v6, v10, :cond_c

    sub-int v1, v9, v0

    const/16 v23, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 402
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int v2, v10, v6

    add-int/lit8 v2, v2, -0x1

    .line 403
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_d

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 405
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "y2":I
    .restart local v1    # "y2":I
    goto :goto_c

    .line 407
    .end local v1    # "y2":I
    .restart local v6    # "y2":I
    :cond_c
    const/16 v23, 0x1

    :cond_d
    aput v0, v15, v22

    .line 408
    if-le v0, v9, :cond_e

    .line 410
    add-int/lit8 v19, v19, 0x2

    .line 392
    .end local v0    # "x2":I
    .end local v5    # "k2":I
    .end local v6    # "y2":I
    .end local v22    # "k2_offset":I
    .local v28, "k2":I
    :goto_d
    move/from16 v28, v5

    goto :goto_e

    .line 411
    .end local v28    # "k2":I
    .restart local v0    # "x2":I
    .restart local v5    # "k2":I
    .restart local v6    # "y2":I
    .restart local v22    # "k2_offset":I
    :cond_e
    if-le v6, v10, :cond_f

    .line 413
    add-int/lit8 v18, v18, 0x2

    goto :goto_d

    .line 414
    :cond_f
    if-nez v17, :cond_10

    .line 415
    add-int v1, v12, v16

    sub-int v4, v1, v5

    .line 416
    .local v4, "k1_offset":I
    if-ltz v4, :cond_10

    if-ge v4, v13, :cond_10

    aget v1, v14, v4

    if-eq v1, v3, :cond_10

    .line 417
    aget v2, v14, v4

    .line 418
    .local v2, "x1":I
    add-int v1, v12, v2

    sub-int v24, v1, v4

    .line 420
    .local v24, "y1":I
    sub-int v1, v9, v0

    .line 421
    .end local v0    # "x2":I
    .local v1, "x2":I
    if-lt v2, v1, :cond_10

    .line 423
    move-object/from16 v0, p0

    move/from16 v23, v1

    move-object v1, v7

    .end local v1    # "x2":I
    .restart local v23    # "x2":I
    move/from16 v25, v2

    move-object v2, v8

    .end local v2    # "x1":I
    .local v25, "x1":I
    move/from16 v3, v25

    move/from16 v26, v4

    move/from16 v4, v24

    .end local v4    # "k1_offset":I
    .local v26, "k1_offset":I
    move/from16 v28, v5

    move/from16 v29, v6

    move-wide/from16 v5, p3

    .end local v5    # "k2":I
    .end local v6    # "y2":I
    .restart local v28    # "k2":I
    .local v29, "y2":I
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_bisectSplit(Ljava/lang/String;Ljava/lang/String;IIJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0

    .line 392
    .end local v22    # "k2_offset":I
    .end local v23    # "x2":I
    .end local v24    # "y1":I
    .end local v25    # "x1":I
    .end local v26    # "k1_offset":I
    .end local v28    # "k2":I
    .end local v29    # "y2":I
    .restart local v5    # "k2":I
    :cond_10
    move/from16 v28, v5

    .end local v5    # "k2":I
    .restart local v28    # "k2":I
    :goto_e
    add-int/lit8 v0, v28, 0x2

    .end local v28    # "k2":I
    .local v0, "k2":I
    goto/16 :goto_9

    .line 350
    .end local v0    # "k2":I
    :cond_11
    const/16 v23, 0x1

    add-int/lit8 v0, v11, 0x1

    .end local v11    # "d":I
    .local v0, "d":I
    move/from16 v4, v20

    move/from16 v2, v21

    move/from16 v1, v23

    move/from16 v11, v27

    goto/16 :goto_2

    .line 431
    .end local v0    # "d":I
    .end local v20    # "k1end":I
    .end local v21    # "k1start":I
    .end local v27    # "max_d":I
    .local v2, "k1start":I
    .local v4, "k1end":I
    .local v11, "max_d":I
    :cond_12
    move/from16 v27, v11

    .end local v11    # "max_d":I
    .restart local v27    # "max_d":I
    :goto_f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 432
    .local v0, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v3, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v1, v3, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 434
    return-object v0
.end method

.method protected diff_charsToLines(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .local p2, "lineArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 540
    .local v1, "diff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v2, "text":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 542
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 544
    .end local v3    # "j":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 545
    .end local v1    # "diff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_0

    .line 546
    .end local v2    # "text":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public diff_cleanupEfficiency(Ljava/util/LinkedList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .line 1012
    .local p1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    const/4 v0, 0x0

    .line 1016
    .local v0, "changes":Z
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1017
    .local v1, "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v2, 0x0

    .line 1018
    .local v2, "lastEquality":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 1020
    .local v3, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v4, 0x0

    .line 1022
    .local v4, "pre_ins":Z
    const/4 v5, 0x0

    .line 1024
    .local v5, "pre_del":Z
    const/4 v6, 0x0

    .line 1026
    .local v6, "post_ins":Z
    const/4 v7, 0x0

    .line 1027
    .local v7, "post_del":Z
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1028
    .local v8, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v2

    move v2, v0

    move-object v0, v8

    .line 1029
    .local v0, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v2, "changes":Z
    .local v4, "lastEquality":Ljava/lang/String;
    .local v5, "pre_ins":Z
    .local v6, "pre_del":Z
    .local v7, "post_ins":Z
    .local v8, "safeDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v9, "post_del":Z
    :goto_0
    if-eqz v0, :cond_12

    .line 1030
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v12, 0x0

    if-ne v10, v11, :cond_3

    .line 1032
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-short v11, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    if-ge v10, v11, :cond_2

    if-nez v7, :cond_1

    if-eqz v9, :cond_2

    .line 1034
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1035
    move v5, v7

    .line 1036
    move v6, v9

    .line 1037
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_1

    .line 1040
    :cond_2
    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 1041
    const/4 v4, 0x0

    .line 1042
    move-object v8, v0

    .line 1044
    :goto_1
    move v9, v12

    move v7, v12

    goto/16 :goto_a

    .line 1047
    :cond_3
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v10, v11, :cond_4

    .line 1048
    const/4 v9, 0x1

    goto :goto_2

    .line 1050
    :cond_4
    const/4 v7, 0x1

    .line 1060
    :goto_2
    if-eqz v4, :cond_10

    const/4 v10, 0x1

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-nez v9, :cond_a

    .line 1062
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    iget-short v13, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_EditCost:S

    div-int/lit8 v13, v13, 0x2

    if-ge v11, v13, :cond_10

    if-eqz v5, :cond_6

    move v11, v10

    goto :goto_3

    :cond_6
    move v11, v12

    :goto_3
    if-eqz v6, :cond_7

    move v13, v10

    goto :goto_4

    :cond_7
    move v13, v12

    :goto_4
    add-int/2addr v11, v13

    if-eqz v7, :cond_8

    move v13, v10

    goto :goto_5

    :cond_8
    move v13, v12

    :goto_5
    add-int/2addr v11, v13

    if-eqz v9, :cond_9

    move v13, v10

    goto :goto_6

    :cond_9
    move v13, v12

    :goto_6
    add-int/2addr v11, v13

    const/4 v13, 0x3

    if-ne v11, v13, :cond_10

    .line 1067
    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v11

    if-eq v0, v11, :cond_b

    .line 1068
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_7

    .line 1070
    :cond_b
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1073
    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v13, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 1075
    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v13, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    move-object v0, v11

    invoke-interface {v3, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1077
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 1078
    const/4 v4, 0x0

    .line 1079
    if-eqz v5, :cond_c

    if-eqz v6, :cond_c

    .line 1081
    move v9, v10

    move v7, v10

    .line 1082
    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    .line 1083
    move-object v8, v0

    goto :goto_9

    .line 1085
    :cond_c
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 1087
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 1089
    :cond_d
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1092
    move-object v0, v8

    goto :goto_8

    .line 1095
    :cond_e
    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1097
    :goto_8
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    if-eq v0, v10, :cond_f

    goto :goto_8

    .line 1100
    :cond_f
    move v9, v12

    move v7, v12

    .line 1103
    :goto_9
    const/4 v2, 0x1

    .line 1106
    :cond_10
    :goto_a
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    :goto_b
    move-object v0, v10

    goto/16 :goto_0

    .line 1109
    :cond_12
    if-eqz v2, :cond_13

    .line 1110
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    .line 1112
    :cond_13
    return-void
.end method

.method public diff_cleanupMerge(Ljava/util/LinkedList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .local p1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object/from16 v0, p0

    .line 1120
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1122
    .local v1, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v3, 0x0

    .line 1123
    .local v3, "count_delete":I
    const/4 v4, 0x0

    .line 1124
    .local v4, "count_insert":I
    const-string v5, ""

    .line 1125
    .local v5, "text_delete":Ljava/lang/String;
    const-string v6, ""

    .line 1126
    .local v6, "text_insert":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1127
    .local v7, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    move-object v9, v5

    move v5, v3

    const/4 v3, 0x0

    .line 1129
    .local v3, "prevEqual":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v5, "count_delete":I
    .local v9, "text_delete":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    if-eqz v7, :cond_c

    .line 1130
    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v12, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_7

    .line 1142
    :pswitch_0
    add-int v11, v5, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_9

    .line 1143
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v12, v10

    :goto_1
    move v11, v12

    .line 1145
    .local v11, "both_types":Z
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1146
    :goto_2
    add-int/lit8 v12, v5, -0x1

    .local v12, "count_delete":I
    if-lez v5, :cond_1

    .line 1147
    .end local v5    # "count_delete":I
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1148
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1146
    move v5, v12

    goto :goto_2

    .line 1150
    :cond_1
    :goto_3
    add-int/lit8 v5, v4, -0x1

    .local v5, "count_insert":I
    if-lez v4, :cond_2

    .line 1151
    .end local v4    # "count_insert":I
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1152
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1150
    move v4, v5

    goto :goto_3

    .line 1154
    :cond_2
    if-eqz v11, :cond_5

    .line 1156
    invoke-virtual {v0, v6, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1157
    .local v4, "commonlength":I
    if-eqz v4, :cond_4

    .line 1158
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1159
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1160
    nop

    .line 1162
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1163
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    .line 1165
    :cond_3
    new-instance v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 1166
    invoke-virtual {v6, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 1165
    invoke-interface {v1, v13}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1168
    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1169
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1172
    :cond_4
    invoke-virtual {v0, v6, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1173
    if-eqz v4, :cond_5

    .line 1174
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1175
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v4

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1177
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v6, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1179
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v9, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1181
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1185
    .end local v4    # "commonlength":I
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 1186
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v10, v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1188
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1189
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v10, v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1192
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 1193
    .end local v7    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v11    # "both_types":Z
    .local v4, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_5
    nop

    .line 1200
    move-object v7, v4

    move v4, v5

    move v5, v12

    goto :goto_6

    .line 1193
    .end local v12    # "count_delete":I
    .local v4, "count_insert":I
    .local v5, "count_delete":I
    .restart local v7    # "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_9
    if-eqz v3, :cond_a

    .line 1195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1196
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1197
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1198
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1200
    :cond_a
    :goto_6
    const/4 v4, 0x0

    .line 1201
    const/4 v5, 0x0

    .line 1202
    const-string v9, ""

    .line 1203
    const-string v6, ""

    .line 1204
    move-object v3, v7

    goto :goto_7

    .line 1137
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    .line 1138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1139
    const/4 v3, 0x0

    .line 1140
    goto :goto_7

    .line 1132
    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    .line 1133
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1134
    const/4 v3, 0x0

    .line 1135
    nop

    .line 1207
    :goto_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    move-object v7, v10

    goto/16 :goto_0

    .line 1209
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_d

    .line 1210
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1218
    :cond_d
    const/4 v11, 0x0

    .line 1221
    .local v11, "changes":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1222
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    .line 1223
    .local v12, "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_9
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    :goto_a
    move-object v7, v13

    .line 1224
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    .line 1226
    .local v13, "nextDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_b
    if-eqz v13, :cond_16

    .line 1227
    iget-object v14, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v15, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v14, v15, :cond_14

    iget-object v14, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v15, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v14, v15, :cond_14

    .line 1230
    iget-object v14, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v15, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1232
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1233
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v10, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1234
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v8, v10

    .line 1233
    const/4 v10, 0x0

    invoke-virtual {v15, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1236
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1237
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1238
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1239
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1240
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1241
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1242
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    :goto_c
    move-object v13, v8

    .line 1243
    const/4 v8, 0x1

    .line 1254
    .end local v11    # "changes":Z
    .local v8, "changes":Z
    :goto_d
    move v11, v8

    goto :goto_f

    .line 1244
    .end local v8    # "changes":Z
    .restart local v11    # "changes":Z
    :cond_12
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v14, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1247
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    iget-object v15, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1249
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1250
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    move-object v13, v8

    .line 1251
    const/4 v8, 0x1

    goto :goto_d

    .line 1254
    :cond_14
    :goto_f
    move-object v12, v7

    .line 1255
    move-object v7, v13

    .line 1256
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_10

    :cond_15
    const/4 v8, 0x0

    :goto_10
    move-object v13, v8

    goto/16 :goto_b

    .line 1259
    :cond_16
    if-eqz v11, :cond_17

    .line 1260
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    .line 1262
    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public diff_cleanupSemantic(Ljava/util/LinkedList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .local p1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object/from16 v0, p0

    .line 723
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    return-void

    .line 726
    :cond_0
    const/4 v1, 0x0

    .line 727
    .local v1, "changes":Z
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 728
    .local v2, "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v3, 0x0

    .line 729
    .local v3, "lastEquality":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 731
    .local v4, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v5, 0x0

    .line 732
    .local v5, "length_insertions1":I
    const/4 v6, 0x0

    .line 734
    .local v6, "length_deletions1":I
    const/4 v7, 0x0

    .line 735
    .local v7, "length_insertions2":I
    const/4 v8, 0x0

    .line 736
    .local v8, "length_deletions2":I
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 737
    .local v9, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_0
    if-eqz v9, :cond_9

    .line 738
    iget-object v11, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_1

    .line 740
    invoke-interface {v2, v9}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 741
    move v5, v7

    .line 742
    move v6, v8

    .line 743
    const/4 v7, 0x0

    .line 744
    const/4 v8, 0x0

    .line 745
    iget-object v3, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto/16 :goto_5

    .line 748
    :cond_1
    iget-object v11, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_2

    .line 749
    iget-object v11, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_1

    .line 751
    :cond_2
    iget-object v11, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 755
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    .line 756
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 757
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    .line 758
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    if-gt v11, v12, :cond_7

    .line 761
    :goto_2
    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v11

    if-eq v9, v11, :cond_3

    .line 762
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_2

    .line 764
    :cond_3
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 767
    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 769
    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 771
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 772
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 774
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 776
    :cond_4
    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 778
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 779
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_3

    .line 783
    :cond_5
    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v11

    move-object v9, v11

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 784
    :goto_4
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    if-eq v9, v11, :cond_6

    goto :goto_4

    .line 789
    :cond_6
    const/4 v5, 0x0

    .line 790
    const/4 v7, 0x0

    .line 791
    const/4 v6, 0x0

    .line 792
    const/4 v8, 0x0

    .line 793
    const/4 v3, 0x0

    .line 794
    const/4 v1, 0x1

    .line 797
    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    move-object v9, v10

    goto/16 :goto_0

    .line 801
    :cond_9
    if-eqz v1, :cond_a

    .line 802
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupMerge(Ljava/util/LinkedList;)V

    .line 804
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V

    .line 812
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 813
    const/4 v11, 0x0

    .line 814
    .local v11, "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    const/4 v9, 0x0

    .line 815
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 816
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 817
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 818
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 821
    :cond_b
    :goto_7
    if-eqz v9, :cond_14

    .line 822
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v12, v13, :cond_12

    iget-object v12, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v12, v13, :cond_12

    .line 824
    iget-object v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 825
    .local v12, "deletion":Ljava/lang/String;
    iget-object v13, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 826
    .local v13, "insertion":Ljava/lang/String;
    invoke-virtual {v0, v12, v13}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 827
    .local v14, "overlap_length1":I
    invoke-virtual {v0, v13, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 828
    .local v15, "overlap_length2":I
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-lt v14, v15, :cond_e

    .line 829
    move-object/from16 v18, v11

    int-to-double v10, v14

    .end local v11    # "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v18, "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v19, v1

    int-to-double v0, v0

    .end local v1    # "changes":Z
    .local v19, "changes":Z
    div-double v0, v0, v16

    cmpl-double v0, v10, v0

    if-gez v0, :cond_d

    int-to-double v0, v14

    .line 830
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    int-to-double v10, v10

    div-double v10, v10, v16

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_c

    goto :goto_8

    .line 858
    :cond_c
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v11, v18

    goto/16 :goto_9

    .line 832
    :cond_d
    :goto_8
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 833
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 834
    const/4 v10, 0x0

    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 833
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 835
    nop

    .line 836
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-virtual {v12, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v18

    iput-object v0, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 837
    .end local v18    # "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v11    # "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 858
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    goto :goto_9

    .line 842
    .end local v19    # "changes":Z
    .restart local v1    # "changes":Z
    :cond_e
    move/from16 v19, v1

    .end local v1    # "changes":Z
    .restart local v19    # "changes":Z
    int-to-double v0, v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    int-to-double v2, v10

    .end local v2    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v3    # "lastEquality":Ljava/lang/String;
    .local v20, "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .local v21, "lastEquality":Ljava/lang/String;
    div-double v2, v2, v16

    cmpl-double v0, v0, v2

    if-gez v0, :cond_f

    int-to-double v0, v15

    .line 843
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v2, v16

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_10

    .line 846
    :cond_f
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 847
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 848
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 847
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 849
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iput-object v0, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 850
    nop

    .line 851
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-virtual {v13, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 852
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iput-object v0, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 853
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 858
    :cond_10
    :goto_9
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    move-object v9, v10

    .end local v12    # "deletion":Ljava/lang/String;
    .end local v13    # "insertion":Ljava/lang/String;
    .end local v14    # "overlap_length1":I
    .end local v15    # "overlap_length2":I
    goto :goto_b

    .line 860
    .end local v19    # "changes":Z
    .end local v20    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v21    # "lastEquality":Ljava/lang/String;
    .restart local v1    # "changes":Z
    .restart local v2    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .restart local v3    # "lastEquality":Ljava/lang/String;
    :cond_12
    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v1    # "changes":Z
    .end local v2    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v3    # "lastEquality":Ljava/lang/String;
    .restart local v19    # "changes":Z
    .restart local v20    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .restart local v21    # "lastEquality":Ljava/lang/String;
    :goto_b
    move-object v11, v9

    .line 861
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_c

    :cond_13
    const/4 v10, 0x0

    :goto_c
    move-object v9, v10

    .line 821
    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v0, p0

    goto/16 :goto_7

    .line 863
    .end local v19    # "changes":Z
    .end local v20    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v21    # "lastEquality":Ljava/lang/String;
    .restart local v1    # "changes":Z
    .restart local v2    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .restart local v3    # "lastEquality":Ljava/lang/String;
    :cond_14
    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v1    # "changes":Z
    .end local v2    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v3    # "lastEquality":Ljava/lang/String;
    .restart local v19    # "changes":Z
    .restart local v20    # "equalities":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .restart local v21    # "lastEquality":Ljava/lang/String;
    return-void
.end method

.method public diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;)V"
        }
    .end annotation

    .local p1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    move-object/from16 v0, p0

    .line 878
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 879
    .local v1, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 880
    .local v2, "prevDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 881
    .local v4, "thisDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 883
    .local v5, "nextDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_2
    if-eqz v5, :cond_a

    .line 884
    iget-object v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v6, v7, :cond_8

    iget-object v6, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v6, v7, :cond_8

    .line 887
    iget-object v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 888
    .local v6, "equality1":Ljava/lang/String;
    iget-object v7, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 889
    .local v7, "edit":Ljava/lang/String;
    iget-object v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 892
    .local v8, "equality2":Ljava/lang/String;
    invoke-virtual {v0, v6, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 893
    .local v9, "commonOffset":I
    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 894
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 895
    .local v11, "commonString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 896
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-virtual {v7, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 897
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 901
    .end local v11    # "commonString":Ljava/lang/String;
    :cond_3
    move-object v11, v6

    .line 902
    .local v11, "bestEquality1":Ljava/lang/String;
    move-object v12, v7

    .line 903
    .local v12, "bestEdit":Ljava/lang/String;
    move-object v13, v8

    .line 904
    .local v13, "bestEquality2":Ljava/lang/String;
    invoke-direct {v0, v6, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 905
    invoke-direct {v0, v7, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    .line 906
    .local v14, "bestScore":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_5

    .line 907
    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v15, v3, :cond_5

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    move/from16 v16, v9

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "commonOffset":I
    .local v16, "commonOffset":I
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 910
    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 911
    invoke-direct {v0, v6, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 912
    invoke-direct {v0, v7, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    add-int/2addr v3, v9

    .line 914
    .local v3, "score":I
    if-lt v3, v14, :cond_4

    .line 915
    move v14, v3

    .line 916
    move-object v11, v6

    .line 917
    move-object v12, v7

    .line 918
    move-object v13, v8

    .line 905
    .end local v3    # "score":I
    .end local v16    # "commonOffset":I
    .restart local v9    # "commonOffset":I
    :cond_4
    move/from16 v9, v16

    goto :goto_3

    .line 922
    :cond_5
    move/from16 v16, v9

    .end local v9    # "commonOffset":I
    .restart local v16    # "commonOffset":I
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 924
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 925
    iput-object v11, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_4

    .line 927
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 928
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 929
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 930
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 931
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 932
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 934
    :goto_4
    iput-object v12, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 935
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 936
    iput-object v13, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_5

    .line 938
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 939
    move-object v5, v4

    .line 940
    move-object v4, v2

    .line 944
    .end local v6    # "equality1":Ljava/lang/String;
    .end local v7    # "edit":Ljava/lang/String;
    .end local v8    # "equality2":Ljava/lang/String;
    .end local v11    # "bestEquality1":Ljava/lang/String;
    .end local v12    # "bestEdit":Ljava/lang/String;
    .end local v13    # "bestEquality2":Ljava/lang/String;
    .end local v14    # "bestScore":I
    .end local v16    # "commonOffset":I
    :cond_8
    :goto_5
    move-object v2, v4

    .line 945
    move-object v4, v5

    .line 946
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    move-object v5, v3

    goto/16 :goto_2

    .line 948
    :cond_a
    return-void
.end method

.method protected diff_commonOverlap(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 594
    .local v0, "text1_length":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 596
    .local v1, "text2_length":I
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 600
    :cond_0
    if-le v0, v1, :cond_2

    .line 601
    sub-int v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 605
    .end local p1    # "text1":Ljava/lang/String;
    .end local p2    # "text2":Ljava/lang/String;
    .local v3, "text1":Ljava/lang/String;
    .local v4, "text2":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v3, p1

    move-object v4, p2

    goto :goto_1

    .line 602
    .end local v3    # "text1":Ljava/lang/String;
    .end local v4    # "text2":Ljava/lang/String;
    .restart local p1    # "text1":Ljava/lang/String;
    .restart local p2    # "text2":Ljava/lang/String;
    :cond_2
    if-ge v0, v1, :cond_1

    .line 603
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 605
    .end local p1    # "text1":Ljava/lang/String;
    .end local p2    # "text2":Ljava/lang/String;
    .restart local v3    # "text1":Ljava/lang/String;
    .restart local v4    # "text2":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 607
    .local v5, "text_length":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 608
    return v5

    .line 614
    :cond_3
    const/4 p1, 0x0

    .line 615
    .local p1, "best":I
    const/4 p2, 0x1

    .line 617
    .local p2, "length":I
    :goto_2
    sub-int v6, v5, p2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, "pattern":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 619
    .local v7, "found":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 620
    return p1

    .line 622
    :cond_4
    add-int/2addr p2, v7

    .line 623
    if-eqz v7, :cond_5

    sub-int v8, v5, p2

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 624
    invoke-virtual {v4, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 623
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 625
    :cond_5
    move p1, p2

    .line 626
    add-int/lit8 p2, p2, 0x1

    .line 628
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "found":I
    :cond_6
    goto :goto_2

    .line 597
    .end local v3    # "text1":Ljava/lang/String;
    .end local v4    # "text2":Ljava/lang/String;
    .end local v5    # "text_length":I
    .local p1, "text1":Ljava/lang/String;
    .local p2, "text2":Ljava/lang/String;
    :cond_7
    :goto_3
    return v2
.end method

.method public diff_commonPrefix(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 557
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 558
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 559
    return v1

    .line 557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public diff_commonSuffix(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 574
    .local v0, "text1_length":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 575
    .local v1, "text2_length":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 576
    .local v2, "n":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 577
    sub-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v5, v1, v3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 578
    add-int/lit8 v4, v3, -0x1

    return v4

    .line 576
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method public diff_fromDelta(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 12
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "delta"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1438
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1439
    .local v0, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v1, 0x0

    .line 1440
    .local v1, "pointer":I
    const-string v2, "\t"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    .end local v1    # "pointer":I
    .local v5, "pointer":I
    :goto_0
    if-ge v1, v3, :cond_6

    aget-object v6, v2, v1

    .line 1442
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 1444
    goto/16 :goto_3

    .line 1448
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1449
    .local v7, "param":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_5

    const/16 v9, 0x2d

    const/16 v10, 0x3d

    if-eq v8, v9, :cond_2

    if-ne v8, v10, :cond_1

    goto :goto_1

    .line 1495
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid diff operation in diff_fromDelta: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1470
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1474
    .local v8, "n":I
    nop

    .line 1472
    nop

    .line 1475
    if-ltz v8, :cond_4

    .line 1481
    add-int v9, v5, v8

    move v11, v9

    .local v11, "pointer":I
    :try_start_1
    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1486
    .local v5, "text":Ljava/lang/String;
    nop

    .line 1484
    nop

    .line 1487
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_3

    .line 1488
    new-instance v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v9, v10, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1490
    :cond_3
    new-instance v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v9, v10, v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1492
    nop

    .line 1441
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    .end local v8    # "n":I
    :goto_2
    move v5, v11

    goto :goto_3

    .line 1482
    .restart local v6    # "token":Ljava/lang/String;
    .restart local v7    # "param":Ljava/lang/String;
    .restart local v8    # "n":I
    :catch_0
    move-exception v1

    .line 1483
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delta length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") larger than source text length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1476
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v11    # "pointer":I
    .local v5, "pointer":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative number in diff_fromDelta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1471
    .end local v8    # "n":I
    :catch_1
    move-exception v1

    .line 1472
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid number in diff_fromDelta: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1452
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string v8, "+"

    const-string v9, "%2B"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1454
    :try_start_2
    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .line 1462
    nop

    .line 1463
    new-instance v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v8, v9, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1464
    nop

    .line 1441
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1458
    .restart local v6    # "token":Ljava/lang/String;
    .restart local v7    # "param":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal escape in diff_fromDelta: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1455
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1457
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "This system does not support UTF-8."

    invoke-direct {v3, v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1499
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v5, v1, :cond_7

    .line 1503
    return-object v0

    .line 1500
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delta length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") smaller than source text length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected diff_halfMatch(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 642
    iget v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 644
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
    .local v0, "longtext":Ljava/lang/String;
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
    .local v2, "shorttext":Ljava/lang/String;
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

    goto :goto_4

    .line 653
    :cond_3
    nop

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    add-int/2addr v3, v6

    div-int/2addr v3, v4

    .line 653
    invoke-direct {p0, v0, v2, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "hm1":[Ljava/lang/String;
    nop

    .line 657
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    div-int/2addr v7, v5

    .line 656
    invoke-direct {p0, v0, v2, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_halfMatchI(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "hm2":[Ljava/lang/String;
    if-nez v3, :cond_4

    if-nez v7, :cond_4

    .line 660
    return-object v1

    .line 661
    :cond_4
    if-nez v7, :cond_5

    .line 662
    move-object v1, v3

    .local v1, "hm":[Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 663
    .end local v1    # "hm":[Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 664
    move-object v1, v7

    goto :goto_2

    .line 667
    :cond_6
    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aget-object v9, v7, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v1, v9, :cond_7

    move-object v1, v3

    goto :goto_3

    :cond_7
    move-object v1, v7

    .line 671
    .restart local v1    # "hm":[Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_8

    .line 672
    return-object v1

    .line 675
    :cond_8
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    aget-object v10, v1, v5

    const/4 v11, 0x0

    aput-object v10, v9, v11

    aget-object v10, v1, v6

    aput-object v10, v9, v8

    aget-object v10, v1, v11

    aput-object v10, v9, v5

    aget-object v5, v1, v8

    aput-object v5, v9, v6

    aget-object v5, v1, v4

    aput-object v5, v9, v4

    return-object v9

    .line 649
    .end local v1    # "hm":[Ljava/lang/String;
    .end local v3    # "hm1":[Ljava/lang/String;
    .end local v7    # "hm2":[Ljava/lang/String;
    :cond_9
    :goto_4
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

    .line 1367
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v0, 0x0

    .line 1368
    .local v0, "levenshtein":I
    const/4 v1, 0x0

    .line 1369
    .local v1, "insertions":I
    const/4 v2, 0x0

    .line 1370
    .local v2, "deletions":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1371
    .local v4, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_1

    .line 1380
    .restart local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :pswitch_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 1381
    const/4 v1, 0x0

    .line 1382
    const/4 v2, 0x0

    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_1

    .line 1376
    .restart local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :pswitch_1
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 1377
    goto :goto_1

    .line 1373
    :pswitch_2
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 1374
    nop

    .line 1385
    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_1
    goto :goto_0

    .line 1386
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 1387
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected diff_linesToChars(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;
    .locals 5
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v0, "lineArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v1, "lineHash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    const v2, 0x9c40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "chars1":Ljava/lang/String;
    const v3, 0xffff

    invoke-direct {p0, p2, v0, v1, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_linesToCharsMunge(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "chars2":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;

    invoke-direct {v4, v2, v3, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method public diff_main(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
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

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;
    .locals 8
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
    .param p3, "checklines"    # Z
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

    .line 106
    const-wide v0, 0x7fffffffffffffffL

    .line 108
    .local v6, "deadline":J
    :goto_0
    move-wide v6, v0

    goto :goto_1

    .end local v6    # "deadline":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Diff_Timeout:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 110
    .restart local v6    # "deadline":J
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public diff_prettyHtml(Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    .local v0, "html":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1311
    .local v2, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<"

    const-string v5, "&lt;"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ">"

    const-string v5, "&gt;"

    .line 1312
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "&para;<br>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    .local v3, "text":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v5, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 1323
    .restart local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v3    # "text":Ljava/lang/String;
    :pswitch_0
    const-string v4, "<span>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</span>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 1319
    .restart local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .restart local v3    # "text":Ljava/lang/String;
    :pswitch_1
    const-string v4, "<del style=\"background:#ffe6e6;\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</del>"

    .line 1320
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    goto :goto_1

    .line 1315
    :pswitch_2
    const-string v4, "<ins style=\"background:#e6ffe6;\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</ins>"

    .line 1316
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    nop

    .line 1326
    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v3    # "text":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public diff_text1(Ljava/util/List;)Ljava/lang/String;
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

    .line 1336
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1337
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1338
    .local v2, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v3, v4, :cond_0

    .line 1339
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_0
    goto :goto_0

    .line 1342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public diff_text2(Ljava/util/List;)Ljava/lang/String;
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

    .line 1351
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1353
    .local v2, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v3, v4, :cond_0

    .line 1354
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_0
    goto :goto_0

    .line 1357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public diff_toDelta(Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1400
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1401
    .local v2, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_1

    .line 1415
    .restart local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :pswitch_0
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_1

    .line 1412
    .restart local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :pswitch_1
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    goto :goto_1

    .line 1404
    :pswitch_2
    :try_start_0
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b

    const/16 v5, 0x20

    .line 1405
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 1404
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    .line 1405
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    goto :goto_1

    .line 1406
    :catch_0
    move-exception v1

    .line 1408
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "This system does not support UTF-8."

    invoke-direct {v3, v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1418
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :goto_1
    goto :goto_0

    .line 1419
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    .local v1, "delta":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1422
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1423
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->unescapeForEncodeUriCompatability(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public diff_xIndex(Ljava/util/List;I)I
    .locals 9
    .param p2, "loc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;",
            ">;I)I"
        }
    .end annotation

    .line 1273
    .local p1, "diffs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    const/4 v0, 0x0

    .line 1274
    .local v0, "chars1":I
    const/4 v1, 0x0

    .line 1275
    .local v1, "chars2":I
    const/4 v2, 0x0

    .line 1276
    .local v2, "last_chars1":I
    const/4 v3, 0x0

    .line 1277
    .local v3, "last_chars2":I
    const/4 v4, 0x0

    .line 1278
    .local v4, "lastDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1279
    .local v6, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v7, v8, :cond_0

    .line 1281
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    .line 1283
    :cond_0
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v7, v8, :cond_1

    .line 1285
    iget-object v7, v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 1287
    :cond_1
    if-le v0, p2, :cond_2

    .line 1289
    move-object v4, v6

    .line 1290
    goto :goto_1

    .line 1292
    :cond_2
    move v2, v0

    .line 1293
    move v3, v1

    .line 1294
    .end local v6    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_0

    .line 1295
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v5, v6, :cond_4

    .line 1297
    return v3

    .line 1300
    :cond_4
    sub-int v5, p2, v2

    add-int/2addr v5, v3

    return v5
.end method

.method protected match_alphabet(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
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
    .local v0, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1670
    .local v1, "char_pattern":[C
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, v1, v4

    .line 1671
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1673
    :cond_0
    const/4 v2, 0x0

    .line 1674
    .local v2, "i":I
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-char v5, v1, v3

    .line 1675
    .restart local v5    # "c":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    add-int/lit8 v2, v2, 0x1

    .line 1674
    .end local v5    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1678
    :cond_1
    return-object v0
.end method

.method protected match_bitap(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 25
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "loc"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1550
    move/from16 v3, p3

    .line 1554
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_alphabet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1557
    .local v4, "s":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Integer;>;"
    iget v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_Threshold:F

    float-to-double v5, v5

    .line 1559
    .local v5, "score_threshold":D
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1560
    .local v7, "best_loc":I
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

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1565
    if-eq v7, v8, :cond_0

    .line 1566
    invoke-direct {v0, v9, v7, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 1572
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    shl-int v8, v10, v8

    .line 1573
    .local v8, "matchmask":I
    const/4 v7, -0x1

    .line 1576
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    .line 1578
    .local v11, "bin_max":I
    new-array v12, v9, [I

    .line 1579
    .local v12, "last_rd":[I
    nop

    .local v9, "d":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v9, v13, :cond_a

    .line 1583
    const/4 v13, 0x0

    .line 1584
    .local v13, "bin_min":I
    move v14, v11

    .line 1585
    .local v11, "bin_mid":I
    .local v14, "bin_max":I
    :goto_1
    const/4 v15, 0x2

    if-ge v13, v11, :cond_2

    .line 1586
    add-int v10, v3, v11

    invoke-direct {v0, v9, v10, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v17

    cmpg-double v10, v17, v5

    if-gtz v10, :cond_1

    .line 1588
    move v10, v11

    .line 1592
    .end local v13    # "bin_min":I
    .local v10, "bin_min":I
    move v13, v10

    goto :goto_2

    .line 1590
    .end local v10    # "bin_min":I
    .restart local v13    # "bin_min":I
    :cond_1
    move v10, v11

    .line 1592
    .end local v14    # "bin_max":I
    .local v10, "bin_max":I
    move v14, v10

    .end local v10    # "bin_max":I
    .restart local v14    # "bin_max":I
    :goto_2
    sub-int v10, v14, v13

    div-int/2addr v10, v15

    add-int v11, v10, v13

    .line 1584
    const/4 v10, 0x1

    goto :goto_1

    .line 1595
    :cond_2
    move v10, v11

    .line 1596
    .end local v14    # "bin_max":I
    .restart local v10    # "bin_max":I
    sub-int v14, v3, v11

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1597
    .local v14, "start":I
    add-int v15, v3, v11

    move-wide/from16 v20, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .end local v5    # "score_threshold":D
    .local v20, "score_threshold":D
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 1599
    .local v5, "finish":I
    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [I

    .line 1600
    .local v6, "rd":[I
    add-int/lit8 v15, v5, 0x1

    const/16 v16, 0x1

    shl-int v17, v16, v9

    add-int/lit8 v17, v17, -0x1

    aput v17, v6, v15

    .line 1601
    move v15, v7

    move v7, v5

    .local v7, "j":I
    .local v15, "best_loc":I
    :goto_3
    if-lt v7, v14, :cond_8

    .line 1603
    move/from16 v22, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .end local v5    # "finish":I
    .local v22, "finish":I
    move/from16 v23, v10

    add-int/lit8 v10, v7, -0x1

    .end local v10    # "bin_max":I
    .local v23, "bin_max":I
    if-le v5, v10, :cond_4

    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    .line 1607
    :cond_3
    add-int/lit8 v5, v7, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    .line 1605
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 1607
    .local v5, "charMatch":I
    :goto_5
    nop

    .line 1609
    if-nez v9, :cond_5

    .line 1611
    add-int/lit8 v10, v7, 0x1

    aget v10, v6, v10

    const/16 v16, 0x1

    shl-int/lit8 v10, v10, 0x1

    or-int/lit8 v10, v10, 0x1

    and-int/2addr v10, v5

    aput v10, v6, v7

    goto :goto_6

    .line 1614
    :cond_5
    const/16 v16, 0x1

    add-int/lit8 v10, v7, 0x1

    aget v10, v6, v10

    shl-int/lit8 v10, v10, 0x1

    or-int/lit8 v10, v10, 0x1

    and-int/2addr v10, v5

    add-int/lit8 v17, v7, 0x1

    aget v17, v12, v17

    aget v18, v12, v7

    or-int v17, v17, v18

    shl-int/lit8 v17, v17, 0x1

    or-int/lit8 v17, v17, 0x1

    or-int v10, v10, v17

    add-int/lit8 v17, v7, 0x1

    aget v17, v12, v17

    or-int v10, v10, v17

    aput v10, v6, v7

    .line 1617
    :goto_6
    aget v10, v6, v7

    and-int/2addr v10, v8

    if-eqz v10, :cond_7

    .line 1618
    add-int/lit8 v10, v7, -0x1

    invoke-direct {v0, v9, v10, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v17

    .line 1621
    .local v17, "score":D
    cmpg-double v10, v17, v20

    if-gtz v10, :cond_7

    .line 1623
    move-wide/from16 v20, v17

    .line 1624
    add-int/lit8 v10, v7, -0x1

    .line 1625
    .end local v15    # "best_loc":I
    .local v10, "best_loc":I
    if-le v10, v3, :cond_6

    .line 1627
    const/16 v19, 0x2

    mul-int v15, v19, v3

    sub-int/2addr v15, v10

    const/4 v1, 0x1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1601
    .end local v14    # "start":I
    .end local v17    # "score":D
    .local v5, "start":I
    move v14, v5

    move v15, v10

    goto :goto_7

    .line 1635
    .end local v5    # "start":I
    .end local v7    # "j":I
    .restart local v14    # "start":I
    :cond_6
    const/4 v1, 0x1

    move v7, v10

    goto :goto_8

    .line 1601
    .end local v10    # "best_loc":I
    .restart local v7    # "j":I
    .restart local v15    # "best_loc":I
    :cond_7
    const/4 v1, 0x1

    const/16 v19, 0x2

    :goto_7
    add-int/lit8 v7, v7, -0x1

    move/from16 v5, v22

    move/from16 v10, v23

    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 1635
    .end local v7    # "j":I
    .end local v22    # "finish":I
    .end local v23    # "bin_max":I
    .local v5, "finish":I
    .local v10, "bin_max":I
    :cond_8
    move/from16 v22, v5

    move/from16 v23, v10

    const/4 v1, 0x1

    move v7, v15

    .end local v5    # "finish":I
    .end local v10    # "bin_max":I
    .end local v15    # "best_loc":I
    .local v7, "best_loc":I
    .restart local v22    # "finish":I
    .restart local v23    # "bin_max":I
    :goto_8
    add-int/lit8 v5, v9, 0x1

    invoke-direct {v0, v5, v3, v3, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitapScore(IIILjava/lang/String;)D

    move-result-wide v15

    cmpl-double v5, v15, v20

    if-lez v5, :cond_9

    .line 1637
    nop

    .line 1641
    move/from16 v11, v23

    goto :goto_9

    .line 1639
    :cond_9
    move-object v12, v6

    .line 1579
    .end local v6    # "rd":[I
    .end local v14    # "start":I
    .end local v22    # "finish":I
    add-int/lit8 v9, v9, 0x1

    move v10, v1

    move-wide/from16 v5, v20

    move/from16 v11, v23

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 1641
    .end local v9    # "d":I
    .end local v13    # "bin_min":I
    .end local v20    # "score_threshold":D
    .end local v23    # "bin_max":I
    .local v5, "score_threshold":D
    .local v11, "bin_max":I
    :cond_a
    move-wide/from16 v20, v5

    .end local v5    # "score_threshold":D
    .restart local v20    # "score_threshold":D
    :goto_9
    return v7
.end method

.method public match_main(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "loc"    # I

    .line 1520
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1524
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1525
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    return v1

    .line 1528
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    const/4 v0, -0x1

    return v0

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

    .line 1534
    return p3

    .line 1537
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_bitap(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1521
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs. (match_main)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V
    .locals 7
    .param p1, "patch"    # Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .param p2, "text"    # Ljava/lang/String;

    .line 1692
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1693
    return-void

    .line 1695
    :cond_0
    iget v0, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v2, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1696
    .local v0, "pattern":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 1700
    .local v0, "padding":I
    .local v2, "pattern":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-short v4, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    iget-short v5, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v4, v5

    iget-short v5, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1702
    iget-short v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    add-int/2addr v0, v3

    .line 1703
    iget v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1704
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v6, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1703
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1707
    :cond_1
    iget-short v3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    add-int/2addr v0, v3

    .line 1710
    iget v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1713
    iget-object v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v5, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1716
    :cond_2
    iget v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v3, v4

    .line 1717
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iget v6, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1716
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "suffix":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1719
    iget-object v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v5, v6, v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1723
    :cond_3
    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1724
    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1726
    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1727
    iget v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1728
    return-void
.end method

.method public patch_addPadding(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 8
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
    .local p1, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    iget-short v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    .line 2007
    .local v0, "paddingLength":S
    const-string v1, ""

    .line 2008
    .local v1, "nullPadding":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "x":S
    :goto_0
    if-gt v2, v0, :cond_0

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2008
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_0

    .line 2013
    .end local v2    # "x":S
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2014
    .local v3, "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    iget v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2015
    iget v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2016
    .end local v3    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    goto :goto_1

    .line 2019
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2020
    .local v2, "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2021
    .local v3, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
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

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2031
    .local v4, "firstDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v0, v5

    .line 2032
    .local v5, "extraLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2034
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2035
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2036
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2037
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .end local v4    # "firstDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "extraLength":I
    goto :goto_3

    .line 2023
    :cond_3
    :goto_2
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v5, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2024
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2025
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2026
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2027
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2041
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2042
    iget-object v3, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2043
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v4, v5, :cond_5

    goto :goto_4

    .line 2048
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v4, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_7

    .line 2050
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2051
    .local v4, "lastDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v0, v5

    .line 2052
    .restart local v5    # "extraLength":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2053
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2054
    iget v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .end local v4    # "lastDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v5    # "extraLength":I
    goto :goto_5

    .line 2045
    :cond_6
    :goto_4
    new-instance v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v4, v5, v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2046
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2047
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2057
    :cond_7
    :goto_5
    return-object v1
.end method

.method public patch_apply(Ljava/util/LinkedList;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 23
    .param p2, "text"    # Ljava/lang/String;
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

    .local p1, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    move-object/from16 v0, p0

    .line 1897
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1898
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v5

    new-array v3, v5, [Z

    aput-object v3, v2, v4

    return-object v2

    .line 1902
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_deepCopy(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v2

    .line 1904
    .end local p1    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .local v2, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addPadding(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v6

    .line 1905
    .local v6, "nullPadding":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1906
    .end local p2    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_splitMax(Ljava/util/LinkedList;)V

    .line 1908
    const/4 v7, 0x0

    .line 1913
    .local v7, "x":I
    const/4 v8, 0x0

    .line 1914
    .local v8, "delta":I
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v9

    new-array v9, v9, [Z

    .line 1915
    .local v9, "results":[Z
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 1916
    .local v11, "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    iget v12, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    add-int/2addr v12, v8

    .line 1917
    .local v12, "expected_loc":I
    iget-object v13, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 1919
    .local v13, "text1":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1920
    .local v14, "end_loc":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    iget-short v3, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    const/4 v4, -0x1

    if-le v15, v3, :cond_2

    .line 1923
    iget-short v3, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    .line 1924
    invoke-virtual {v13, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1923
    invoke-virtual {v0, v1, v3, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1925
    .local v3, "start_loc":I
    if-eq v3, v4, :cond_3

    .line 1926
    nop

    .line 1927
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    iget-short v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    sub-int/2addr v15, v5

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1928
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v12

    iget-short v4, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    sub-int/2addr v15, v4

    .line 1926
    invoke-virtual {v0, v1, v5, v15}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1929
    const/4 v4, -0x1

    if-eq v14, v4, :cond_1

    if-lt v3, v14, :cond_3

    .line 1931
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 1935
    .end local v3    # "start_loc":I
    :cond_2
    invoke-virtual {v0, v1, v13, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->match_main(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1937
    .restart local v3    # "start_loc":I
    :cond_3
    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1939
    const/4 v4, 0x0

    aput-boolean v4, v9, v7

    .line 1941
    iget v4, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget v5, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    sub-int/2addr v4, v5

    sub-int/2addr v8, v4

    .line 1991
    move-object/from16 v17, v2

    .end local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .end local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v12    # "expected_loc":I
    .local v17, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .local v21, "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .local v22, "expected_loc":I
    :goto_2
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    goto/16 :goto_7

    .line 1944
    .end local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .end local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v22    # "expected_loc":I
    .restart local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .restart local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v12    # "expected_loc":I
    :cond_4
    const/4 v4, 0x1

    aput-boolean v4, v9, v7

    .line 1945
    sub-int v4, v3, v12

    .line 1947
    .end local v8    # "delta":I
    .local v4, "delta":I
    const/4 v5, -0x1

    if-ne v14, v5, :cond_5

    .line 1948
    nop

    .line 1949
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1948
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "text2":Ljava/lang/String;
    goto :goto_3

    .line 1951
    .end local v5    # "text2":Ljava/lang/String;
    :cond_5
    iget-short v5, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    add-int/2addr v5, v14

    .line 1952
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1951
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1954
    .restart local v5    # "text2":Ljava/lang/String;
    :goto_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1956
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .restart local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1991
    .end local v4    # "delta":I
    .end local v5    # "text2":Ljava/lang/String;
    .end local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v12    # "expected_loc":I
    .restart local v8    # "delta":I
    .restart local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v22    # "expected_loc":I
    :goto_4
    move v8, v4

    goto :goto_2

    .line 1961
    .end local v8    # "delta":I
    .end local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .end local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v22    # "expected_loc":I
    .restart local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .restart local v4    # "delta":I
    .restart local v5    # "text2":Ljava/lang/String;
    .restart local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v12    # "expected_loc":I
    :cond_6
    move-object/from16 v17, v2

    .end local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .restart local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v13, v5, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v8

    .line 1962
    .local v8, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    iget-short v15, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    if-le v2, v15, :cond_7

    .line 1963
    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_levenshtein(Ljava/util/List;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v2, v15

    iget v15, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_DeleteThreshold:F

    cmpl-float v2, v2, v15

    if-lez v2, :cond_7

    .line 1966
    const/4 v2, 0x0

    aput-boolean v2, v9, v7

    goto :goto_4

    .line 1968
    :cond_7
    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemanticLossless(Ljava/util/LinkedList;)V

    .line 1969
    const/4 v2, 0x0

    .line 1970
    .local v2, "index1":I
    iget-object v15, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v4

    move-object/from16 v4, v16

    check-cast v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1971
    .local v4, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .local v18, "delta":I
    move-object/from16 v19, v5

    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .end local v5    # "text2":Ljava/lang/String;
    .local v19, "text2":Ljava/lang/String;
    move-object/from16 v20, v10

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v5, v10, :cond_9

    .line 1972
    invoke-virtual {v0, v8, v2}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_xIndex(Ljava/util/List;I)I

    move-result v5

    .line 1973
    .local v5, "index2":I
    iget-object v10, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    move-object/from16 v21, v11

    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .end local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    if-ne v10, v11, :cond_8

    .line 1975
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int v11, v3, v5

    move/from16 v22, v12

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .end local v12    # "expected_loc":I
    .restart local v22    # "expected_loc":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v11, v3, v5

    .line 1976
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1977
    .end local v22    # "expected_loc":I
    .restart local v12    # "expected_loc":I
    :cond_8
    move/from16 v22, v12

    .end local v12    # "expected_loc":I
    .restart local v22    # "expected_loc":I
    iget-object v10, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v10, v11, :cond_a

    .line 1979
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int v11, v3, v5

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1981
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v2

    .line 1980
    invoke-virtual {v0, v8, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_xIndex(Ljava/util/List;I)I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v5    # "index2":I
    goto :goto_6

    .line 1984
    .end local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v22    # "expected_loc":I
    .restart local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v12    # "expected_loc":I
    :cond_9
    move-object/from16 v21, v11

    move/from16 v22, v12

    .end local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v12    # "expected_loc":I
    .restart local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v22    # "expected_loc":I
    :cond_a
    :goto_6
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v5, v10, :cond_b

    .line 1985
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 1987
    .end local v4    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_b
    nop

    .line 1970
    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    goto/16 :goto_5

    .line 1991
    .end local v2    # "index1":I
    .end local v8    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    .end local v18    # "delta":I
    .end local v19    # "text2":Ljava/lang/String;
    .end local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v22    # "expected_loc":I
    .local v4, "delta":I
    .restart local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v12    # "expected_loc":I
    :cond_c
    move/from16 v18, v4

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v8, v18

    .end local v4    # "delta":I
    .end local v11    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v12    # "expected_loc":I
    .local v8, "delta":I
    .restart local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .restart local v22    # "expected_loc":I
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 1992
    .end local v3    # "start_loc":I
    .end local v13    # "text1":Ljava/lang/String;
    .end local v14    # "end_loc":I
    .end local v21    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v22    # "expected_loc":I
    nop

    .line 1915
    move-object/from16 v2, v17

    move-object/from16 v10, v20

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1994
    .end local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .local v2, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    :cond_d
    move-object/from16 v17, v2

    .end local v2    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .restart local v17    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
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

    .line 1996
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    return-object v2
.end method

.method public patch_deepCopy(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 9
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
    .local p1, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1873
    .local v0, "patchesCopy":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 1874
    .local v2, "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    new-instance v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 1875
    .local v3, "patchCopy":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    iget-object v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1876
    .local v5, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    new-instance v6, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iget-object v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    .line 1877
    .local v6, "diffCopy":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v7, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1878
    .end local v5    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    .end local v6    # "diffCopy":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    goto :goto_1

    .line 1879
    :cond_0
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1880
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1881
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1882
    iget v4, v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iput v4, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1883
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1884
    .end local v2    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v3    # "patchCopy":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    goto :goto_0

    .line 1885
    :cond_1
    return-object v0
.end method

.method public patch_fromText(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "textline"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2187
    .local v0, "patches":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2188
    return-object v0

    .line 2190
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2191
    .local v1, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2193
    .local v2, "text":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v3, "^@@ -(\\d+),?(\\d*) \\+(\\d+),?(\\d*) @@$"

    .line 2194
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 2198
    .local v3, "patchHeader":Ljava/util/regex/Pattern;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2199
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2200
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2204
    new-instance v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v5}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 2205
    .local v5, "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2206
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2207
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 2208
    iget v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v7, v6

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2209
    iput v6, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    goto :goto_1

    .line 2210
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2211
    iput v9, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    goto :goto_1

    .line 2213
    :cond_3
    iget v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    sub-int/2addr v8, v6

    iput v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2214
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2217
    :goto_1
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2218
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 2219
    iget v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v7, v6

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2220
    iput v6, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_2

    .line 2221
    :cond_4
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2222
    iput v9, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    goto :goto_2

    .line 2224
    :cond_5
    iget v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    sub-int/2addr v8, v6

    iput v8, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2225
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2227
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2229
    :goto_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2231
    :try_start_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2236
    .local v7, "sign":C
    nop

    .line 2235
    nop

    .line 2237
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2238
    .local v8, "line":Ljava/lang/String;
    const-string v10, "+"

    const-string v11, "%2B"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2240
    :try_start_1
    const-string v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v10

    .line 2248
    nop

    .line 2249
    const/16 v10, 0x2d

    if-ne v7, v10, :cond_6

    .line 2251
    iget-object v10, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2252
    :cond_6
    const/16 v10, 0x2b

    if-ne v7, v10, :cond_7

    .line 2254
    iget-object v10, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2255
    :cond_7
    const/16 v10, 0x20

    if-ne v7, v10, :cond_8

    .line 2257
    iget-object v10, v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2266
    :goto_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_3

    .line 2258
    :cond_8
    const/16 v6, 0x40

    if-ne v7, v6, :cond_9

    .line 2260
    goto/16 :goto_0

    .line 2263
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid patch mode \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, "\' in: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2244
    :catch_0
    move-exception v6

    .line 2246
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal escape in patch_fromText: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 2241
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 2243
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/Error;

    const-string v10, "This system does not support UTF-8."

    invoke-direct {v9, v10, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 2232
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "sign":C
    .end local v8    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 2234
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2235
    goto/16 :goto_3

    .line 2201
    .end local v5    # "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid patch string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2269
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_b
    return-object v0
.end method

.method public patch_make(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 3
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
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

    .line 1738
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1742
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_main(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/LinkedList;

    move-result-object v0

    .line 1743
    .local v0, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1744
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupSemantic(Ljava/util/LinkedList;)V

    .line 1745
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_cleanupEfficiency(Ljava/util/LinkedList;)V

    .line 1747
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1

    .line 1739
    .end local v0    # "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs. (patch_make)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patch_make(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 1
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;
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
    .local p3, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 11
    .param p1, "text1"    # Ljava/lang/String;
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

    .line 1787
    .local p2, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1791
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1792
    .local v0, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1793
    return-object v0

    .line 1795
    :cond_0
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 1796
    .local v1, "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    const/4 v2, 0x0

    .line 1797
    .local v2, "char_count1":I
    const/4 v3, 0x0

    .line 1801
    .local v3, "char_count2":I
    move-object v4, p1

    .line 1802
    .local v4, "prepatch_text":Ljava/lang/String;
    move-object v5, p1

    .line 1803
    .local v5, "postpatch_text":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 1804
    .local v7, "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_1

    .line 1806
    iput v2, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 1807
    iput v3, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 1810
    :cond_1
    sget-object v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$1;->$SwitchMap$com$xiaopeng$speech$vui$utils$DiffMatchPatchUtils$Operation:[I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    .line 1824
    :pswitch_0
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v9, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    if-gt v8, v9, :cond_2

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 1825
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_2

    .line 1827
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1828
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1829
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1832
    :cond_2
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-short v9, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    mul-int/2addr v10, v9

    if-lt v8, v10, :cond_3

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1834
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1835
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    move-object v1, v8

    .line 1842
    move-object v4, v5

    .line 1843
    move v2, v3

    goto :goto_1

    .line 1818
    :pswitch_1
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-object v10, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 1819
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1820
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 1821
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1822
    goto :goto_1

    .line 1812
    :pswitch_2
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1813
    iget v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iget-object v10, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 1814
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1816
    nop

    .line 1850
    :cond_3
    :goto_1
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_4

    .line 1851
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    .line 1853
    :cond_4
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v9, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v8, v9, :cond_5

    .line 1854
    iget-object v8, v7, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 1856
    .end local v7    # "aDiff":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
    :cond_5
    goto/16 :goto_0

    .line 1858
    :cond_6
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1859
    invoke-virtual {p0, v1, v4}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_addContext(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1863
    :cond_7
    return-object v0

    .line 1788
    .end local v0    # "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    .end local v1    # "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v2    # "char_count1":I
    .end local v3    # "char_count2":I
    .end local v4    # "prepatch_text":Ljava/lang/String;
    .end local v5    # "postpatch_text":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs. (patch_make)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public patch_make(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 2
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

    .line 1757
    .local p1, "diffs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;>;"
    if-eqz p1, :cond_0

    .line 1761
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, "text1":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->patch_make(Ljava/lang/String;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1

    .line 1758
    .end local v0    # "text1":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null inputs. (patch_make)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patch_splitMax(Ljava/util/LinkedList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;",
            ">;)V"
        }
    .end annotation

    .local p1, "patches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    move-object/from16 v0, p0

    .line 2067
    iget-short v1, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    .line 2074
    .local v1, "patch_size":S
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 2075
    .local v2, "pointer":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 2076
    .local v3, "bigpatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    :goto_0
    if-eqz v3, :cond_f

    .line 2077
    iget v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-short v6, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Match_MaxBits:S

    if-gt v5, v6, :cond_2

    .line 2078
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    move-object v3, v5

    .line 2079
    goto :goto_0

    .line 2082
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 2083
    iget v5, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2084
    .local v5, "start1":I
    iget v6, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2085
    .local v6, "start2":I
    const-string v7, ""

    .line 2086
    .local v7, "precontext":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v8, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 2088
    new-instance v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    invoke-direct {v8}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;-><init>()V

    .line 2089
    .local v8, "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    const/4 v9, 0x1

    .line 2090
    .local v9, "empty":Z
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v5, v10

    iput v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start1:I

    .line 2091
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v6, v10

    iput v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->start2:I

    .line 2092
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 2093
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    iput v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    iput v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2094
    iget-object v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v11, v12, v7}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2096
    :cond_4
    :goto_3
    iget-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_9

    iget v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    iget-short v12, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int v12, v1, v12

    if-ge v10, v12, :cond_9

    .line 2098
    iget-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v10, v10, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 2099
    .local v10, "diff_type":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    iget-object v12, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v12, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2100
    .local v12, "diff_text":Ljava/lang/String;
    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->INSERT:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v10, v13, :cond_5

    .line 2102
    iget v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    iput v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2103
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v6, v11

    .line 2104
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    iget-object v13, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2105
    const/4 v9, 0x0

    goto :goto_3

    .line 2106
    :cond_5
    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->DELETE:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v10, v13, :cond_6

    iget-object v13, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    iget-object v13, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2107
    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v13, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v14, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v13, v14, :cond_6

    .line 2108
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    mul-int/2addr v14, v1

    if-le v13, v14, :cond_6

    .line 2110
    iget v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    iput v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2111
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v5, v11

    .line 2112
    const/4 v9, 0x0

    .line 2113
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-direct {v13, v10, v12}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2114
    iget-object v11, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_3

    .line 2117
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    iget v14, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    sub-int v14, v1, v14

    iget-short v15, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v12, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2119
    .end local v12    # "diff_text":Ljava/lang/String;
    .local v11, "diff_text":Ljava/lang/String;
    iget v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2120
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v5, v12

    .line 2121
    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v10, v12, :cond_7

    .line 2122
    iget v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2123
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_4

    .line 2125
    :cond_7
    const/4 v9, 0x0

    .line 2127
    :goto_4
    iget-object v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    invoke-direct {v13, v10, v11}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2128
    iget-object v12, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v12, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2129
    iget-object v12, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto/16 :goto_3

    .line 2131
    :cond_8
    iget-object v12, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v13, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v13, v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    .line 2132
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto/16 :goto_3

    .line 2137
    .end local v10    # "diff_type":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;
    .end local v11    # "diff_text":Ljava/lang/String;
    :cond_9
    iget-object v10, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 2138
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    iget-short v12, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    sub-int/2addr v10, v12

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2141
    iget-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    iget-short v12, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    if-le v10, v12, :cond_a

    .line 2142
    iget-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    iget-short v12, v0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->Patch_Margin:S

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .local v10, "postcontext":Ljava/lang/String;
    goto :goto_5

    .line 2144
    .end local v10    # "postcontext":Ljava/lang/String;
    :cond_a
    iget-object v10, v3, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;->diff_text1(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 2146
    .restart local v10    # "postcontext":Ljava/lang/String;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_c

    .line 2147
    iget v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length1:I

    .line 2148
    iget v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->length2:I

    .line 2149
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    .line 2150
    invoke-virtual {v11}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v11, v11, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    sget-object v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-ne v11, v12, :cond_b

    .line 2151
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    iget-object v13, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    goto :goto_6

    .line 2153
    :cond_b
    iget-object v11, v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;->diffs:Ljava/util/LinkedList;

    new-instance v12, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    sget-object v13, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->EQUAL:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-direct {v12, v13, v10}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;-><init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_c
    :goto_6
    if-nez v9, :cond_3

    .line 2157
    invoke-interface {v2, v8}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2160
    .end local v8    # "patch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    .end local v9    # "empty":Z
    .end local v10    # "postcontext":Ljava/lang/String;
    :cond_d
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    goto :goto_7

    :cond_e
    move-object v8, v4

    :goto_7
    move-object v3, v8

    goto/16 :goto_0

    .line 2162
    .end local v5    # "start1":I
    .end local v6    # "start2":I
    .end local v7    # "precontext":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public patch_toText(Ljava/util/List;)Ljava/lang/String;
    .locals 3
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
    .local p1, "patches":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2171
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;

    .line 2172
    .local v2, "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2173
    .end local v2    # "aPatch":Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Patch;
    goto :goto_0

    .line 2174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
