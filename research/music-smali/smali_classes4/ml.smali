.class public Lml;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Llj;

.field private final e:Llm;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Llj;Llm;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lml;->c:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lml;->a:Z

    .line 26
    iput-object p3, p0, Lml;->b:Landroid/graphics/Path$FillType;

    .line 27
    iput-object p4, p0, Lml;->d:Llj;

    .line 28
    iput-object p5, p0, Lml;->e:Llm;

    .line 29
    iput-boolean p6, p0, Lml;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lml;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 53
    new-instance v0, Ljs;

    invoke-direct {v0, p1, p2, p0}, Ljs;-><init>(Lcom/airbnb/lottie/f;Lmq;Lml;)V

    return-object v0
.end method

.method public b()Llj;
    .locals 1

    .line 37
    iget-object v0, p0, Lml;->d:Llj;

    return-object v0
.end method

.method public c()Llm;
    .locals 1

    .line 41
    iget-object v0, p0, Lml;->e:Llm;

    return-object v0
.end method

.method public d()Landroid/graphics/Path$FillType;
    .locals 1

    .line 45
    iget-object v0, p0, Lml;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lml;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lml;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
