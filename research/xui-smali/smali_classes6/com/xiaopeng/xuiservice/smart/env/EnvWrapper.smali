.class public Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;
.super Ljava/lang/Object;
.source "EnvWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/env/Env;


# instance fields
.field private final wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;


# direct methods
.method private varargs constructor <init>([Lcom/xiaopeng/xuiservice/smart/env/Env;)V
    .locals 0
    .param p1, "env"    # [Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;->wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 11
    return-void
.end method

.method public static varargs wrap([Lcom/xiaopeng/xuiservice/smart/env/Env;)Lcom/xiaopeng/xuiservice/smart/env/Env;
    .locals 1
    .param p0, "env"    # [Lcom/xiaopeng/xuiservice/smart/env/Env;

    .line 14
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;-><init>([Lcom/xiaopeng/xuiservice/smart/env/Env;)V

    return-object v0
.end method


# virtual methods
.method public addNameValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "env wrapper is read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getById(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;->wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;->wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 41
    .local v4, "env":Lcom/xiaopeng/xuiservice/smart/env/Env;
    invoke-interface {v4, p1}, Lcom/xiaopeng/xuiservice/smart/env/Env;->getById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    goto :goto_1

    .line 40
    .end local v4    # "env":Lcom/xiaopeng/xuiservice/smart/env/Env;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getByName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;->wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/env/EnvWrapper;->wrappers:[Lcom/xiaopeng/xuiservice/smart/env/Env;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 25
    .local v4, "env":Lcom/xiaopeng/xuiservice/smart/env/Env;
    invoke-interface {v4, p1, p2}, Lcom/xiaopeng/xuiservice/smart/env/Env;->getByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    goto :goto_1

    .line 24
    .end local v4    # "env":Lcom/xiaopeng/xuiservice/smart/env/Env;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    return-object v0
.end method

.method public setIdValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "env wrapper is read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
