.class Lbcf$b$1;
.super Ljava/lang/Object;
.source "KugouFetchModel.java"

# interfaces
.implements Lbce$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcf$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcf$b;


# direct methods
.method constructor <init>(Lbcf$b;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 107
    iget-object v0, p0, Lbcf$b$1;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbcf;->a(Lbcf;I)I

    .line 109
    iget-object v0, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-static {v0}, Lbcf$b;->a(Lbcf$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 114
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    iget-object p1, p1, Lbcf$b;->f:Lbcf;

    invoke-static {p1}, Lbcf;->a(Lbcf;)Layw;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    iget-object p1, p1, Lbcf$b;->f:Lbcf;

    invoke-static {p1}, Lbcf;->a(Lbcf;)Layw;

    move-result-object p1

    invoke-virtual {p1}, Layw;->b()V

    .line 117
    :cond_1
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-static {p1}, Lbcf$b;->b(Lbcf$b;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    iget-object p1, p1, Lbcf$b;->f:Lbcf;

    invoke-static {p1}, Lbcf;->a(Lbcf;)Layw;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    iget-object p1, p1, Lbcf$b;->f:Lbcf;

    invoke-static {p1}, Lbcf;->a(Lbcf;)Layw;

    move-result-object p1

    invoke-virtual {p1}, Layw;->a()V

    .line 121
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->a(Lbcf$b;Z)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Lbau;->a(IZ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v0

    invoke-virtual {v0}, Lbce;->b()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 125
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-static {p1}, Lbcf$b;->b(Lbcf$b;)V

    goto :goto_0

    .line 127
    :cond_4
    iget-object p1, p0, Lbcf$b$1;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->b(Lbcf$b;Z)V

    :goto_0
    return-void
.end method
