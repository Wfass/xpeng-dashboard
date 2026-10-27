.class public Lcom/xiaopeng/xuiservice/smart/env/TextEnvProcessor;
.super Ljava/lang/Object;
.source "TextEnvProcessor.java"


# static fields
.field private static final ID_REG:Ljava/lang/String; = "@\\{(\\s*[a-zA-Z_$][a-zA-Z0-9_$]*\\s*)\\}"

.field private static final NAME_REG:Ljava/lang/String; = "\\$\\{(\\s*[a-zA-Z_$][a-zA-Z0-9_$]*\\s*)\\}"

.field private static final VARIABLE_REG:Ljava/lang/String; = "(\\s*[a-zA-Z_$][a-zA-Z0-9_$]*\\s*)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;
    .locals 1
    .param p0, "rawText"    # Ljava/lang/String;
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 27
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/env/TextEnvProcessor;->replaceEnvId(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/env/TextEnvProcessor;->replaceEnvName(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEnvId(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;
    .locals 6
    .param p0, "rawText"    # Ljava/lang/String;
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 59
    const-string v0, "@\\{(\\s*[a-zA-Z_$][a-zA-Z0-9_$]*\\s*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 62
    .local v1, "replaced":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "toReplace":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/xiaopeng/xuiservice/smart/env/Env;->getById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    move-object v4, v5

    .line 71
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 73
    .end local v2    # "toReplace":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 75
    :cond_2
    return-object p0
.end method

.method private static replaceEnvName(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/env/Env;)Ljava/lang/String;
    .locals 6
    .param p0, "rawText"    # Ljava/lang/String;
    .param p1, "env"    # Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 39
    const-string v0, "\\$\\{(\\s*[a-zA-Z_$][a-zA-Z0-9_$]*\\s*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 41
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 42
    .local v1, "replaced":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "toReplace":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/xiaopeng/xuiservice/smart/env/Env;->getByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    move-object v4, v5

    .line 50
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 52
    .end local v2    # "toReplace":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    return-object p0
.end method
