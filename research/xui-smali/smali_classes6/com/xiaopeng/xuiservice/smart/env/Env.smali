.class public interface abstract Lcom/xiaopeng/xuiservice/smart/env/Env;
.super Ljava/lang/Object;
.source "Env.java"


# direct methods
.method public static create()Lcom/xiaopeng/xuiservice/smart/env/Env;
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/env/EnvImpl;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/env/EnvImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract addNameValue(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getById(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/xiaopeng/xuiservice/smart/env/Env;->getByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getByName(Ljava/lang/String;I)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setIdValue(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
