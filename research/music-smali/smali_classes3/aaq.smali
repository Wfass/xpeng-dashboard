.class public final Laaq;
.super Ljava/lang/Object;
.source "ValidateResult.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:[Ljava/lang/Object;

.field final c:Laaq;

.field d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public varargs constructor <init>(Laaq;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Laaq;->e:Z

    .line 12
    iput-object p2, p0, Laaq;->a:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Laaq;->b:[Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Laaq;->c:Laaq;

    .line 15
    array-length p1, p3

    if-nez p1, :cond_0

    .line 16
    iput-object p2, p0, Laaq;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Laaq;->e:Z

    .line 22
    iput-object p2, p0, Laaq;->a:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Laaq;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Laaq;->c:Laaq;

    .line 25
    array-length p1, p3

    if-nez p1, :cond_0

    .line 26
    iput-object p2, p0, Laaq;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Laaq;->e:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Laaq;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Laaq;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Laaq;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-lez v2, :cond_1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Laaq;->c:Laaq;

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laaq;->c:Laaq;

    invoke-virtual {v0}, Laaq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    iput-object v0, p0, Laaq;->d:Ljava/lang/String;

    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Laaq;->d:Ljava/lang/String;

    return-object v0
.end method
