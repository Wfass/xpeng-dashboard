.class public Lme;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme$a;
    }
.end annotation


# instance fields
.field private final a:Lme$a;

.field private final b:Llq;

.field private final c:Llm;

.field private final d:Z


# direct methods
.method public constructor <init>(Lme$a;Llq;Llm;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lme;->a:Lme$a;

    .line 21
    iput-object p2, p0, Lme;->b:Llq;

    .line 22
    iput-object p3, p0, Lme;->c:Llm;

    .line 23
    iput-boolean p4, p0, Lme;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lme$a;
    .locals 1

    .line 27
    iget-object v0, p0, Lme;->a:Lme$a;

    return-object v0
.end method

.method public b()Llq;
    .locals 1

    .line 31
    iget-object v0, p0, Lme;->b:Llq;

    return-object v0
.end method

.method public c()Llm;
    .locals 1

    .line 35
    iget-object v0, p0, Lme;->c:Llm;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lme;->d:Z

    return v0
.end method
