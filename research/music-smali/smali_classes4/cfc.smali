.class public Lcfc;
.super Ljava/lang/Object;
.source "ConnectActionListener.java"

# interfaces
.implements Lced;


# instance fields
.field private a:Lcel;

.field private b:Lcei;

.field private c:Lcew;

.field private d:Lcem;

.field private e:Lceu;

.field private f:Ljava/lang/Object;

.field private g:Lced;

.field private h:I

.field private i:Lcek;

.field private j:Z


# direct methods
.method public constructor <init>(Lcei;Lcel;Lcew;Lcem;Lceu;Ljava/lang/Object;Lced;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcfc;->a:Lcel;

    .line 72
    iput-object p1, p0, Lcfc;->b:Lcei;

    .line 73
    iput-object p3, p0, Lcfc;->c:Lcew;

    .line 74
    iput-object p4, p0, Lcfc;->d:Lcem;

    .line 75
    iput-object p5, p0, Lcfc;->e:Lceu;

    .line 76
    iput-object p6, p0, Lcfc;->f:Ljava/lang/Object;

    .line 77
    iput-object p7, p0, Lcfc;->g:Lced;

    .line 78
    invoke-virtual {p4}, Lcem;->d()I

    move-result p1

    iput p1, p0, Lcfc;->h:I

    .line 79
    iput-boolean p8, p0, Lcfc;->j:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 170
    new-instance v0, Lceu;

    iget-object v1, p0, Lcfc;->b:Lcei;

    invoke-virtual {v1}, Lcei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lceu;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p0}, Lceu;->a(Lced;)V

    .line 172
    invoke-virtual {v0, p0}, Lceu;->a(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcfc;->a:Lcel;

    iget-object v2, p0, Lcfc;->b:Lcei;

    invoke-virtual {v2}, Lcei;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcfc;->b:Lcei;

    invoke-virtual {v3}, Lcei;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcel;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcfc;->d:Lcem;

    invoke-virtual {v1}, Lcem;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcfc;->a:Lcel;

    invoke-interface {v1}, Lcel;->clear()V

    .line 180
    :cond_0
    iget-object v1, p0, Lcfc;->d:Lcem;

    invoke-virtual {v1}, Lcem;->d()I

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcfc;->d:Lcem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcem;->c(I)V

    .line 185
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcfc;->c:Lcew;

    iget-object v2, p0, Lcfc;->d:Lcem;

    invoke-virtual {v1, v2, v0}, Lcew;->a(Lcem;Lceu;)V
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 188
    invoke-virtual {p0, v0, v1}, Lcfc;->onFailure(Lceh;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcek;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcfc;->i:Lcek;

    return-void
.end method

.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcfc;->c:Lcew;

    invoke-virtual {v0}, Lcew;->g()[Lcfj;

    move-result-object v0

    array-length v0, v0

    .line 120
    iget-object v1, p0, Lcfc;->c:Lcew;

    invoke-virtual {v1}, Lcew;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    if-lt v1, v0, :cond_3

    .line 122
    iget v0, p0, Lcfc;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcfc;->d:Lcem;

    invoke-virtual {v0}, Lcem;->d()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    iget p1, p0, Lcfc;->h:I

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lcfc;->d:Lcem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcem;->c(I)V

    .line 148
    :cond_1
    instance-of p1, p2, Lceo;

    if-eqz p1, :cond_2

    .line 149
    move-object p1, p2

    check-cast p1, Lceo;

    goto :goto_0

    .line 152
    :cond_2
    new-instance p1, Lceo;

    invoke-direct {p1, p2}, Lceo;-><init>(Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcfc;->e:Lceu;

    iget-object v0, v0, Lceu;->a:Lcfn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcfn;->a(Lcgs;Lceo;)V

    .line 155
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object p1, p1, Lceu;->a:Lcfn;

    invoke-virtual {p1}, Lcfn;->g()V

    .line 156
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object p1, p1, Lceu;->a:Lcfn;

    iget-object v0, p0, Lcfc;->b:Lcei;

    invoke-virtual {p1, v0}, Lcfn;->a(Lcee;)V

    .line 158
    iget-object p1, p0, Lcfc;->g:Lced;

    if-eqz p1, :cond_6

    .line 159
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object v0, p0, Lcfc;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lceu;->a(Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcfc;->g:Lced;

    iget-object v0, p0, Lcfc;->e:Lceu;

    invoke-interface {p1, v0, p2}, Lced;->onFailure(Lceh;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 124
    :cond_3
    :goto_1
    iget p2, p0, Lcfc;->h:I

    if-nez p2, :cond_5

    .line 125
    iget-object p2, p0, Lcfc;->d:Lcem;

    invoke-virtual {p2}, Lcem;->d()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 126
    iget-object p2, p0, Lcfc;->d:Lcem;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcem;->c(I)V

    goto :goto_2

    .line 129
    :cond_4
    iget-object p2, p0, Lcfc;->d:Lcem;

    invoke-virtual {p2, v2}, Lcem;->c(I)V

    .line 130
    iget-object p2, p0, Lcfc;->c:Lcew;

    invoke-virtual {p2, v1}, Lcew;->a(I)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object p2, p0, Lcfc;->c:Lcew;

    invoke-virtual {p2, v1}, Lcew;->a(I)V

    .line 137
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcfc;->a()V
    :try_end_0
    .catch Lcer; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcfc;->onFailure(Lceh;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 2

    .line 88
    iget v0, p0, Lcfc;->h:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcfc;->d:Lcem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcem;->c(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcfc;->e:Lceu;

    iget-object v0, v0, Lceu;->a:Lcfn;

    invoke-interface {p1}, Lceh;->g()Lcgs;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcfn;->a(Lcgs;Lceo;)V

    .line 92
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object p1, p1, Lceu;->a:Lcfn;

    invoke-virtual {p1}, Lcfn;->g()V

    .line 93
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object p1, p1, Lceu;->a:Lcfn;

    iget-object v0, p0, Lcfc;->b:Lcei;

    invoke-virtual {p1, v0}, Lcfn;->a(Lcee;)V

    .line 95
    iget-object p1, p0, Lcfc;->c:Lcew;

    invoke-virtual {p1}, Lcew;->j()V

    .line 97
    iget-object p1, p0, Lcfc;->g:Lced;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcfc;->e:Lceu;

    iget-object v0, p0, Lcfc;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lceu;->a(Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcfc;->g:Lced;

    iget-object v0, p0, Lcfc;->e:Lceu;

    invoke-interface {p1, v0}, Lced;->onSuccess(Lceh;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcfc;->i:Lcek;

    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcfc;->c:Lcew;

    invoke-virtual {p1}, Lcew;->g()[Lcfj;

    move-result-object p1

    iget-object v0, p0, Lcfc;->c:Lcew;

    invoke-virtual {v0}, Lcew;->f()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lcfj;->e()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcfc;->i:Lcek;

    iget-boolean v1, p0, Lcfc;->j:Z

    invoke-interface {v0, v1, p1}, Lcek;->connectComplete(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method
