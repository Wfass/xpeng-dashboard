.class public Lmp;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Llz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lmp$a;

.field private final c:Llk;

.field private final d:Llk;

.field private final e:Llk;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmp$a;Llk;Llk;Llk;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmp;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lmp;->b:Lmp$a;

    .line 38
    iput-object p3, p0, Lmp;->c:Llk;

    .line 39
    iput-object p4, p0, Lmp;->d:Llk;

    .line 40
    iput-object p5, p0, Lmp;->e:Llk;

    .line 41
    iput-boolean p6, p0, Lmp;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 0

    .line 69
    new-instance p1, Lkg;

    invoke-direct {p1, p2, p0}, Lkg;-><init>(Lmq;Lmp;)V

    return-object p1
.end method

.method public b()Lmp$a;
    .locals 1

    .line 49
    iget-object v0, p0, Lmp;->b:Lmp$a;

    return-object v0
.end method

.method public c()Llk;
    .locals 1

    .line 53
    iget-object v0, p0, Lmp;->d:Llk;

    return-object v0
.end method

.method public d()Llk;
    .locals 1

    .line 57
    iget-object v0, p0, Lmp;->c:Llk;

    return-object v0
.end method

.method public e()Llk;
    .locals 1

    .line 61
    iget-object v0, p0, Lmp;->e:Llk;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lmp;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmp;->c:Llk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmp;->d:Llk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmp;->e:Llk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
