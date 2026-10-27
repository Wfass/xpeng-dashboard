.class public Lorg/apache/commons/codec/language/bm/Lang;
.super Ljava/lang/Object;
.source "Lang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    }
.end annotation


# static fields
.field private static final LANGUAGE_RULES_RN:Ljava/lang/String; = "org/apache/commons/codec/language/bm/%s_lang.txt"

.field private static final Langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/codec/language/bm/NameType;",
            "Lorg/apache/commons/codec/language/bm/Lang;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lorg/apache/commons/codec/language/bm/Languages;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 96
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    .line 101
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 102
    .local v4, "s":Lorg/apache/commons/codec/language/bm/NameType;
    sget-object v5, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    const-string v6, "org/apache/commons/codec/language/bm/%s_lang.txt"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/commons/codec/language/bm/Languages;->getInstance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Languages;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/commons/codec/language/bm/Lang;->loadFromResource(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages;)Lorg/apache/commons/codec/language/bm/Lang;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4    # "s":Lorg/apache/commons/codec/language/bm/NameType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lorg/apache/commons/codec/language/bm/Languages;)V
    .locals 1
    .param p2, "languages"    # Lorg/apache/commons/codec/language/bm/Languages;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;",
            "Lorg/apache/commons/codec/language/bm/Languages;",
            ")V"
        }
    .end annotation

    .line 182
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Lang$LangRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    .line 184
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Lang;->languages:Lorg/apache/commons/codec/language/bm/Languages;

    .line 185
    return-void
.end method

.method public static instance(Lorg/apache/commons/codec/language/bm/NameType;)Lorg/apache/commons/codec/language/bm/Lang;
    .locals 1
    .param p0, "nameType"    # Lorg/apache/commons/codec/language/bm/NameType;

    .line 114
    sget-object v0, Lorg/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Lang;

    return-object v0
.end method

.method public static loadFromResource(Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Languages;)Lorg/apache/commons/codec/language/bm/Lang;
    .locals 15
    .param p0, "languageRulesResourceName"    # Ljava/lang/String;
    .param p1, "languages"    # Lorg/apache/commons/codec/language/bm/Languages;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 131
    .local v1, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/bm/Lang$LangRule;>;"
    new-instance v0, Ljava/util/Scanner;

    invoke-static {p0}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v0

    .line 133
    .local v2, "scanner":Ljava/util/Scanner;
    const/4 v0, 0x0

    move v3, v0

    .line 134
    .local v3, "inExtendedComment":Z
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 135
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "rawLine":Ljava/lang/String;
    move-object v6, v5

    .line 137
    .local v6, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 139
    const-string v7, "*/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    const/4 v3, 0x0

    goto :goto_1

    .line 143
    :cond_0
    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    const/4 v3, 0x1

    goto :goto_1

    .line 147
    :cond_1
    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 148
    .local v7, "cmtI":I
    if-ltz v7, :cond_2

    .line 149
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 153
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 156
    goto :goto_0

    .line 160
    :cond_3
    const-string v8, "\\s+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "parts":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 167
    aget-object v9, v8, v0

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 168
    .local v9, "pattern":Ljava/util/regex/Pattern;
    const/4 v10, 0x1

    aget-object v10, v8, v10

    const-string v11, "\\+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 169
    .local v10, "langs":[Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v8, v11

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 171
    .local v11, "accept":Z
    new-instance v12, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    new-instance v13, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v9, v13, v11, v4}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLorg/apache/commons/codec/language/bm/Lang$1;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v5    # "rawLine":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "cmtI":I
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "pattern":Ljava/util/regex/Pattern;
    .end local v10    # "langs":[Ljava/lang/String;
    .end local v11    # "accept":Z
    :cond_4
    :goto_1
    goto :goto_0

    .line 163
    .restart local v5    # "rawLine":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "cmtI":I
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed line \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' in language resource \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, p0

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v3    # "inExtendedComment":Z
    .end local v5    # "rawLine":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "cmtI":I
    .end local v8    # "parts":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    goto :goto_4

    .line 175
    :cond_6
    move-object v10, p0

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 176
    .end local v2    # "scanner":Ljava/util/Scanner;
    new-instance v0, Lorg/apache/commons/codec/language/bm/Lang;

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/codec/language/bm/Lang;-><init>(Ljava/util/List;Lorg/apache/commons/codec/language/bm/Languages;)V

    return-object v0

    .line 175
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v0

    move-object v10, p0

    :goto_2
    move-object/from16 v3, p1

    :goto_3
    move-object v5, v4

    move-object v4, v0

    goto :goto_5

    .line 131
    :catch_1
    move-exception v0

    move-object v10, p0

    :goto_4
    move-object/from16 v3, p1

    move-object v4, v0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_5
    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :goto_6
    throw v4
.end method


# virtual methods
.method public guessLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v0

    .line 196
    .local v0, "ls":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "any"

    :goto_0
    return-object v1
.end method

.method public guessLanguages(Ljava/lang/String;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 207
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Lang;->languages:Lorg/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v1, "langs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    .line 211
    .local v3, "rule":Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    invoke-virtual {v3, v0}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$100(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 215
    :cond_0
    invoke-static {v3}, Lorg/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lorg/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 218
    .end local v3    # "rule":Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 220
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    .line 221
    .local v2, "ls":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    sget-object v3, Lorg/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    return-object v3
.end method
