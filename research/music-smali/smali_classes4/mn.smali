.class public Lmn;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Llq;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILlq;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmn;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lmn;->b:I

    .line 18
    iput-object p3, p0, Lmn;->c:Llq;

    .line 19
    iput-boolean p4, p0, Lmn;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lmn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 31
    new-instance v0, Lkd;

    invoke-direct {v0, p1, p2, p0}, Lkd;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmn;)V

    return-object v0
.end method

.method public b()Llq;
    .locals 1

    .line 27
    iget-object v0, p0, Lmn;->c:Llq;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lmn;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
