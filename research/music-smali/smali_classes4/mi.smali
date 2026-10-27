.class public Lmi;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Llz;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Llk;

.field private final c:Llk;

.field private final d:Llu;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Llk;Llk;Llu;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmi;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lmi;->b:Llk;

    .line 23
    iput-object p3, p0, Lmi;->c:Llk;

    .line 24
    iput-object p4, p0, Lmi;->d:Llu;

    .line 25
    iput-boolean p5, p0, Lmi;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lmi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/f;Lmq;)Ljo;
    .locals 1

    .line 49
    new-instance v0, Lkb;

    invoke-direct {v0, p1, p2, p0}, Lkb;-><init>(Lcom/airbnb/lottie/f;Lmq;Lmi;)V

    return-object v0
.end method

.method public b()Llk;
    .locals 1

    .line 33
    iget-object v0, p0, Lmi;->b:Llk;

    return-object v0
.end method

.method public c()Llk;
    .locals 1

    .line 37
    iget-object v0, p0, Lmi;->c:Llk;

    return-object v0
.end method

.method public d()Llu;
    .locals 1

    .line 41
    iget-object v0, p0, Lmi;->d:Llu;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lmi;->e:Z

    return v0
.end method
