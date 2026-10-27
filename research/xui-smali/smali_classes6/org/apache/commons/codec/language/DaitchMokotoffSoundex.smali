.class public Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;,
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    }
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "//"

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final FOLDINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LENGTH:I = 0x6

.field private static final MULTILINE_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final MULTILINE_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final RESOURCE_FILE:Ljava/lang/String; = "org/apache/commons/codec/language/dmrules.txt"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final folding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    .line 228
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "org/apache/commons/codec/language/dmrules.txt"

    invoke-static {v1}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 229
    .local v0, "scanner":Ljava/util/Scanner;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "org/apache/commons/codec/language/dmrules.txt"

    sget-object v3, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    sget-object v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v0, v2, v3, v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 233
    .end local v0    # "scanner":Ljava/util/Scanner;
    sget-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 234
    .local v1, "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 235
    .local v2, "ruleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    new-instance v3, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;

    invoke-direct {v3}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    .end local v1    # "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .end local v2    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    goto :goto_0

    .line 242
    :cond_0
    return-void

    .line 230
    .restart local v0    # "scanner":Ljava/util/Scanner;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 228
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :goto_2
    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;-><init>(Z)V

    .line 343
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "folding"    # Z

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-boolean p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    .line 357
    return-void
.end method

.method private cleanup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 372
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    goto :goto_1

    .line 376
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 377
    iget-boolean v5, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    if-eqz v5, :cond_1

    sget-object v5, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    sget-object v5, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 380
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    .end local v4    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .local p2, "ruleMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .local p3, "asciiFoldings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "currentLine":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "inMultilineComment":Z
    .local v4, "currentLine":I
    :goto_0
    move v5, v0

    .line 249
    .end local v0    # "inMultilineComment":Z
    .local v5, "inMultilineComment":Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 251
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "rawLine":Ljava/lang/String;
    move-object v0, v6

    .line 254
    .local v0, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 255
    const-string v7, "*/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 256
    const/4 v5, 0x0

    goto :goto_2

    .line 261
    :cond_0
    const-string v7, "/*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
    const/4 v5, 0x1

    .line 320
    move-object/from16 v13, p3

    .end local v5    # "inMultilineComment":Z
    .end local v6    # "rawLine":Ljava/lang/String;
    .local v0, "inMultilineComment":Z
    :goto_1
    move v0, v5

    goto/16 :goto_4

    .line 265
    .local v0, "line":Ljava/lang/String;
    .restart local v5    # "inMultilineComment":Z
    .restart local v6    # "rawLine":Ljava/lang/String;
    :cond_1
    const-string v7, "//"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 266
    .local v7, "cmtI":I
    if-ltz v7, :cond_2

    .line 267
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 273
    .end local v0    # "line":Ljava/lang/String;
    .local v8, "line":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 274
    nop

    .line 247
    .end local v5    # "inMultilineComment":Z
    .end local v6    # "rawLine":Ljava/lang/String;
    .end local v7    # "cmtI":I
    .end local v8    # "line":Ljava/lang/String;
    .local v0, "inMultilineComment":Z
    :cond_3
    :goto_2
    move v0, v5

    goto :goto_0

    .line 277
    .end local v0    # "inMultilineComment":Z
    .restart local v5    # "inMultilineComment":Z
    .restart local v6    # "rawLine":Ljava/lang/String;
    .restart local v7    # "cmtI":I
    .restart local v8    # "line":Ljava/lang/String;
    :cond_4
    const-string v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v0, :cond_7

    .line 279
    const-string v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "parts":[Ljava/lang/String;
    array-length v11, v0

    if-ne v11, v9, :cond_6

    .line 284
    aget-object v9, v0, v3

    .line 285
    .local v9, "leftCharacter":Ljava/lang/String;
    aget-object v11, v0, v10

    .line 287
    .local v11, "rightCharacter":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v10, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v10, :cond_5

    .line 292
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-interface {v13, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v9    # "leftCharacter":Ljava/lang/String;
    .end local v11    # "rightCharacter":Ljava/lang/String;
    goto :goto_1

    .line 288
    .restart local v0    # "parts":[Ljava/lang/String;
    .restart local v9    # "leftCharacter":Ljava/lang/String;
    .restart local v11    # "rightCharacter":Ljava/lang/String;
    :cond_5
    move-object/from16 v13, p3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Malformed folding statement - patterns are not single characters: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    .end local v9    # "leftCharacter":Ljava/lang/String;
    .end local v11    # "rightCharacter":Ljava/lang/String;
    :cond_6
    move-object/from16 v13, p3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed folding statement split into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " parts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_7
    move-object/from16 v13, p3

    const-string v0, "\\s+"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "parts":[Ljava/lang/String;
    array-length v0, v11

    const/4 v12, 0x4

    if-ne v0, v12, :cond_9

    .line 301
    :try_start_0
    aget-object v0, v11, v3

    invoke-static {v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "pattern":Ljava/lang/String;
    aget-object v10, v11, v10

    invoke-static {v10}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "replacement1":Ljava/lang/String;
    aget-object v9, v11, v9

    invoke-static {v9}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "replacement2":Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-static {v12}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 306
    .local v12, "replacement3":Ljava/lang/String;
    new-instance v14, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    invoke-direct {v14, v0, v10, v9, v12}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v14, "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-static {v14}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->access$000(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 308
    .local v15, "patternKey":C
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 309
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-nez v3, :cond_8

    .line 310
    move-object/from16 v16, v0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "pattern":Ljava/lang/String;
    .local v16, "pattern":Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 311
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 313
    .end local v16    # "pattern":Ljava/lang/String;
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "pattern":Ljava/lang/String;
    .restart local v16    # "pattern":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    .end local v9    # "replacement2":Ljava/lang/String;
    .end local v10    # "replacement1":Ljava/lang/String;
    .end local v12    # "replacement3":Ljava/lang/String;
    .end local v14    # "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .end local v15    # "patternKey":C
    .end local v16    # "pattern":Ljava/lang/String;
    goto/16 :goto_1

    .line 320
    .end local v5    # "inMultilineComment":Z
    .end local v6    # "rawLine":Ljava/lang/String;
    .end local v7    # "cmtI":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "parts":[Ljava/lang/String;
    .local v0, "inMultilineComment":Z
    :goto_4
    nop

    .line 247
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 314
    .end local v0    # "inMultilineComment":Z
    .restart local v5    # "inMultilineComment":Z
    .restart local v6    # "rawLine":Ljava/lang/String;
    .restart local v7    # "cmtI":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem parsing line \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 297
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed rule statement split into "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v11

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " parts: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v6    # "rawLine":Ljava/lang/String;
    .end local v7    # "cmtI":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "parts":[Ljava/lang/String;
    :cond_a
    move-object/from16 v13, p3

    return-void
.end method

.method private soundex(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 20
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "branching"    # Z

    .line 478
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 479
    return-object v0

    .line 482
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->cleanup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "input":Ljava/lang/String;
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 485
    .local v3, "currentBranches":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    new-instance v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    invoke-direct {v4, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;-><init>(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "lastChar":C
    move v5, v0

    const/4 v0, 0x0

    .local v0, "index":I
    .local v5, "lastChar":C
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_11

    .line 489
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 492
    .local v6, "ch":C
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 493
    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, "inputContext":Ljava/lang/String;
    sget-object v9, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 498
    .local v9, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-nez v9, :cond_2

    .line 499
    nop

    .line 488
    .end local v6    # "ch":C
    .end local v7    # "inputContext":Ljava/lang/String;
    .end local v9    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :goto_1
    move-object/from16 v16, v2

    move v2, v8

    goto/16 :goto_c

    .line 503
    .restart local v6    # "ch":C
    .restart local v7    # "inputContext":Ljava/lang/String;
    .restart local v9    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :cond_2
    if-eqz p2, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 505
    .local v10, "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    .line 506
    .local v12, "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-virtual {v12, v7}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 507
    if-eqz p2, :cond_4

    .line 508
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 510
    :cond_4
    if-nez v5, :cond_5

    move v11, v8

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v12, v7, v11}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, "replacements":[Ljava/lang/String;
    array-length v13, v11

    if-le v13, v8, :cond_6

    if-eqz p2, :cond_6

    move v13, v8

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    .line 513
    .local v13, "branchingRequired":Z
    :goto_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 514
    .local v4, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    array-length v8, v11

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v8, :cond_b

    move-object/from16 v16, v2

    aget-object v2, v11, v1

    .line 516
    .local v2, "nextReplacement":Ljava/lang/String;
    .local v16, "input":Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-virtual {v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->createBranch()Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    move-result-object v15

    goto :goto_8

    :cond_7
    move-object v15, v4

    :goto_8
    move-object/from16 v17, v15

    .line 519
    .local v17, "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    move-object/from16 v18, v4

    .end local v4    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .local v18, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    const/16 v4, 0x6d

    if-ne v5, v4, :cond_8

    const/16 v4, 0x6e

    if-eq v6, v4, :cond_9

    goto :goto_9

    :cond_8
    const/16 v4, 0x6e

    :goto_9
    if-ne v5, v4, :cond_a

    const/16 v4, 0x6d

    if-ne v6, v4, :cond_a

    :cond_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    .line 521
    .local v4, "force":Z
    :goto_a
    move/from16 v19, v5

    move-object/from16 v5, v17

    invoke-virtual {v5, v2, v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->processNextReplacement(Ljava/lang/String;Z)V

    .line 523
    .end local v17    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .local v5, "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .local v19, "lastChar":C
    if-eqz p2, :cond_c

    .line 524
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v2    # "nextReplacement":Ljava/lang/String;
    .end local v4    # "force":Z
    .end local v5    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto :goto_7

    .line 529
    .end local v16    # "input":Ljava/lang/String;
    .end local v18    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v19    # "lastChar":C
    .local v2, "input":Ljava/lang/String;
    .local v5, "lastChar":C
    :cond_b
    move-object/from16 v16, v2

    move/from16 v19, v5

    .line 513
    .end local v2    # "input":Ljava/lang/String;
    .end local v5    # "lastChar":C
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v19    # "lastChar":C
    :cond_c
    move-object/from16 v2, v16

    move/from16 v5, v19

    const/4 v8, 0x1

    goto :goto_6

    .line 531
    .end local v16    # "input":Ljava/lang/String;
    .end local v19    # "lastChar":C
    .restart local v2    # "input":Ljava/lang/String;
    .restart local v5    # "lastChar":C
    :cond_d
    move-object/from16 v16, v2

    move/from16 v19, v5

    .end local v2    # "input":Ljava/lang/String;
    .end local v5    # "lastChar":C
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v19    # "lastChar":C
    if-eqz p2, :cond_e

    .line 532
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 533
    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_e
    invoke-virtual {v12}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 536
    goto :goto_b

    .line 538
    .end local v11    # "replacements":[Ljava/lang/String;
    .end local v12    # "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .end local v13    # "branchingRequired":Z
    .end local v16    # "input":Ljava/lang/String;
    .end local v19    # "lastChar":C
    .restart local v2    # "input":Ljava/lang/String;
    .restart local v5    # "lastChar":C
    :cond_f
    move-object/from16 v16, v2

    move/from16 v19, v5

    move v2, v8

    .line 505
    .end local v2    # "input":Ljava/lang/String;
    .end local v5    # "lastChar":C
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v19    # "lastChar":C
    move-object/from16 v2, v16

    goto/16 :goto_3

    .line 540
    .end local v16    # "input":Ljava/lang/String;
    .end local v19    # "lastChar":C
    .restart local v2    # "input":Ljava/lang/String;
    .restart local v5    # "lastChar":C
    :cond_10
    move-object/from16 v16, v2

    move/from16 v19, v5

    move v2, v8

    .end local v2    # "input":Ljava/lang/String;
    .end local v5    # "lastChar":C
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v19    # "lastChar":C
    :goto_b
    move v1, v6

    .line 488
    .end local v6    # "ch":C
    .end local v7    # "inputContext":Ljava/lang/String;
    .end local v9    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    .end local v10    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v19    # "lastChar":C
    .local v1, "lastChar":C
    move v5, v1

    .end local v1    # "lastChar":C
    .restart local v5    # "lastChar":C
    :goto_c
    add-int/2addr v0, v2

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 543
    .end local v0    # "index":I
    .end local v16    # "input":Ljava/lang/String;
    .restart local v2    # "input":Ljava/lang/String;
    :cond_11
    move-object/from16 v16, v2

    move/from16 v19, v5

    .end local v2    # "input":Ljava/lang/String;
    .end local v5    # "lastChar":C
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v19    # "lastChar":C
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 544
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 545
    .local v1, "index":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 546
    .local v4, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    invoke-virtual {v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->finish()V

    .line 547
    add-int/lit8 v5, v1, 0x1

    .local v5, "index":I
    invoke-virtual {v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 548
    .end local v1    # "index":I
    .end local v4    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    nop

    .line 545
    move v1, v5

    goto :goto_d

    .line 550
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_12
    return-object v0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 324
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 328
    :cond_0
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 332
    :cond_1
    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 405
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 409
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 425
    if-nez p1, :cond_0

    .line 426
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .line 455
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "branches":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 458
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 459
    .local v5, "branch":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    add-int/lit8 v2, v2, 0x1

    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 461
    const/16 v6, 0x7c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    .end local v5    # "branch":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
