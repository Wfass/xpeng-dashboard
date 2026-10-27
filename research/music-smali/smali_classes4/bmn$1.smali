.class Lbmn$1;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Lbdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmn;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbmn;


# direct methods
.method constructor <init>(Lbmn;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lbmn$1;->b:Lbmn;

    iput p2, p0, Lbmn$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ProgramCollectManager"

    const-string v1, "onLoginFail: "

    .line 115
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string p1, "ProgramCollectManager"

    const-string v0, "onLogin: "

    .line 103
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 105
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lbmn$1;->a:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 106
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v0}, Laqr;->c(I)Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->play()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, v0}, Laqr;->c(I)Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->play()V

    :cond_1
    :goto_0
    return-void
.end method
