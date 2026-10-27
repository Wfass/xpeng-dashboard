.class public Lbxa;
.super Lbuo$a;
.source "SpeechStateProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lbuo;

.field private b:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbuo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lbuo$a;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "SpeechStateProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 109
    iput-object v1, p0, Lbxa;->a:Lbuo;

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$1;

    invoke-direct {v1, p0, p1}, Lbxa$1;-><init>(Lbxa;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 204
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$7;

    invoke-direct {v1, p0, p1, p2}, Lbxa$7;-><init>(Lbxa;IZ)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;I)V
    .locals 2

    .line 45
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$2;

    invoke-direct {v1, p0, p1, p2}, Lbxa$2;-><init>(Lbxa;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 94
    :try_start_0
    invoke-interface {p1}, Lbun;->g()Lbuo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Lbun;->g()Lbuo;

    move-result-object p1

    iput-object p1, p0, Lbxa;->a:Lbuo;

    .line 96
    iget-object p1, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    iget-object v0, p0, Lbxa;->a:Lbuo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V

    goto :goto_0

    :cond_0
    const-string p1, "SpeechStateProxy"

    const-string v0, "isInitOK false, speechEngine.getSpeechState() = null"

    .line 99
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$6;

    invoke-direct {v1, p0, p1}, Lbxa$6;-><init>(Lbxa;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 69
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$3;

    invoke-direct {v1, p0, p1}, Lbxa$3;-><init>(Lbxa;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-interface {v0, p1}, Lbuo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$4;

    invoke-direct {v1, p0, p1}, Lbxa$4;-><init>(Lbxa;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lbxa;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxa$5;

    invoke-direct {v1, p0, p1}, Lbxa$5;-><init>(Lbxa;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Lbuo;->b()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 57
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0}, Lbuo;->c()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-interface {v0, p1}, Lbuo;->c(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0}, Lbuo;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    .line 126
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v0}, Lbuo;->e()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-interface {v0}, Lbuo;->f()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-interface {v0}, Lbuo;->g()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {v0}, Lbuo;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0}, Lbuo;->i()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    invoke-interface {v0}, Lbuo;->j()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    invoke-interface {v0}, Lbuo;->k()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-interface {v0}, Lbuo;->l()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    invoke-interface {v0}, Lbuo;->m()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public n()I
    .locals 1

    .line 321
    iget-object v0, p0, Lbxa;->a:Lbuo;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    invoke-interface {v0}, Lbuo;->n()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
