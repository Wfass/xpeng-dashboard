.class public Landroidx/constraintlayout/core/parser/c;
.super Ljava/lang/Object;
.source "CLElement.java"


# static fields
.field protected static BASE_INDENT:I = 0x2

.field protected static MAX_LINE:I = 0x50


# instance fields
.field protected end:J

.field private line:I

.field protected mContainer:Landroidx/constraintlayout/core/parser/b;

.field private final mContent:[C

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    const-wide v0, 0x7fffffffffffffffL

    .line 22
    iput-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/c;->mContent:[C

    return-void
.end method


# virtual methods
.method protected addIndent(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 v1, 0x20

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public content()Ljava/lang/String;
    .locals 6

    .line 115
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/c;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 116
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v3, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 119
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    :goto_0
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    long-to-int v3, v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Landroidx/constraintlayout/core/parser/c;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/core/parser/c;->mContainer:Landroidx/constraintlayout/core/parser/b;

    return-object v0
.end method

.method protected getDebugName()Ljava/lang/String;
    .locals 2

    .line 108
    sget-boolean v0, Landroidx/constraintlayout/core/parser/f;->a:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/c;->getStrClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .line 69
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .line 154
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/e;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/core/parser/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/e;->getFloat()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 147
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/e;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p0

    check-cast v0, Landroidx/constraintlayout/core/parser/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/e;->getInt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 47
    iget v0, p0, Landroidx/constraintlayout/core/parser/c;->line:I

    return v0
.end method

.method public getStart()J
    .locals 2

    .line 60
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    return-wide v0
.end method

.method protected getStrClass()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDone()Z
    .locals 4

    .line 123
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 4

    .line 135
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notStarted()Z
    .locals 4

    .line 34
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContainer(Landroidx/constraintlayout/core/parser/b;)V
    .locals 0

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/c;->mContainer:Landroidx/constraintlayout/core/parser/b;

    return-void
.end method

.method public setEnd(J)V
    .locals 4

    .line 73
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    .line 77
    sget-boolean p1, Landroidx/constraintlayout/core/parser/f;->a:Z

    if-eqz p1, :cond_1

    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/parser/c;->mContainer:Landroidx/constraintlayout/core/parser/b;

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/parser/b;->add(Landroidx/constraintlayout/core/parser/c;)V

    :cond_2
    return-void
.end method

.method public setLine(I)V
    .locals 0

    .line 38
    iput p1, p0, Landroidx/constraintlayout/core/parser/c;->line:I

    return-void
.end method

.method public setStart(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    return-void
.end method

.method protected toFormattedJSON(II)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method protected toJSON()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    iget-wide v0, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/constraintlayout/core/parser/c;->mContent:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 97
    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    long-to-int v1, v1

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/c;->getStrClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") <<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (INVALID, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/c;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/constraintlayout/core/parser/c;->end:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
