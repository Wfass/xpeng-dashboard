.class final Lcom/xiaopeng/lib/feature/d;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/feature/d$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final b:Lcom/xiaopeng/lib/feature/d$a;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/feature/d$a;

    invoke-direct {v0}, Lcom/xiaopeng/lib/feature/d$a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/d;->b:Lcom/xiaopeng/lib/feature/d$a;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/d;->b:Lcom/xiaopeng/lib/feature/d$a;

    iget v0, v0, Lcom/xiaopeng/lib/feature/d$a;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/d;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/d;->b:Lcom/xiaopeng/lib/feature/d$a;

    iput-object p1, v0, Lcom/xiaopeng/lib/feature/d$a;->a:Ljava/lang/String;

    .line 45
    iput p2, v0, Lcom/xiaopeng/lib/feature/d$a;->b:I

    .line 46
    iput-object p3, v0, Lcom/xiaopeng/lib/feature/d$a;->c:Ljava/lang/String;

    return-void
.end method

.method a(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "known"

    const-string v2, "name"

    .line 51
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 52
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "desc"

    .line 53
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p0, v2, v0, p1}, Lcom/xiaopeng/lib/feature/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature{mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMetal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/d;->b:Lcom/xiaopeng/lib/feature/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
