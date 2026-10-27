.class Lbbv$5;
.super Ljava/lang/Object;
.source "IcmControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbv;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbv;


# direct methods
.method constructor <init>(Lbbv;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lbbv$5;->a:Lbbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 222
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->b()V

    .line 223
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    .line 224
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Laqt;->hasNextSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-virtual {v0, v2, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-virtual {v0, v3, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-static {v0}, Lbbv;->b(Lbbv;)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lbbv;->a(II)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-static {v0}, Lbbv;->c(Lbbv;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 226
    invoke-interface {v0}, Laqt;->hasNextSource()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-virtual {v0, v2, v2}, Lbbv;->a(II)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object v0, p0, Lbbv$5;->a:Lbbv;

    invoke-static {v0}, Lbbv;->a(Lbbv;)V

    :goto_0
    return-void
.end method
