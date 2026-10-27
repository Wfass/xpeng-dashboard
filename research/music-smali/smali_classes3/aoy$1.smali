.class Laoy$1;
.super Ljava/lang/Object;
.source "BlockHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoy;->a([[Ljava/lang/StackTraceElement;[IZ[J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[[Ljava/lang/StackTraceElement;

.field final synthetic c:[I

.field final synthetic d:[J

.field final synthetic e:Laoy;


# direct methods
.method constructor <init>(Laoy;Z[[Ljava/lang/StackTraceElement;[I[J)V
    .locals 0

    .line 54
    iput-object p1, p0, Laoy$1;->e:Laoy;

    iput-boolean p2, p0, Laoy$1;->a:Z

    iput-object p3, p0, Laoy$1;->b:[[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Laoy$1;->c:[I

    iput-object p5, p0, Laoy$1;->d:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 58
    iget-boolean v0, p0, Laoy$1;->a:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Laoy$1;->e:Laoy;

    invoke-static {v0}, Laoy;->a(Laoy;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 62
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 63
    iget-object v1, p0, Laoy$1;->e:Laoy;

    invoke-static {v1}, Laoy;->b(Laoy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    iget-object v1, p0, Laoy$1;->b:[[Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 67
    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    if-eqz v6, :cond_2

    .line 68
    array-length v7, v6

    if-lez v7, :cond_2

    .line 69
    iget-object v7, p0, Laoy$1;->e:Laoy;

    invoke-static {v7}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 70
    iget-object v7, p0, Laoy$1;->e:Laoy;

    invoke-static {v7}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoy$1;->e:Laoy;

    invoke-static {v8}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    iget-object v7, p0, Laoy$1;->e:Laoy;

    invoke-static {v7}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "main"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " repeat "

    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Laoy$1;->c:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    array-length v7, v6

    move v9, v2

    :goto_2
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 75
    iget-object v11, p0, Laoy$1;->e:Laoy;

    invoke-static {v11}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\tat "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 78
    :cond_2
    iget-object v6, p0, Laoy$1;->e:Laoy;

    invoke-static {v6}, Laoy;->b(Laoy;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Laoy$1;->e:Laoy;

    invoke-static {v7}, Laoy;->c(Laoy;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 82
    :cond_3
    iget-object v1, p0, Laoy$1;->e:Laoy;

    invoke-static {v1}, Laoy;->b(Laoy;)Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 83
    array-length v2, v1

    if-nez v2, :cond_4

    return-void

    .line 87
    :cond_4
    iget-object v2, p0, Laoy$1;->e:Laoy;

    invoke-static {v2}, Laoy;->d(Laoy;)Laoz$b;

    move-result-object v2

    iget-object v3, p0, Laoy$1;->d:[J

    invoke-interface {v2, v1, v0, v3}, Laoz$b;->a([Ljava/lang/String;Z[J)V

    return-void
.end method
