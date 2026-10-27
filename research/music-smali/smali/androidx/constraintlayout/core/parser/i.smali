.class public Landroidx/constraintlayout/core/parser/i;
.super Landroidx/constraintlayout/core/parser/c;
.source "CLToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/i$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/core/parser/i$a;


# virtual methods
.method public a()Z
    .locals 3

    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/i;->a:Landroidx/constraintlayout/core/parser/i$a;

    sget-object v1, Landroidx/constraintlayout/core/parser/i$a;->TRUE:Landroidx/constraintlayout/core/parser/i$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/i;->a:Landroidx/constraintlayout/core/parser/i$a;

    sget-object v1, Landroidx/constraintlayout/core/parser/i$a;->FALSE:Landroidx/constraintlayout/core/parser/i$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 29
    :cond_1
    new-instance v0, Landroidx/constraintlayout/core/parser/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this token is not a boolean: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/i;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/core/parser/g;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/c;)V

    throw v0
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 0

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/parser/i;->addIndent(Ljava/lang/StringBuilder;I)V

    .line 64
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/i;->content()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 2

    .line 54
    sget-boolean v0, Landroidx/constraintlayout/core/parser/f;->a:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/i;->content()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/i;->content()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
