.class public Lbwz;
.super Lbum$a;
.source "SoundLockStateProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lbum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbum$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lbwz;->a:Lbum;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 138
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v0, p1, p2}, Lbum;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IJI)V
    .locals 1

    .line 172
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lbum;->a(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lbun;)V
    .locals 0

    .line 21
    :try_start_0
    invoke-interface {p1}, Lbun;->h()Lbum;

    move-result-object p1

    iput-object p1, p0, Lbwz;->a:Lbum;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 34
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v0}, Lbum;->b()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 68
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    invoke-interface {v0}, Lbum;->c()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->c(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 251
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {v0}, Lbum;->d()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->e(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v0}, Lbum;->e()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .line 126
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-interface {v0}, Lbum;->f()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-interface {v0, p1}, Lbum;->f(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 160
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0}, Lbum;->g()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    invoke-interface {v0}, Lbum;->h()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .locals 1

    .line 239
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0}, Lbum;->i()I

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

    .line 262
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v0}, Lbum;->j()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 1

    .line 274
    iget-object v0, p0, Lbwz;->a:Lbum;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v0}, Lbum;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
