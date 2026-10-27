.class public final Lcom/android/car/ui/baselayout/a;
.super Ljava/lang/Object;
.source "Insets.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/car/ui/baselayout/a;->d:I

    iput v0, p0, Lcom/android/car/ui/baselayout/a;->c:I

    iput v0, p0, Lcom/android/car/ui/baselayout/a;->b:I

    iput v0, p0, Lcom/android/car/ui/baselayout/a;->a:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/car/ui/baselayout/a;->a:I

    .line 44
    iput p3, p0, Lcom/android/car/ui/baselayout/a;->b:I

    .line 45
    iput p2, p0, Lcom/android/car/ui/baselayout/a;->c:I

    .line 46
    iput p4, p0, Lcom/android/car/ui/baselayout/a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/car/ui/baselayout/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/car/ui/baselayout/a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/car/ui/baselayout/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/car/ui/baselayout/a;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    check-cast p1, Lcom/android/car/ui/baselayout/a;

    .line 76
    iget v2, p0, Lcom/android/car/ui/baselayout/a;->a:I

    iget v3, p1, Lcom/android/car/ui/baselayout/a;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/a;->b:I

    iget v3, p1, Lcom/android/car/ui/baselayout/a;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/a;->c:I

    iget v3, p1, Lcom/android/car/ui/baselayout/a;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/car/ui/baselayout/a;->d:I

    iget p1, p1, Lcom/android/car/ui/baselayout/a;->d:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 84
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/ui/baselayout/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
