.class Lask$2;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask;


# direct methods
.method constructor <init>(Lask;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lask$2;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 136
    iget-object v0, p0, Lask$2;->a:Lask;

    invoke-static {v0}, Lask;->b(Lask;)Laqt;

    move-result-object v0

    .line 137
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v1

    invoke-virtual {v1}, Laqq;->c()Laqs;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v1}, Laqs;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 141
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbfe;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfe;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-interface {v2, v1}, Lbfe;->isInCall(Z)Z

    move-result v1

    .line 146
    :cond_0
    new-instance v2, Lask$2$1;

    invoke-direct {v2, p0, v1, v0}, Lask$2$1;-><init>(Lask$2;ZLaqt;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
