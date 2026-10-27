.class Layt$a$2;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layt$a;->a(Ljava/util/List;JIIZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Layt$a;


# direct methods
.method constructor <init>(Layt$a;II)V
    .locals 0

    .line 480
    iput-object p1, p0, Layt$a$2;->c:Layt$a;

    iput p2, p0, Layt$a$2;->a:I

    iput p3, p0, Layt$a$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 483
    iget-object v0, p0, Layt$a$2;->c:Layt$a;

    iget-object v0, v0, Layt$a;->e:Layt;

    invoke-virtual {v0}, Layt;->j()Layq;

    move-result-object v0

    iget-object v1, p0, Layt$a$2;->c:Layt$a;

    iget-object v1, v1, Layt$a;->a:Ljava/lang/String;

    iget v2, p0, Layt$a$2;->a:I

    invoke-virtual {v0, v1, v2}, Layq;->a(Ljava/lang/String;I)V

    .line 484
    iget-object v0, p0, Layt$a$2;->c:Layt$a;

    iget-object v0, v0, Layt$a;->e:Layt;

    invoke-virtual {v0}, Layt;->j()Layq;

    move-result-object v0

    iget-object v1, p0, Layt$a$2;->c:Layt$a;

    iget-object v1, v1, Layt$a;->a:Ljava/lang/String;

    iget v2, p0, Layt$a$2;->b:I

    invoke-virtual {v0, v1, v2}, Layq;->b(Ljava/lang/String;I)V

    .line 485
    iget-object v0, p0, Layt$a$2;->c:Layt$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Layt$a;->a(Z)V

    return-void
.end method
